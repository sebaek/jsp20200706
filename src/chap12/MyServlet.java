package chap12;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap11.Member;

/**
 * Servlet implementation class MyServlet
 */

public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("first servlet").append(request.getContextPath());
//		response.setContentType("text/html; charset=utf-8");
//		PrintWriter out = response.getWriter();
//		out.print("<h1>Hello</h1>");
//		out.print("<h1>첫번째 서블릿</h1>");
		// 열심히 하고 나면..
		
		List<String> list = new ArrayList<>();
		
		list.add("java");
		list.add("html");
		list.add("css");
		list.add("jquery");
		list.add("servlet");
		
		request.setAttribute("list", list);
		
		Member m = new Member();
		m.setName("hong");
		m.setAddress("seoul");
		
		request.setAttribute("member", m);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/chap12/forward.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
