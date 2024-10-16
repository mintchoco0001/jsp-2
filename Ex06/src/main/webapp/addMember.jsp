<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	<script type="text/javascript">
		function validateForm(form) {
			if (!form.uid.value) {
				alert("아이디를 입력하세요.")
				return false;
			}
			if (form.upw.value == "") {
				alert("패스워드를 입력하세요")
				return false;
			}
			if (form.uname.value == "") {
				alert("이름을 입력하세요")
				return false;
			}
		}
	</script>
	<form action="addMemOk.jsp">
		아이디 : <input type="text" name="uid" placeholder="아이디"> <br>
		비밀번호 : <input type="password" name="upw"> <br> 이름 : <input
			type="text" name="uname"> <br> <input type="submit"
			value="가입하기">
	</form>

</body>
</html>