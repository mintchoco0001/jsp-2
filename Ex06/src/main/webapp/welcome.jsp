<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>web shopping mall</title>
</head>
<body>
	<nav class="navbar navbar-expond navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="welcome.jsp"}> 홈 </a>
			</div>
		</div>
	</nav>

	<%!String greeting = "쇼핑몰에 오신것을 환영합니다!";
	String tagline = "welcome to shoppingmall";%>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline %>
			</h3>
		</div>
		<hr>
	</div>
</body>
</html>