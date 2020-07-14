<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<%-- 
el에서 11개의 기본객체가 아니면 attribute
page, requeset, session, application 순으로 찾음

 --%>
<%
pageContext.setAttribute("page1", "page value1");
pageContext.setAttribute("req1", "page value2");
request.setAttribute("req1", "req value1");
session.setAttribute("session1", "session value1");
application.setAttribute("app1", "app value1");

Map<String, String> map = new HashMap<>();
map.put("key1", "value1");
request.setAttribute("my-map", map);

Map<String, String> map2 = new HashMap<>();
map2.put("key2", "value2");
request.setAttribute("myMap", map2);
%>
<h1>attr map2</h1>
${requestScope.myMap.key2},
${myMap.key2 }

<h1>attr map</h1>
${requestScope["my-map"].key1 },
${requestScope["my-map"]["key1"] }

<h1>pageScope</h1>
${pageScope.page1 }, ${page1 }

<h1>requestScope</h1>
${requestScope.req1 }, ${req1 }

<h1>sessionScope</h1>
${sessionScope.session1 }, ${session1 }

<h1>applicationScope</h1>
${applicationScope.app1 }, ${app1 }
</body>
</html>




















