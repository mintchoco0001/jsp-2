<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

<script type="text/javascript">
	$(function() {
		$("#search").keyup(function() {
			let search = $("#search").val();
			$.ajax({
				url : "poketSub.jsp",
				type : "get",
				data : {
					key : search
				},
				success : function(msg) {
					$("#result").html(msg)
				}
			})
		})
	})
</script>
</head>
<body>
	<h1>포켓몬 검색하기</h1>
	<input id="search" type="text">
	<button id="btn">검색하기</button>
	<ul id="result">

	</ul>
</body>
</html>