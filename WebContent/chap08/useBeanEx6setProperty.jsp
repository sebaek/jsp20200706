<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="member" 
             scope="request" class="chap08.member.MemberInfo" />
             
<jsp:forward page="useBeanEx5setProperty.jsp" />