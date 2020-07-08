<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("name", "page");
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
<h1>page Get Set Attribute</h1>
<%= pageContext.getAttribute("name") %> <br />
<%= pageContext.getAttribute("name", PageContext.PAGE_SCOPE) %> <br />
<%= pageContext.getAttribute("name", PageContext.REQUEST_SCOPE) %> <br />
<%= pageContext.getAttribute("name", PageContext.SESSION_SCOPE) %> <br />
<%= pageContext.getAttribute("name", PageContext.APPLICATION_SCOPE) %> <br />


</body>
</html>











