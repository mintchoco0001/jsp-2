<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="car" class="common.Car" scope="page"></jsp:useBean>
	<jsp:setProperty property="factory" name="car" value="페라리" />
	<jsp:setProperty property="cost" name="car" value="250000000" />
	<jsp:setProperty property="speed" name="car" value="500" />
	<jsp:setProperty property="color" name="car" value="빨강" />

	<ul>
		<li>제조사 : <jsp:getProperty property="factory" name="car"/></li>
		<li>가격 : <jsp:getProperty property="cost" name="car"/></li>
		<li>최대속도 : <jsp:getProperty property="speed" name="car"/></li>
		<li>색상 : <jsp:getProperty property="color" name="car"/></li>
	</ul>
</body>
</html>