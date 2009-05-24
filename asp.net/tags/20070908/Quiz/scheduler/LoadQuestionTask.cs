using System;
using System.IO;
using System.Text;
using System.Diagnostics;

namespace Quiz
{
    /// <summary>
    /// LoadQuestionTask の概要の説明です
    /// </summary>
    public class LoadQuestionTask : ISchedule
    {
        #region ISchedule メンバ

        public bool IsTrigger()
        {
            DateTime Now = DateTime.Now;
            if (Now.Hour == 4 && Now.Minute < 10)
            {
                return true;
            }
            return false;
        }

        public void Execute()
        {
            Quiz.net.jomora.QuizService qs = new Quiz.net.jomora.QuizService();
            int count = qs.loadQuestion();
            Debug.WriteLine("count : " + count);
        }

        public bool IsFinish()
        {
            return false;
        }

        #endregion
    }
}
