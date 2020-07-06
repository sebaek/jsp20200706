<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
request.setCharacterEncoding("utf-8");
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
<b>request.getParameter() 메서드 사용</b> <br />
name 파라미터 = <%= request.getParameter("name") %> <br />
address 파라미터 = <%= request.getParameter("address") %> <br />
<p>
<b>request.getParameterValues() 메서드 사용</b> <br />
<%
String[] values = request.getParameterValues("pet");
if (values != null) {
	for (int i = 0; i < values.length; i++) {
%>
	<%= values[i] %>
<%
	}
}
%>
</p>
<b>request.getParameterNames() 메서드 사용</b> <br />
<%
Enumeration<String> paramEnum = request.getParameterNames();
while (paramEnum.hasMoreElements()) {
	String name = paramEnum.nextElement();
%>
	<%= name %>
<%
}
%>
<p>
<b>request.getParameterMap() 메서드 사용</b> <br />
<%
Map<String, String[]> parameterMap = request.getParameterMap();
String[] nameParam = parameterMap.get("name");
if (nameParam != null) {
%>
name = <%=nameParam[0] %>
<%
}
%>


</p>



<hr />

<%= request.getParameter("name") %> <br />
<%= request.getParameter("address") %> <br />
<%-- <%= request.getParameterValues("pet") <br /> --%>

<%--
<%
String[] pets = request.getParameterValues("pet");
for (String pet : pets) {
%>
	<%= pet %> <br />
<%
}
%>

 --%>
</body>
</html>







