<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

<script type="text/javascript">
	$(function() {
		$("#btn").click(function () {
			
			let id = $("#id").val();
			let pw = $("#pw").val();
			
			$.ajax({
				url : "LoginSave.jsp",
				type : "post",
				data : { userid : id, userpw : pw},
				success : function(msg) {
					//서버 갔다왔을 때 일어날 일
					//요청과 응답 모두 성공했을 때
					//$("#btn").after(msg)
					//append : 마지막에 요소 추가
					//after : 뒤에 요소 추가
					$("#result").html("<h2>"+msg+"</h2>")
				
				}
			})//ajax
			
		})//btn function
	})//function
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>로그인 페이지</h1>


	<input id="id" type="text" placeholder="아이디를 입력하세요">
	<br>
	<input id="pw" type="password" placeholder="비밀번호를 입력하세요">
	<br>
	<button id="btn">로그인</button>
	<br>
	<p id="result">결과 들어갈 p태그</p>


</body>
</html>