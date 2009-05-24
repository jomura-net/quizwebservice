/**
 * QuizServiceSoapBindingImpl.java
 * 
 * This file was auto-generated from WSDL by the Apache Axis 1.2RC2 Nov 16, 2004
 * (12:19:44 EST) WSDL2Java emitter.
 */

package jomora.quiz;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.rmi.RemoteException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import jomora.io.DocumentUtil;

import org.apache.axis.MessageContext;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class QuizServiceSoapBindingImpl implements jomora.quiz.Quiz {

    /**
     * ���O�o��
     */
    private static Log log = LogFactory.getLog(QuizServiceSoapBindingImpl.class);

    /**
     * �ݖ�f�[�^�t�@�C���̂���f�B���N�g��
     */
    private static File qmlDir;

    /**
     * �ݖ�f�[�^
     */
    private static List<Question> questionList;

    /**
     * �ݖ�f�[�^�I�u�W�F�N�g�t�@�C��
     */
    private static File tmpFilePath;

    /**
     * �R���X�g���N�^
     */
    public QuizServiceSoapBindingImpl() throws java.rmi.RemoteException {
        super();

        MessageContext context = MessageContext.getCurrentContext();

        qmlDir = new File((String)context.getProperty("qmlDir"));
        if (!qmlDir.exists()) {
            throw new RemoteException("qmlDir�𐳂����ݒ肵�Ă��������B");
        }
		
        tmpFilePath = new File((String)context.getProperty("TempFilePath"));

        if (tmpFilePath.exists()) {
	        try {
				FileInputStream fis = new FileInputStream(tmpFilePath);
				ObjectInputStream ois = new ObjectInputStream(fis);
				questionList = (List<Question>)ois.readObject();
				ois.close();
				fis.close();
				log.info("Loaded questionList from " + tmpFilePath);
			} catch (Exception e) {
				log.error(e.getMessage(), e);
			}
        }

        if (questionList == null || questionList.isEmpty()) {
            this.loadQuestions();
        }
    }

    public int loadQuestions() throws java.rmi.RemoteException {

        //Quiz�f�[�^�̍X�V��localhost����݂̂Ƃ���B
        MessageContext context = MessageContext.getCurrentContext();
        HttpServletRequest req = (HttpServletRequest)context
                        .getProperty("transport.http.servletRequest");
        String addr = req.getRemoteAddr();
        if (!addr.startsWith("127.")) {
            log.info(addr + " ����̂��̃��\�b�h�̎��s�͋�����܂���B");
            return -1;
        }

        long startTime = System.currentTimeMillis();

        File[] qmlFiles = qmlDir.listFiles(new FilenameFilter() {
            public boolean accept(File dir, String name) {
                if ("qml".equalsIgnoreCase(jomora.io.File.getExtension(name))) {
                    return true;
                }
                return false;
            }
        });

        XPath xpath = XPathFactory.newInstance().newXPath();
        ArrayList<Question> newQuestionList = new ArrayList<Question>();

        // *.qml�t�@�C���̓ǂݍ���
        int numOfQmlFiles = qmlFiles.length;
        for (int i = 0; i < numOfQmlFiles; i++) {
            File file = qmlFiles[i];
            //System.out.println(file.getName());
            try {
                Document xmldoc = DocumentUtil.readDocument(file);

                String title = (String)xpath.evaluate("/quiz/title",
                                xmldoc, XPathConstants.STRING);
                //selectNodeList(no.1)
                NodeList questionNodeList = (NodeList)xpath.evaluate(
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
                log.error("XML�p�[�T�̐ݒ�s���ł��B", e);
                throw new RemoteException("XML�p�[�T�̐ݒ�s���ł��B", e);
            } catch (XPathExpressionException e) {
                log.error("XPath�\�����Ԉ���Ă��܂��B", e);
                throw new RemoteException("XPath�\�����Ԉ���Ă��܂��B", e);
            } catch (SAXException e) {
                log.error("", e);
                throw new RemoteException("", e);
            } catch (IOException e) {
                log.error("", e);
                throw new RemoteException("", e);
            }
        }

        questionList = newQuestionList;
        
        //questionList�I�u�W�F�N�g���t�@�C���ۑ�
		try {
			FileOutputStream fos = new FileOutputStream(tmpFilePath);
			ObjectOutputStream oos = new ObjectOutputStream(fos);
			oos.writeObject(questionList);
			oos.flush();
			oos.close();
			fos.close();
			log.info("Saved questionList in " + tmpFilePath.getAbsolutePath());
		} catch (Exception e) {
			log.error(e.getMessage(), e);
		}
        
        log.info("QML LoadTime:" + (System.currentTimeMillis() - startTime) + "[ms]");
        return questionList.size();
    }

    public jomora.quiz.Question getQuestion() throws java.rmi.RemoteException {
        int num = (int)(Math.random() * questionList.size());

        Question question = (Question)questionList.get(num);

        Arrays.sort(question.getChoices(), new Comparator<jomora.quiz.Choice>() {
            public int compare(jomora.quiz.Choice o1, jomora.quiz.Choice o2) {
                return ((int)(Math.random() * 3)) - 1;
            }
        });
        return question;
    }

}