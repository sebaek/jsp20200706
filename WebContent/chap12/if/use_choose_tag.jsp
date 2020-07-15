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
<ul>
<c:choose>
  <c:when test="${param.name == 'bk' }">
    <li>당신의 이름은 ${param.name } 입니다.</li>
  </c:when>
  <c:when test="${param.age > 20 }">
    <li>당신은 20세 이상입니다.</li>
  </c:when>
  <c:otherwise>
    <li>당신은 'bk'가 아니고 20세 이상이 아닙니다.</li>
  </c:otherwise>
</c:choose>

</ul>
</body>
</html>










