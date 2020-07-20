<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag body-content="empty" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@tag import="java.util.Calendar"%>

<%
	Calendar cal = Calendar.getInstance();
%>

<%= cal.get(Calendar.YEAR) %> 년 
<%= cal.get(Calendar.MONTH) + 1 %> 월 
<%= cal.get(Calendar.DATE) %> 일 