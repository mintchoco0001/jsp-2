<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String popupMode = "on";

Cookie[] cookies = request.getCookies();
for (Cookie c : cookies) {
	if(c.getName().equals("today")){
		popupMode = c.getValue();
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div#popup {
	position: absolute;
	top: 100px;
	left: 50px;
	color: yellow;
	width: 270px;
	height: 100px;
	background-color: gray;
}

div#popup>div {
	position: relative;
	background-color: #ffffff;
	top: 0px;
	border: 1px solid gray;
	padding: 10px;
	color: black;
}
</style>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script>
	$(function() {
		$('#closeBtn').click(function() {
			$('#popup').hide();

			//체크박스 쳌여부값 가져오기
			let check = $("input:checkbox[id=inactiveToday]:checked").val();
			//id가 input 이면서 check되어 있는 값
			if (check == 1) {
				$.ajax({
					url : "PopupCookie.jsp",
					type : "get",
					success : function(result) {
						if(result != ""){//응답이 왔다면
							location.reload();//창을 새로고침 하겠다
						}						
					}//success 끝
				})//ajax끝
			}//if 끝
		});//click 긑
	});
</script>
</head>
<body>
	<h2>팝업 메인 페이지(ver 0.1)</h2>
	<%
	for (int i = 1; i <= 10; i++) {
		out.print("현재 팝업창은 " + popupMode + " 상태입니다.<br/>");
	}

	if (popupMode.equals("on")) {
	%>
	<div id="popup">
		<h2 align="center">공지사항 팝업입니다.</h2>
		<div align="right">
			<form name="popFrm">
				<input type="checkbox" id="inactiveToday" value="1" /> 하루 동안 열지 않음
				<input type="button" value="닫기" id="closeBtn" />
			</form>
		</div>
	</div>
	<%
	}
	%>
</body>
</html>