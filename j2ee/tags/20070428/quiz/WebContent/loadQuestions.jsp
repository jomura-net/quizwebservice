<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//w3c//dtd html 4.0 transitional//en">
<html>
<head>
<title>loadQuestions</title>
</head>
<body bgcolor="#FFFFFF">
<br />
<%
    if (request.getRemoteAddr().startsWith("127.")) {
        jomora.quiz.QuizServiceSoapBindingStub binding;
        binding = (jomora.quiz.QuizServiceSoapBindingStub)
            new jomora.quiz.QuizServiceLocator().getQuizService(
                new java.net.URL("http://jomora.net/quiz/services/QuizService"));
        // Time out after a minute
        binding.setTimeout(120000);
	    if (request.getParameter("ticket") != null) {
	        int numOfQuestions = binding.loadQuestions();
%>
<p><%= numOfQuestions %>個の設問が設定されました。</p>
<%
        } else {
	        jomora.quiz.Question question = binding.getQuestion();
%>
<p><b>問題</b><br /><%= question.getSentence() %></p>
<%
	    }
    } else {
%>
    この機能は、localhostでしか動作しません。
<%
    }
%>
<form action="loadQuestions.jsp" method="post">
<input type="hidden" name="ticket" value="loadQML"/><br />
<input type="submit" value="再ロード"/><br />
</form>

</body>
</html>
