<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="myBean" class="chap08.MyBean"/>

<%--
chap08.MyBean myBean 
    = (chap08.MyBean) request.getAttribute("myBean");
if (myBean == null) {
	myBean = new chap08.MyBean();
	request.setAttribute("myBean", myBean);
}
--%>


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
<p>
<%= ((chap08.MyBean) pageContext.getAttribute("myBean")).getName() %>
</p>

<p>
<%= ((chap08.MyBean) pageContext.getAttribute("myBean")).getId() %>
</p>
</body>
</html>










