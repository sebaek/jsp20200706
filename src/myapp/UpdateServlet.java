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
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/myapp/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/myapp/update.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String ageStr = request.getParameter("age");
		int age = 0;

		if (ageStr != null) {
			age = Integer.valueOf(ageStr);
		}
		
		HttpSession session = request.getSession();
		Member mem = (Member) session.getAttribute("member");

		try {

			// 1. 드라이버 로딩 (listener에서 이미 로딩함)

			// 2. 연결 생성
			Connection con = DriverManager.getConnection("jdbc:apache:commons:dbcp:test1");

			// 3. statement 생성
			String sql 
			= "UPDATE member SET email=?, password=?, name=?, age=? " 
			+ " WHERE id=? ";
			PreparedStatement ps = con.prepareStatement(sql);

			// 4. 쿼리 실행
			ps.setString(1, email);
			ps.setString(2, password);
			ps.setString(3, name);
			ps.setInt(4, age);
			ps.setInt(5, mem.getId());

			int cnt = ps.executeUpdate();

			// 5. 결과 처리
			if (cnt == 1) {
				// 정상
				System.out.println("정상 입력");
//				Member mem = new Member();
				mem.setAge(age);
				mem.setName(name);
				mem.setEmail(email);
				mem.setPassword(password);

//				HttpSession session = request.getSession();
				session.setAttribute("member", mem);

				response.sendRedirect("member");
			} else {
				// 오류
				System.out.println("입력 오류");
				request.getRequestDispatcher("/WEB-INF/view/myapp/update.jsp").forward(request, response);
			}

			// 6. 자원 종료
			ps.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
