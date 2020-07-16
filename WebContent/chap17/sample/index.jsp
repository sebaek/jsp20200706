<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<h1>Main Page</h1>

<c:if test="${empty user }" >
<form action="${pageContext.request.contextPath }/sample/login" method="post">
id: <input type="text" name="id" /> <br />
pw: <input type="password" name="pw" /> <br />
<input type="submit" value="로그인"/>
</form>
</c:if>

<c:if test="${not empty user }"> 
${user }님 반갑습니다. <br />
<a href="${pageContext.request.contextPath }/sample/logout">로그아웃</a>
</c:if>
</body>
</html>








