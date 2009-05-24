using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Quiz
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            ScheduleService.Start();
            ScheduleService.Singleton.Tasks.Add(new LoadQuestionTask());
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}