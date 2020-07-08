<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setAttribute("my attr", 99);
session.setAttribute("my attr", 100);
response.sendRedirect("webAppScopeEx10Redirect.jsp");
%>