package chap20;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class MyAppListener
 *
 */
@WebListener
public class MyAppListener implements ServletContextListener {

	/**
	 * Default constructor.
	 */
	public MyAppListener() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see ServletContextListener#contextDestroyed(ServletContextEvent)
	 */
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("어플리케이션 종료됨");
	}

	/**
	 * @see ServletContextListener#contextInitialized(ServletContextEvent)
	 */
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext app = sce.getServletContext();
		app.setAttribute("rootPath", app.getContextPath());
		
		System.out.println("어플리케이션 시작됨");
		
		System.out.println(app.getInitParameter("logEnabled"));
		System.out.println(app.getInitParameter("debugLevel"));
	}
}











