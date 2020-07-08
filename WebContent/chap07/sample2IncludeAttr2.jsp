<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chap05.User" %>
<%
User user = (User) request.getAttribute("user");
%>
<h1>
<%= user.getAge() %>살
<%= user.getName() %>님 반갑습니다. 

</h1>