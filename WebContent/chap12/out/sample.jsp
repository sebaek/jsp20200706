<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Object o = application.getAttribute("comments");
	if (o == null) {
		o = new ArrayList<Map<String, String>>();
		application.setAttribute("comments", o);
	}
	String name = request.getParameter("name");
	String body = request.getParameter("comment");

	if (name != null && body != null) {
		Map<String, String> map = new HashMap<>();
		map.put("name", name);
		map.put("body", body);
		List<Map<String, String>> list = (List<Map<String, String>>) application.getAttribute("comments");
		list.add(map);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<h1>코멘트 작성</h1>
	<form action="" method="post">
		이름 : <input type="text" name="name" /> <br /> 내용 :
		<textarea name="comment" id="" cols="30" rows="10"></textarea>
		<br /> <input type="submit" value="등록" />
	</form>

	<table class="table">
		<c:forEach var="comment" items="${comments }">
			<tr>
				<td><c:out value="${comment.name}" /></td>
				<td><c:out value="${comment.body}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>










