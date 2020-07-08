<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap05.User" %>
<%
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String ageStr = request.getParameter("age");
User user = null;

if (name != null && ageStr != null) {
	user = new User();
	int age = Integer.parseInt(ageStr);
	
	user.setName(name);
	user.setAge(age);
}

Object l = application.getAttribute("list");
if (l == null) {
	application.setAttribute("list", new ArrayList<User>());
	l = application.getAttribute("list");
}

ArrayList<User> list = null;
list = (ArrayList<User>) l;

if (user != null) {
	list.add(user);
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
<form action="" method="post">
이름: <input type="text" name="name" /> <br />
나이: <input type="number" name="age" /> <br />
<input type="submit" value="등록"/>
</form>

<ul>
<%
for (User u : list) {
	out.print("<li>");
	out.print(u.getName() + ", " + u.getAge());
	out.print("</li>");
}
%>
</ul>

</body>
</html>











