package net.jomura.quiz;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.apache.commons.io.IOUtils;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/**
 * @author Jomora ( kazuhiko@jomura.net http://jomura.net/ )
 */
public class QuizServiceImpl implements QuizService {

    /**
     * 設問データリスト
     */
    private static List<Question> questionList;

    /**
     * 設問分類
     */
    private static List<String> titleList;

	// injects context object. but default container only.
	public ServletContext application;
	public HttpServletRequest request;
	public HttpServletResponse response;

    protected final Logger log = Logger.getLogger(getClass().getSimpleName());

	@SuppressWarnings("unchecked")
	public void init() {
        // セッションは使わない。
        if (null != request) {
            request.getSession(false);
        }

        if (null == questionList) {
			File qmlDir = new File(application.getInitParameter("qmlDir"));
	        if (!qmlDir.exists()) {
	            throw new RuntimeException("qmlDirを正しく設定してください。");
	        }
			
	        File tmpFilePath = new File(application.getInitParameter("TempFilePath"));
	        if (tmpFilePath.exists()) {
				FileInputStream fis = null;
				ObjectInputStream ois = null;
				try {
					fis = new FileInputStream(tmpFilePath);
					ois = new ObjectInputStream(fis);
					questionList = (List<Question>) ois.readObject();
			        setTitleList();
					log.info("Loaded questionList from " + tmpFilePath);
				} catch (IOException e) {
					log.warning("Failed to load TempFile (" + e.getMessage() + ")");
				} catch (ClassNotFoundException e) {
					log.warning("Failed to load TempFile (" + e.getMessage() + ")");
				} finally {
					IOUtils.closeQuietly(ois);
					IOUtils.closeQuietly(fis);
				}
	        }
		}

		if (null == questionList || questionList.isEmpty()) {
			this.loadQuestions();
		}
	}
	
	public void destroy() {
	}
	
	/*
	 * @see net.jomura.quiz.QuizService#getQuestion()
	 */
	@Override
	public Question getQuestion() {
        return getQuestion(null);
	}

	/*
	 * @see net.jomura.quiz.QuizService#getQuestion(String)
	 */
	@Override
	public Question getQuestion(Map<String, String> params) {
		List<Question> tmpQuestionList = questionList;
		String title = params.get("title");
		try {
			if (null != title) {
				int index = Integer.parseInt(title);
				title = titleList.get(index);
				if (titleList.contains(title)) {
					// 絞り込み
					tmpQuestionList = new ArrayList<Question>();
					for (Question q : questionList) {
						if (title.equals(q.getQuizTitle())) {
							tmpQuestionList.add(q);
						}
					}
				}
			}
		} catch (NumberFormatException e) {
			// do nothing
		}
		
        int num = (int)(Math.random() * tmpQuestionList.size());
        Question question = tmpQuestionList.get(num);

        Arrays.sort(question.getChoices(), new Comparator<Choice>() {
            public int compare(Choice o1, Choice o2) {
                return ((int) (Math.random() * 3)) - 1;
            }
        });
        return question;
	}

	/*
	 * @see net.jomura.quiz.QuizService#loadQuestions()
	 */
	@Override
	public int loadQuestions() {

		//Quizデータの更新をlocalhostからのみとする。
        String addr = request.getRemoteAddr();
        if (!addr.startsWith("127.")) {
            log.info(addr + " からは、このメソッドを実行できません。");
            return -1;
        }

        return refreshQuestions();
	}

