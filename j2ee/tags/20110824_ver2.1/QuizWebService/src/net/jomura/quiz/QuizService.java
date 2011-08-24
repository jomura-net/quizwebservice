package net.jomura.quiz;

import java.util.Map;

public interface QuizService {
    Question getQuestion();
    Question getQuestion(Map<String, String> params);
    String[] getTitles();
    int loadQuestions();
}
