<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
10 * 25 = <%= multiply(10, 25) %>
<br>
<%= myField++ %>
</body>
</html>
<%!
int myField = 0;
%>
<%!
public int multiply(int a, int b) {
	int c = a * b;
	return c;
}
%>

<%!
public double multiply(double a, double b) {
	double c = a * b;
	return c;
}
%>








