<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chap11.MyBean" %>
<%
MyBean m = new MyBean();
m.setName("john");
m.setId(100);


%>
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
객체의 getProperty 메소드 사용
${object.property} => object.getProperty()


--%>
<%
request.setAttribute("attr1", "value1");
request.setAttribute("myBean", m);
%>
<h1>${attr1 }</h1>
<h1>${myBean.name }</h1>
<h1>${myBean.id }</h1>
<h1>${myBean["name"] }</h1>
<h1>${myBean["id"] }</h1>
<hr />
<jsp:include page="elEx4Sub.jsp"></jsp:include> 
<hr />

${pageContext.request.localName }
</body>
</html>










