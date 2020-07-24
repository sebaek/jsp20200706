package chap18;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SimpleController
 */
@WebServlet(urlPatterns = "/SimpleController"
           , loadOnStartup = 1
           , initParams = {
        		   @WebInitParam(name = "configFile"
        		     , value="/WEB-INF/commandHandler.properties")
        		   })
public class SimpleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Map<String, CommandHandler> map = new HashMap<>();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SimpleController() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public void init() throws ServletException {
		super.init();
//		map.put("process1", new Process1Handler());
//		map.put("process2", new Process2Handler());

		try {

			ServletContext app = getServletContext();
//			String path = "/WEB-INF/commandHandler.properties";
			String path = getInitParameter("configFile");

			String realPath = app.getRealPath(path);

			FileInputStream inStream = new FileInputStream(realPath);

			Properties props = new Properties();
			props.load(inStream);

			Enumeration<String> keys = (Enumeration<String>) props.propertyNames();

			while (keys.hasMoreElements()) {
				String key = keys.nextElement();
				String className = props.getProperty(key);

				Class<CommandHandler> clazz = (Class<CommandHandler>) Class.forName(className);

				CommandHandler com = clazz.newInstance();

				map.put(key, com);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 2단계, 요청 파악
		// request 객체로부터 사용자의 요청을 파악하는 코드
		String type = request.getParameter("type");

		// 3단계, 요청한 기능을 수행한다.
		// 사용자에 요청에 따라 알맞은 코드
		Object resultObject = null;

		if (type == null || type.equals("greeting")) {
			resultObject = "안녕하세요";
		} else if (type.equals("date")) {
			resultObject = new java.util.Date();
//		} else if (type.equals("process1")) {
//			CommandHandler com = new Process1Handler();
//			resultObject = com.process(request, response);
//		} else if (type.equals("process2")) {
//			CommandHandler com = new Process2Handler();
//			resultObject = com.process(request, response);
		} else {
			resultObject = "Invalid Type";
		}

		CommandHandler com = map.get(type);
		
		if (com != null) {
			resultObject = com.process(request, response);
		}

		// 4단계, request나 session에 처리 결과를 저장
		request.setAttribute("result", resultObject);

		// 5단계, RequestDispatch를 사용하여 알맞은 뷰로 포워딩
		RequestDispatcher dispatcher = request.getRequestDispatcher("/chap18/simpleView.jsp");
		dispatcher.forward(request, response);
	}

}
