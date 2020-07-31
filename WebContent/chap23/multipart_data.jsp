<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page trimDirectiveWhitespaces="true" %>

<%
out.print("[");
out.print(request.getContentType());
out.println("]");

try (InputStream is = request.getInputStream()) {
	int data = -1;
	
	while ((data = is.read()) != -1) {
		out.print((char) data);
	}
}
%>






