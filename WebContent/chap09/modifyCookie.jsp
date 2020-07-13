<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<%
Cookie[] cookies = request.getCookies();
if (cookies != null && cookies.length > 0) {
	for (int i = 0; i < cookies.length; i++) {
		if (cookies[i].getName().equals("name")) {
			Cookie cookie = new Cookie("name", URLEncoder.encode("JSP프로그래밍", "utf-8"));
			response.addCookie(cookie);
		}
	}
}

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
name 쿠키의 값을 변경합니다.
</body>
</html>






