package chap20;

import java.sql.DriverManager;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.apache.commons.dbcp2.ConnectionFactory;
import org.apache.commons.dbcp2.DriverManagerConnectionFactory;
import org.apache.commons.dbcp2.PoolableConnection;
import org.apache.commons.dbcp2.PoolableConnectionFactory;
import org.apache.commons.dbcp2.PoolingDriver;
import org.apache.commons.pool2.impl.GenericObjectPool;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;

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
		
		initConnectionPool();
	}

	private void initConnectionPool() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String jdbcUrl = 
					"jdbc:mysql://localhost/test1" +
					"?serverTimezone=Asia/Seoul";
			String username = "root";
			String pw = "rootpw";
			
			ConnectionFactory connFactory = 
				new DriverManagerConnectionFactory(jdbcUrl, username, pw);
			
			PoolableConnectionFactory pcf = 
				new PoolableConnectionFactory(connFactory, null);
			pcf.setValidationQuery("SELECT 1");
			
			GenericObjectPoolConfig poolConfig = new GenericObjectPoolConfig();
			poolConfig.setTimeBetweenEvictionRunsMillis(1000 * 60 * 5);
			poolConfig.setTestWhileIdle(true);
			poolConfig.setMinIdle(4);
			poolConfig.setMaxTotal(50);
			
			GenericObjectPool<PoolableConnection> connectionPool = 
				new GenericObjectPool<>(pcf, poolConfig);
			pcf.setPool(connectionPool);
			
			Class.forName("org.apache.commons.dbcp2.PoolingDriver");
			PoolingDriver driver = (PoolingDriver)
				DriverManager.getDriver("jdbc:apache:commons:dbcp:");
			driver.registerPool("test1", connectionPool);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	
}
















