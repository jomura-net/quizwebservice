using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;
using Quiz.net.jomora;

namespace QuizClient
{
    public partial class _Default : System.Web.UI.Page
    {
        private const string NO_SELECTED = "(éwíËÇ»Çµ)";

        protected void Page_Load(object sender, EventArgs e)
        {
            string title = this.DropDownList1.SelectedValue;
            if (title == NO_SELECTED)
            {
                title = "";
            }

            QuizService serv = new QuizService();
            Question question = serv.getQuestionByTitle(title);
            this.Label1.Text = MyEncode(question.sentence);

            Choice[] choices = question.choices;
            List<int> correctList = new List<int>(choices.Length);
            this.CheckBoxList1.Items.Clear();
            foreach(Choice choice in question.choices)
            {
                this.CheckBoxList1.Items.Add(new ListItem(MyEncode(choice.text)));
                if (choice.correct)
                {
                    correctList.Add(1);
                }
                else
                {
                    correctList.Add(0);
                }
            }
            string clientScriptStr = @"<script type=""text/javascript"">
<!--
var correctList = new Array(" + correctList.Count + @");
var comment = """ + MyEncode(question.comment) + @""";
";
            for (int i = 0; i < correctList.Count; i++)
            {
                clientScriptStr += "correctList[" + i + "] = " + correctList[i] + @";
";
            }
            clientScriptStr += @"function answer() {
	var correct = true;
	for (i = 0; i < correctList.length; i++) {
        var target = document.getElementById('CheckBoxList1_' + i);
		if ((target.checked == true && correctList[i] == 0)
			|| (target.checked == false && correctList[i] == 1)) {
			correct = false;
			break;
		}
	}
	if (correct) {
		document.getElementById('qanswer').innerHTML = ""<span style=\""font-size:large;\"">ê≥âÅI(^^)/</span><br />\r\n"" + comment;
	} else {
		alert(""ïsê≥â (++)"");
	}
}
//-->
</script>";
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "check_ans", clientScriptStr);
        }

        protected void DropDownList1_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                QuizService serv = new QuizService();
                this.DropDownList1.Items.Add(new ListItem(NO_SELECTED));
                this.DropDownList1.DataSource = serv.getTitles();
                this.DropDownList1.DataBind();
            }
        }

        private static string MyEncode(string str)
        {
            return HttpUtility.HtmlEncode(str).Replace("\n", "<br />");
        }
    }
}
