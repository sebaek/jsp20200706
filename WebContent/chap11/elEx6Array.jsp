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
<%
String[] arr = {"java", "css", "jquery"};
request.setAttribute("myArr", arr);
%>

<h1>${myArr[0] }</h1>
<h1>${myArr["1"] }</h1>
<h1>${myArr[2] }</h1>

<hr />
<ul>
<%
for (int i = 0; i < arr.length; i++) {
	pageContext.setAttribute("i", i);
%>
	<li>${myArr[i] }</li>
<%
}
%>
</ul>
</body>
</html>




















