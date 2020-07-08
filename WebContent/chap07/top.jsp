<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
상단 메뉴: <a href="layout.jsp">홈</a> 
<a href="layout2.jsp">정보</a>
<%= request.getParameter("parent") %>
<%= request.getParameter("name") %>