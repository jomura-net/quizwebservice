using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Web;
using System.Web.Services;
using System.Xml;

namespace Quiz
{
	/// <summary>
	/// Service1 の概要の説明です。
	/// </summary>
	[WebService(Namespace="http://jomora.bne.jp/Quiz/")]
	public class QuizService : System.Web.Services.WebService
	{
		private static ArrayList questionList;
		private System.Random random = new System.Random();

		public QuizService()
		{
			//CODEGEN: この呼び出しは、ASP.NET Web サービス デザイナで必要です。
			InitializeComponent();

			if (questionList == null || questionList.Count == 0) {
				this.loadQuestion();
			}
		}

		#region コンポーネント デザイナで生成されたコード 
		
		//Web サービス デザイナで必要です。
		private IContainer components = null;
				
		/// <summary>
		/// デザイナ サポートに必要なメソッドです。このメソッドの内容を
		/// コード エディタで変更しないでください。
		/// </summary>
		private void InitializeComponent()
		{
		}

		/// <summary>
		/// 使用されているリソースに後処理を実行します。
		/// </summary>
		protected override void Dispose( bool disposing )
		{
			if(disposing && components != null)
			{
				components.Dispose();
			}
			base.Dispose(disposing);		
		}
		
		#endregion

		[WebMethod]
		[System.Web.Services.Protocols.SoapRpcMethodAttribute("http://jomora.bne.jp/Quiz/loadQuestion",
			 RequestNamespace="http://jomora.bne.jp/Quiz/",
			 ResponseNamespace="http://jomora.bne.jp/Quiz/")]
		public int loadQuestion() {
			questionList = new ArrayList();
			lock(questionList.SyncRoot) {
				string qmlDir = System.Configuration.ConfigurationSettings.AppSettings["qmlDir"];
				string[] files = System.IO.Directory.GetFiles(qmlDir, "*.qml");
				// +.qmlファイルの読み込み
				foreach (string file in files) {
					XmlDocument xmldoc = new XmlDocument();
					xmldoc.Load(file);
					// <question>
					XmlNodeList questionNodeList = xmldoc.SelectNodes("/quiz/group/question");
					foreach (XmlNode questionNode in questionNodeList) {
						try {
							Question question = new Question();
							// <sentence>
							question.sentence = questionNode.SelectSingleNode("sentence").InnerText;
							// <choice>
							XmlNodeList choiceNodeList = questionNode.SelectNodes("choice");
							ArrayList choiceList = new ArrayList(choiceNodeList.Count);
							foreach (XmlNode choiceNode in choiceNodeList) {
								Choice choice = new Choice();
								choice.correct = Boolean.Parse(choiceNode.SelectSingleNode("@correct").Value);
								choice.text = choiceNode.InnerText;
								choiceList.Add(choice);
							}
							question.choices = choiceList.ToArray(typeof(Choice)) as Choice[];
							// <comment>
							question.comment = questionNode.SelectSingleNode("comment").InnerText;
							// <title>
							question.quizTitle = questionNode.SelectSingleNode("../../title").InnerText;
							// <group>
							question.groupName = questionNode.SelectSingleNode("../@name").Value;

							questionList.Add(question);
						} catch (Exception exp) {
							System.Diagnostics.Trace.WriteLine(exp);
						}
					}
				}
			}
			return questionList.Count;
		}

		[WebMethod]
		[System.Web.Services.Protocols.SoapRpcMethodAttribute("http://jomora.bne.jp/Quiz/getQuestion",
			 RequestNamespace="http://jomora.bne.jp/Quiz/",
			 ResponseNamespace="http://jomora.bne.jp/Quiz/")]
		public Question getQuestion() {
			int num = random.Next(0, questionList.Count);

			Question question = ((Question)questionList[num]).copy();
			try {
				Array.Sort(question.choices, new RandamComparer());
			} catch(Exception exp) {
				System.Diagnostics.Trace.WriteLine(exp);
			}
			return question;
		}
			
	}

	public class RandamComparer : System.Collections.IComparer {
		private const int MAX_NUM = 20;
		private System.Random random = new System.Random();
		
		public int Compare(object x, object y) {
			if (x.Equals(y)) return 0;
			return random.Next(-1 * MAX_NUM, MAX_NUM);
		}

	}
}
