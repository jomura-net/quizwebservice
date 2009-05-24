using System;

namespace Quiz
{
	/// <summary>
	/// Question の概要の説明です。
	/// </summary>
	public class Question
	{
		private string _sentence;
		private Choice[] _choices;
		private string _comment;

		private string _quizTitle;
		private string _groupName;

		public Question()
		{
			// 
			// TODO: コンストラクタ ロジックをここに追加してください。
			//
		}

		public string quizTitle {
			get {
				return this._quizTitle;
			}
			set {
				this._quizTitle = value;
			}
		}
		public string groupName {
			get {
				return this._groupName;
			}
			set {
				this._groupName = value;
			}
		}

		public string sentence {
			get {
				return this._sentence;
			}
			set {
				this._sentence = value;
			}
		}
		public Choice[] choices {
			get {
				return this._choices;
			}
			set {
				this._choices = value;
			}
		}
		public string comment {
			get {
				return this._comment;
			}
			set {
				this._comment = value;
			}
		}

		public Question copy() {
			Question question = new Question();
			question._sentence = this._sentence;
			question._choices = this._choices;
			question._comment = this._comment;
			question._quizTitle = this._quizTitle;
			question._groupName = this._groupName;
			return question;
		}
	}
}
