package myapp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/myapp/delete")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/myapp/delete.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member mem = (Member) session.getAttribute("member");
		
		String password1 = mem.getPassword();
		String password2 = request.getParameter("password");
		
		if (password1.equals(password2)) {
			//1. db에서 삭제
			try {
				Connection con = DriverManager.getConnection("jdbc:apache:commons:dbcp:test1");
				String sql = "DELETE FROM member WHERE id=?";
				
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, mem.getId());
				ps.executeUpdate();
				
				ps.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			//2. redirect or forward
			response.sendRedirect("signup");
		} else {
			String message = "암호가 일치하지 않습니다.";
			request.setAttribute("message", message);
			request.getRequestDispatcher("/WEB-INF/view/myapp/delete.jsp").forward(request, response);			
		}
	}

}











