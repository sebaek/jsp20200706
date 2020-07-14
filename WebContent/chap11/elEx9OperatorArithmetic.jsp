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
<h1>산술 연산</h1>
<form action="" method="post">
num1 : <input type="text" name="num1" /> <br />
num2 : <input type="text" name="num2" /> <br />
<input type="submit" value="계산"/>
</form>
<%
String num1 = request.getParameter("num1");
String num2 = request.getParameter("num2");
int n1 = Integer.parseInt(num1);
int n2 = Integer.parseInt(num2);
out.print(n1 + n2);
%>

<h1>더하기</h1>
<h2>${param.num1 + param.num2}</h2>
<h1>빼기</h1>
<h2>${param.num1 - param.num2}</h2>
<h1>곱하기</h1>
<h2>${param.num1 * param.num2}</h2>
<h1>나누기</h1>
<h2>${param.num1 / param.num2}</h2>
<h2>${param.num1 div param.num2}</h2>
<h1>나머지 (modular)</h1>
<h2>${param.num1 % param.num2}</h2>
<h2>${param.num1 mod param.num2}</h2>





</body>
</html>










