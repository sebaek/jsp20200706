<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
<c:set var="text1" value="javascript" />
\${fn:length(text1) } : ${fn:length(text1) } <br />

<c:set var="arr1" value='<%= new String[] {"a", "b", "c" } %>' />
\${fn:length(arr1) } : ${fn:length(arr1) } <br />

\${fn:toUpperCase(text1) } : ${fn:toUpperCase(text1) } <br />

<c:set var="text2" >
	<h1>hello</h1>
</c:set>
\${text2 } : ${text2 } <br />
\${fn:escapeXml(text2) } : ${fn:escapeXml(text2) } <br />
</body>
</html>









