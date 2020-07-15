<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap11.Member" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<%
Member m = new Member();
m.setName("kim");
m.setSsn(100);
m.setAddress("seoul");
m.setEmail("hi@hi");
request.setAttribute("myBean", m);
%>
<p>변경 전: ${myBean.name }, ${myBean.address }</p>
<c:set target="${myBean }" value="lee" property="name" />
<p>변경 후: ${myBean.name }, ${myBean.address }</p>

<c:set target="${myBean }" property="address" >
busan, korea
</c:set>

<p>변경 후: ${myBean.name }, ${myBean.address }</p>

<hr />
<%
Map<String, String> map = new HashMap<>();
map.put("key1", "value1");
request.setAttribute("myMap", map);
%>
<p>맵 변경전 : ${myMap.key1 }</p>
<c:set target="${myMap }" property="key1" value="change1" />
<p>맵 변경후 : ${myMap["key1"]}</p>
<c:set target="${myMap }" property="key2" value="value2" />
<p>맵 변경후 : ${myMap["key2"]}</p>

</body>
</html>











