<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
ServletRequest request2 = pageContext.getRequest();
ServletResponse response2 = pageContext.getResponse();
HttpSession session2 = pageContext.getSession();
JspWriter out2 = pageContext.getOut();
ServletConfig config2 = pageContext.getServletConfig();
ServletContext application2 = pageContext.getServletContext();
Object page2 = pageContext.getPage();

out.println(request == request2);
out.println("<br>");
out.println(response == response2);
out.println("<br>");
out.println(session == session2);
out.println("<br>");
out.println(out == out2);
out.println("<br>");
out.println(config == config2);
out.println("<br>");
out.println(application == application2);
out.println("<br>");
out.println(page == page2);
out.println("<br>");



%>
</body>
</html>








