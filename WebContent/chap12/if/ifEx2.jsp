<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<form action="" method="post">
이름: <input type="text" name="name"/> <br />
나이: <input type="number" name="age" /> <br />
<input type="submit" value="확인"/>

<c:if test="${empty param.name }">
<p>이름을 입력하세요</p>
</c:if>
<c:if test="${empty param.age }" >
<p>나이를 입력하세요</p>
</c:if>

<c:if test="${param.age > 18 }" >
<p>투표 가능</p>
</c:if>
<c:if test="${param.age <= 18 }" >
<p>투표 불가능</p>
</c:if>

</form>
</body>
</html>












