using System;

namespace Quiz
{
	/// <summary>
	/// Choice �̊T�v�̐����ł��B
	/// </summary>
	public class Choice
	{
		private bool _correct;
		private string _text;

		public Choice()
		{
			// 
			// TODO: �R���X�g���N�^ ���W�b�N�������ɒǉ����Ă��������B
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
