<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuizClient.aspx.cs" Inherits="QuizClient._Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Quiz Web Service Client</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnLoad="DropDownList1_Load" AppendDataBoundItems="True">
        </asp:DropDownList>
        <asp:Button ID="Button2" runat="server" Text="Next" Width="33px" /><br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
        <br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AppendDataBoundItems="True">
            <asp:ListItem Value="testVal">testTest</asp:ListItem>
        </asp:CheckBoxList></div>
        <br />
        <div id="qanswer">
        <input id="Button3" type="button" value="判定" onclick="answer();" /><br />
        <noscript style="color:red;">　判定にはJavaScriptを使用します。</noscript>
            <br />
        </div>
    </form>
</body>
</html>
