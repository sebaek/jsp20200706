<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
name: <input type="text" name="name" value="john"> <br />
age: <input type="number" name="age" value="0"> <br />
<input type="submit" value="등록">
</form>
<%
chap05.User user = new chap05.User();
user.setName(request.getParameter("name"));
String ageStr = request.getParameter("age");
ageStr = ageStr == null ? "0" : ageStr;
user.setAge(Integer.parseInt(ageStr));

pageContext.setAttribute("user", user);
%>
<%@ include file="includeDirectiveEx4Attr.jsp" %>


</body>
</html>









