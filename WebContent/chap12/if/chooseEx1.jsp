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
<%--
<c:choose>
	<c:when test="${test1}">
	</c:when>
	<c:when test="${test2}">
	</c:when>
	<c:otherwise>
	</c:otherwise>
</c:choose>
 --%>
 
<c:set var="age" value="20" />

<c:choose>
  <c:when test="${age lt 18 }">
  	<p>투표 불가능</p>
  </c:when>
  <c:otherwise>
    <p>투표 가능</p>
  </c:otherwise>
</c:choose>

<hr />

<c:choose>
  <c:when test="${age lt 13 }">
  <p>토이스토리</p>
  </c:when>
  <c:when test="${age lt 18 }">
  <p>어벤져스</p>
  </c:when>
  <c:otherwise>
  <p>미성년자 관람불가용</p>
  </c:otherwise>
</c:choose>
 
</body>
</html>



























