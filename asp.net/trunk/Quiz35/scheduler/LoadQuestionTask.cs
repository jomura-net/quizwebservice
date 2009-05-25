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
            Quiz.net.jomura.QuizService qs = new Quiz.net.jomura.QuizService();
            int count = qs.loadQuestion();

            Trace.TraceInformation("count : " + count);

            //ソースが存在していない時は、作成する
            //IISプロセスユーザーにレジストリ権限が無い場合は、
            //SecurityExceptionが発生する。
            if (!EventLog.SourceExists("Quiz35"))
            {
                //ログ名を空白にすると、"Application"となる
                EventLog.CreateEventSource("Quiz35", "Application");
            }
            //事前にソース名をレジストリに登録しておく必要がある。
            EventLog.WriteEntry("Quiz35", "Quiz.LoadQuestionTask count : " + count);
        }

        public bool IsFinish()
        {
            return false;
        }

        #endregion
    }
}
