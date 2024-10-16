<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- JQuery Import -->
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>

<script type="text/javascript">
	//JavaScript를 간소화한게 JQurey 라이브러리 (Ajax포함)
	$(function() {

		//쿠리 -> 무언가를 선택
		//아래 HTML 태그 선택 => 선택자 (selector)
		//버튼클릭하면 서버에서 문구 받아다가 브라우저에 출력하려고
		//구분하는 속성 id, 그룹으로 묶는 속성 class (Front = client(HTML/CSS/JS))
		//name, value (Back - Server(JSP))

		// id 속성으로 찾을때 #
		// class 속성으로 찾을때 .

		$("#btn2").click(function() {
			var str = $("#input").val(); // id가 input인 태그에 적힌 value
			//Ajax로 요청 보내기
			$.ajax({
				url : "AjaxSub.jsp", //어디로 요청 할 건지
				type : "get", // 전송방식
				data : { result : str },  
				success : function (result) { //응답 받았을 때 일어날 일  / result => 응답받은 값
				// 	alert(result); 
				$("#btn2").after("<p>"+ result +"</p>");
				//.after 는 뒤에 달기 before 앞으로, apend 사이에
				}
				
			}); //ajax 끝
		});//click 긑
	});//function 끝
</script>
</head>
<body>
	<h1>Ajax로 비동기 통신하기</h1>

	<p>[일반 = 동기 = 순차]통신 버튼 클릭하면 페이지 바뀜</p>
	<p>form 태그, action 속성 사용</p>

	<p>비동기통신 (동시에) 버튼 클릭해도 페이지 안바뀜</p>
	<p>Ajax 라이브러리 (JQuery) 사용</p>

	<input id="input" type="text">
	<button id="btn1">직업확인하기</button>
	<button id="btn2">아래에 글 추가하기</button>
	<p></p>
</body>
</html>