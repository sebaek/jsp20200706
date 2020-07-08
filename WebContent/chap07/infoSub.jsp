<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String type = request.getParameter("type");
	if (type == null) {
		return;
	}
%>

<br>
<table class="table table-bordered" >
	<tr>
		<td>타입</td>
		<td><b><%= type %></b></td>
	</tr>
	<tr>
		<td>특징</td>
		<td>
		<% 
		if (type.equals("A")) {
			out.print("강한내구성.");
		} else if (type.equals("B")) {
			out.print("뛰어난 대처 능력");
		}
		
		%>
		</td>
	</tr>
</table>