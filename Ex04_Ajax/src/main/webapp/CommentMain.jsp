<%@page import="java.util.ArrayList"%>
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
		$("#btn").click(function() {
			let msg = $("#msg").val();
			$.ajax({

				url : "CommentSub.jsp",
				type : "get",
				data : {
					msg : msg
				},
				success : function(msg) {
					$("#result").html(msg)
				}
			})//ajax 끝
		})//클릭 function 끝
	})//function 끝
</script>
</head>
<body>
	<h1>댓글 달기</h1>

	<input id="msg" type="text">
	<button id="btn">추가</button>
	<ul id="result">
		<%
		//application 영역에 저장된 ArrayList 꺼내기
		ArrayList<String> comments = (ArrayList<String>) application.getAttribute("comments");
		if (comments != null) {
			for (String temp : comments) {
		%>
		<li><%=temp%></li>
		<%
		}
		}
		%>
	</ul>
</body>
</html>