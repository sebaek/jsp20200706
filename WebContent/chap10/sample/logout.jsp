<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/*
Object o = session.getAttribute("member");
if (o != null) {
	session.removeAttribute("member");
}
*/
session.invalidate();

response.sendRedirect("loginForm.jsp");
%>









