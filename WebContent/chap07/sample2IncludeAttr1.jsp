<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chap05.User" %>
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
name: <input type="text" name="name" value="jane"/> <br />
age: <input type="number" name="age" value="1"/> <br />
<input type="submit" value="등록"/>
</form>

<%
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String ageStr = request.getParameter("age");

name = name == null ? "jane" : name;
ageStr = ageStr == null ? "0" : ageStr;

int age = Integer.parseInt(ageStr);

User user = new User();
user.setName(name);
user.setAge(age);

request.setAttribute("user", user);
%>
<jsp:include page="sample2IncludeAttr2.jsp"></jsp:include>
</body>
</html>
