	public int refreshQuestions() {
		long startTime = System.currentTimeMillis();

        synchronized(QuizServiceImpl.class) {

    		File qmlDir = new File((String) application.getInitParameter("qmlDir"));
        	File[] qmlFiles = qmlDir.listFiles(new FilenameFilter() {
	            public boolean accept(File dir, String name) {
	            	return name.endsWith(".qml");
	            }
	        });
	
            XPath xpath = XPathFactory.newInstance().newXPath();
	        List<Question> newQuestionList = new ArrayList<Question>();
	
	        // qmlファイルの読み込み
	        int numOfQmlFiles = qmlFiles.length;
	        for (int i = 0; i < numOfQmlFiles; i++) {
	            File file = qmlFiles[i];
	            log.finer(file.getName());

	            extractQuestions(file, newQuestionList, xpath);
	        }
	
	        questionList = newQuestionList;
	        setTitleList();
	        
	        //questionListオブジェクトをファイル保存
	        String tmpFilePathStr = application.getInitParameter("TempFilePath");
	        if (null != tmpFilePathStr) {
				FileOutputStream fos = null;
				ObjectOutputStream oos = null;
				try {
					fos = new FileOutputStream(tmpFilePathStr);
					oos = new ObjectOutputStream(fos);
					oos.writeObject(questionList);
					oos.flush();
					log.info("Saved questionList in " + new File(tmpFilePathStr).getAbsolutePath());
				} catch (IOException e) {
					log.warning("Failed to save TempFile (" + e.getMessage() + ")");
				} finally {
					IOUtils.closeQuietly(oos);
					IOUtils.closeQuietly(fos);
				}
	        }

        } //end of synchronized
        
        log.info("QML LoadTime:" + (System.currentTimeMillis() - startTime) + "[ms]");
        return questionList.size();
	}

	private void extractQuestions(File file, List<Question> newQuestionList, XPath xpath) {
		try {
		    DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		    dbf.setNamespaceAware(false);
		    dbf.setValidating(false);
		    DocumentBuilder db = dbf.newDocumentBuilder();
		    Document xmldoc = db.parse(file);
		    
		    String title = (String) xpath.evaluate("/quiz/title",
		                    xmldoc, XPathConstants.STRING);
		    //selectNodeList(no.1)
		    NodeList questionNodeList = (NodeList) xpath.evaluate(
		                    "/quiz/group/question", xmldoc,
		                    XPathConstants.NODESET);
		    //selectNodeList(no.2)
		    //NodeList questionNodeList =
		    // XPathAPI.selectNodeList(xmldoc, "/quiz/group/question");

		    int numOfQuestionNodes = questionNodeList.getLength();
		    for (int j = 0; j < numOfQuestionNodes; j++) {
		        Node questionNode = questionNodeList.item(j);
		        Question question = new Question();
		        // <sentence>
		        String sentence = (String)xpath.evaluate("sentence",
		                        questionNode, XPathConstants.STRING);
		        question.setSentence(sentence);
		        // <choice>
		        NodeList choiceNodeList = (NodeList)xpath.evaluate("choice",
		                        questionNode, XPathConstants.NODESET);
		        int numOfChoiceNodes = choiceNodeList.getLength();
		        Choice[] choices = new Choice[numOfChoiceNodes];
		        for (int k = 0; k < numOfChoiceNodes; k++) {
		            Node choiceNode = choiceNodeList.item(k);
		            Choice choice = new Choice();
		            String text = choiceNode.getTextContent();
		            choice.setText(text);
		            boolean correct = Boolean.parseBoolean(
		                            (String)xpath.evaluate("@correct",
		                                            choiceNode, XPathConstants.STRING));
		            choice.setCorrect(correct);
		            choices[k] = choice;
		        }
		        question.setChoices(choices);
		        // <comment>
		        String comment = (String)xpath.evaluate("comment",
		                        questionNode, XPathConstants.STRING);
		        question.setComment(comment);
		        // <title>
		        question.setQuizTitle(title);
		        // <group>
		        String groupName = (String)xpath.evaluate("../@name",
		                        questionNode, XPathConstants.STRING);
		        question.setGroupName(groupName);

		        newQuestionList.add(question);
		    }
		} catch (ParserConfigurationException e) {
		    throw new RuntimeException("XMLパーサの設定不備です。", e);
		} catch (XPathExpressionException e) {
		    throw new RuntimeException("XPath表現が間違っています。", e);
		} catch (SAXException e) {
		    throw new RuntimeException(e);
		} catch (IOException e) {
		    throw new RuntimeException(e);
		}
	}

	@Override
	public String[] getTitles() {
		return titleList.toArray(new String[0]);
	}

	private void setTitleList() {
        List<String> newTitleList = new ArrayList<String>();
		for (Question q : questionList) {
		    if (!newTitleList.contains(q.getQuizTitle())) {
		    	newTitleList.add(q.getQuizTitle());
		    }
		}
		titleList = newTitleList;
	}

}
