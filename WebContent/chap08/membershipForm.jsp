<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<form action="processJoining.jsp" method="post">
					<div class="form-group">
						<label for="exampleFormControlInput1">ID</label> <input
							type="text" class="form-control" id="exampleFormControlInput1"
							placeholder="ID" name="id">
					</div>
					<div class="form-group">
						<label for="exampleFormControlInput2">Name</label> <input
							type="text" class="form-control" id="exampleFormControlInput2"
							placeholder="Name" name="name">
					</div>
					<div class="form-group">
						<label for="exampleFormControlInput3">Email</label> <input
							type="email" class="form-control" id="exampleFormControlInput3"
							placeholder="Email" name="email">
					</div>
					<input class="btn btn-primary" type="submit" value="회원가입" />
				</form>
			</div>
		</div>
	</div>
</body>
</html>





