<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="memberInfo" class="chap08.member.MemberInfo" />
<jsp:setProperty name="memberInfo" property="*" />
<jsp:setProperty name="memberInfo" property="password"
	value="<%=memberInfo.getId()%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">ID</h5>
						<h6 class="card-subtitle mb-2 text-muted"><jsp:getProperty
								name="memberInfo" property="id" /></h6>
					</div>
				</div>
				<div class="card" >
					<div class="card-body">
						<h5 class="card-title">Password</h5>
						<h6 class="card-subtitle mb-2 text-muted"><jsp:getProperty
								name="memberInfo" property="password" /></h6>
					</div>
				</div>
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Name</h5>
						<h6 class="card-subtitle mb-2 text-muted"><jsp:getProperty
								name="memberInfo" property="name" /></h6>
					</div>
				</div>
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Email</h5>
						<h6 class="card-subtitle mb-2 text-muted"><jsp:getProperty
								name="memberInfo" property="email" /></h6>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>








