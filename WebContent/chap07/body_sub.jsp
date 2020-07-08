<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<br />
age: <%= request.getParameter("age") %> <br />
name 파라미터 값 목록:

<ul>
<%
String[] names = request.getParameterValues("name");
for (String name : names) {
	out.print("<li>");
	out.print(name);
	out.print("</li>");
}
%>
</ul>