<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/chap16" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<h1>데이터 수정</h1>
<form action="" method="post">
	id : <input type="number" name="id" value="${param.id }" readonly="readonly" /> <br />
	이름 : <input type="text" name="name" /> <br />
	나이 : <input type="number" name="age" /> <br />
	<input type="submit" value="수정" />
</form>
<a href="jdbcEx2.jsp">리스트 확인</a> <br />
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String age = request.getParameter("age");

if (name != null & age != null) {
	// 1. 클래스 로딩
	Class.forName("com.mysql.cj.jdbc.Driver");
	// 2. 연결 생성
	//    2. 1 접속정보
	String url = "jdbc:mysql://localhost/test1"
				+ "?serverTimezone=Asia/Seoul" ;
	String dbid = "root";
	String pw = "rootpw";
	Connection con = DriverManager.getConnection(url, dbid, pw);
	
	// 3. statement 생성
	String sql = "UPDATE member SET name=?, age=? WHERE id=?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setInt(2, Integer.valueOf(age));
	pstmt.setInt(3, Integer.valueOf(id));
	//Statement stmt = con.createStatement();
	
	// 4. 쿼리 실행
	int rows = pstmt.executeUpdate();
	
	// 5. 결과 처리
	out.print(rows + "개의 행이 업데이트 되었습니다.");
	
	// 6. 자원 종료
	if (pstmt != null) {
		pstmt.close();
	}
	
	if (con != null) {
		con.close();
	}

}

%>
</body>
</html>









