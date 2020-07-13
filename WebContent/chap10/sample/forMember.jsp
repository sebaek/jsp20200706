<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Object member = session.getAttribute("member");

if (member == null) {
//	String path = request.getContextPath() + "/sample/loginForm.jsp";
//	response.sendRedirect(path);
	response.sendRedirect("loginForm.jsp");
} else {
%>
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
<h1>멤버 전용 페이지</h1>
<a href="">Lorem.</a>
<a href="">Velit.</a>
<a href="">Nisi.</a>
</body>
</html>
<%
}
%>













