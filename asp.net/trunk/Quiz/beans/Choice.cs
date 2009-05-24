using System;

namespace Quiz
{
	/// <summary>
	/// Choice の概要の説明です。
	/// </summary>
	public class Choice
	{
		private bool _correct;
		private string _text;

		public Choice()
		{
			// 
			// TODO: コンストラクタ ロジックをここに追加してください。
			//
		}

		public bool correct {
			get {
				return this._correct;
			}
			set {
				this._correct = value;
			}
		}
		public string text {
			get {
				return this._text;
			}
			set {
				this._text = value;
			}
		}
	}
}
