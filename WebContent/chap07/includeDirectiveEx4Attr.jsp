<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--
<%@ page import="chap05.User" %>
<%
User user2 = (User) pageContext.getAttribute("user");
%>
<h1><%= user2.getAge() %>살 <%= user2.getName() %>님 반갑습니다.</h1>
 --%>
 
<h1>${user.age }살 ${user.name }님 반갑습니다.</h1>
 
 
 
 
 
 
 
     