using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Services;
using System.Configuration;
using System.Xml;

namespace Quiz
{
    /// <summary>
    /// QuizService の概要の説明です
    /// </summary>
    [WebService(Namespace = "http://jomura.net/Quiz/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // この Web サービスを、スクリプトから ASP.NET AJAX を使用して呼び出せるようにするには、次の行のコメントを解除します。 
    [System.Web.Script.Services.ScriptService]
    public class QuizService : System.Web.Services.WebService
    {
        private static List<Question> m_questionList;
        private static List<string> m_titles;
        private System.Random m_random = new System.Random();

        public QuizService()
        {
            if (m_questionList == null || m_questionList.Count == 0)
            {
                this.loadQuestion();
            }
        }

        [WebMethod]
        public int loadQuestion()
        {
            List<Question> questionList = new List<Question>();
            List<string> titles = new List<string>();

            string qmlDir = ConfigurationManager.AppSettings["qmlDir"];
            qmlDir = System.IO.Path.Combine(Server.MapPath("."), qmlDir);
            string[] files = System.IO.Directory.GetFiles(qmlDir, "*.qml");
            // +.qmlファイルの読み込み
            foreach (string file in files)
            {
                XmlDocument xmldoc = new XmlDocument();
                xmldoc.Load(file);
                // <question>
                XmlNodeList questionNodeList = xmldoc.SelectNodes("/quiz/group/question");
                foreach (XmlNode questionNode in questionNodeList)
                {
                    Question question = new Question();
                    // <sentence>
                    question.sentence = questionNode.SelectSingleNode("sentence").InnerText;
                    // <choice>
                    XmlNodeList choiceNodeList = questionNode.SelectNodes("choice");
                    List<Choice> choiceList = new List<Choice>(choiceNodeList.Count);
                    foreach (XmlNode choiceNode in choiceNodeList)
                    {
                        Choice choice = new Choice();
                        bool correct = false;
                        XmlNode correctAttrib = choiceNode.SelectSingleNode("@correct");
                        if (correctAttrib != null
                            && Boolean.TryParse(correctAttrib.Value, out correct))
                        {
                            choice.correct = correct;
                        }
                        choice.text = choiceNode.InnerText;
                        choiceList.Add(choice);
                    }
                    question.choices = choiceList.ToArray();
                    // <comment>
                    question.comment = questionNode.SelectSingleNode("comment").InnerText;

                    // <group>
                    question.groupName = questionNode.SelectSingleNode("../@name").Value;
                    // <title>
                    question.quizTitle = questionNode.SelectSingleNode("../../title").InnerText;
                    if (!titles.Contains(question.quizTitle))
                    {
                        titles.Add(question.quizTitle);
                    }

                    questionList.Add(question);
                }
            }
            m_questionList = questionList;
            m_titles = titles;
            return questionList.Count;
        }

        [WebMethod]
        public Question getQuestion()
        {
            return getQuestionByTitle(null);
        }

        [WebMethod]
        public string[] getTitles()
        {
            return m_titles.ToArray();
        }

        [WebMethod]
        public Question getQuestionByTitle(string title)
        {
            List<Question> questionlist;
            if (string.IsNullOrEmpty(title))
            {
                questionlist = m_questionList;
            }
            else
            {
                questionlist = m_questionList.FindAll(
                delegate(Question q) { return q.quizTitle == title; });
            }

            if (questionlist.Count == 0)
            {
                return null;
            }
            int num = m_random.Next(0, questionlist.Count);
            Question question = (questionlist[num]).copy();
            //Array.Sort(question.choices, new RandamComparer());
            question.choices = Shuffle(question.choices);
            return question;
        }

        private Choice[] Shuffle(Choice[] choices)
        {
            List<Choice> list = new List<Choice>(choices);
            for (int i = 0; i < list.Count; i++)
            {
                int index = m_random.Next(list.Count);
                list.Add(list[index]);
                list.RemoveAt(index);
            }
            return list.ToArray();
        }
    }//eof class
}//eof namespace
