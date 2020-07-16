package chap17;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InitParamServletEx1
 */
@WebServlet(value="/InitParamServletEx1"
		, initParams = {
				@WebInitParam(name="name2", value="value2"),
				@WebInitParam(name="name3", value="value3")
		})
public class InitParamServletEx1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InitParamServletEx1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String val1 = getInitParameter("name1");
		String val2 = getInitParameter("name2");
		String val3 = getInitParameter("name3");
		String val4 = getInitParameter("name4");
		
		String url = getInitParameter("jdbcUrl1");
		
		response.getWriter().append("val1 : " + val1 
								 + ",val2 : " + val2
								 + ",val3 : " + val3
								 + ",val4 : " + val4
								 + ",url : " + url);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
