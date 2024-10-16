<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="carBeanMain.jsp">
	<label>제조사 : </label> <input type="text" name="factory"> <br>
	<label>가격 : </label><input type="text" name="cost"><br>
	<label>최대속도 : </label><input type="text" name="speed"><br>
	<label>색상 : 	</label><input type="text" name="color"><br>
	<input type="submit" value="제출하기">
	</form>
</body>
</html>