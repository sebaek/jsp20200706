<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap11.Member" %>
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
<c:set />

1. 속성(attribute)를 생성 또는 변경 또는 삭제
   var attribute와 함께 사용

2. bean의 property나 map의 entry를 수정할 수 있다.
   target attribute와 함께 사용

 --%>
<c:set var="myAttr1" value="hello1" />
<c:set var="myAttr2" value="hello2" scope="request"/>
<c:set var="myAttr3" value="hello3" scope="session"/>
<c:set var="myAttr4" value="hello4" scope="application"/>

<p>${pageScope.myAttr1 }</p>
<p>${requestScope.myAttr2 }</p>
<p>${sessionScope.myAttr3 }</p>
<p>${applicationScope.myAttr4 }</p>

<c:set var="myAttr5" >
	Hello World, value5!!!
</c:set> 

<p>${myAttr5 }</p>

<c:set var="myAttr5" >
	Hello JAVA, value5~~~~~~~~
</c:set> 

<p>${myAttr5 }</p>

<%
Member m = new Member();
m.setName("hong");
m.setEmail("hi@hi");
m.setSsn(100);
m.setAddress("seoul");
request.setAttribute("member1", m);

%> 
<c:set var="myAttr6" value="${member1 }" /> 
<p>${myAttr6.name }, ${myAttr6.email }, ${myAttr6.address }</p>

<c:set var="myAttr6" value="${member2 }" />
<p>${myAttr6.name }, ${myAttr6.email }, ${myAttr6.address }</p>

<c:remove var="myAttr5" scope="page"/>
<p>삭제 후 : ${myAttr5 }</p>
</body>
</html>











