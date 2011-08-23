package net.jomura.scheduler;

import java.util.Calendar;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

/**
 * Servlet implementation class TimerServlet
 */
public class TimerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Timer timer1;

	@Override
	public void init() throws ServletException {
		super.init();
		
		//開始時刻firstTimeと実行間隔peroidをweb.xmlから取得する。
		String[] FirstTimeParts = {"03", "00", "00"};
		long peroid = 86400000;

		String firstTimeParam = getServletContext().getInitParameter("FirstTime");
		if (null != firstTimeParam) {
			FirstTimeParts = firstTimeParam.split(":");
		}
		String periodParam = getServletContext().getInitParameter("Period");
		if (null != periodParam) {
			peroid = Long.parseLong(periodParam);
		}

		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.HOUR_OF_DAY, Integer.parseInt(FirstTimeParts[0]));
		cal.set(Calendar.MINUTE, Integer.parseInt(FirstTimeParts[1]));
		cal.set(Calendar.SECOND, Integer.parseInt(FirstTimeParts[2]));
		//開始時刻が過去である場合には、開始時刻を一日遅らせる。
		if (cal.getTimeInMillis() < Calendar.getInstance().getTimeInMillis()) {
			cal.add(Calendar.DATE, 1);
		}
		Date firstTime = cal.getTime();

		timer1 = new Timer();
		TimerTask task = new QuizDataRefreshTimer(getServletContext());
		timer1.scheduleAtFixedRate(task, firstTime, peroid); 
		log("Task scheduled.  firstTime:" + firstTime + "  period:" + peroid + "[ms]");

		task.run();
	}
	
	@Override
	public void destroy() {
		super.destroy();
		if (null != timer1) {
			timer1.cancel();
		}
	}
}
