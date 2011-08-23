package net.jomura.scheduler;

import java.util.TimerTask;

import javax.servlet.ServletContext;

import net.jomura.quiz.QuizServiceImpl;

public class QuizDataRefreshTimer extends TimerTask {

	public ServletContext application;

	public QuizDataRefreshTimer(ServletContext application) {
		this.application = application;
	}

	/*
	 * @see java.util.TimerTask#run()
	 */
	@Override
	public void run() {
		QuizServiceImpl service = new QuizServiceImpl();
		service.application = application;
		service.refreshQuestions();
	}

}
