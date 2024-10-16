<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="car" class="common.Car" scope="request"></jsp:useBean>
	<jsp:setProperty property="*" name="car" />
	<ul>
		<li>제조사 : <jsp:getProperty property="factory" name="car" />
		</li>
		<li>가격 : <jsp:getProperty property="cost" name="car" />
		</li>
		<li>최대속도 : <jsp:getProperty property="speed" name="car" />
		</li>
		<li>색상 : <jsp:getProperty property="color" name="car" />
		</li>
	</ul>
</body>
</html>