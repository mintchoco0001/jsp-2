<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="common.JDBConnect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JDBC 커넥션 하기</h1>
	<%
	JDBConnect jdbc1 = new JDBConnect();
	jdbc1.close();
	%>

	<h2>웹 파일을 이용한 DB 연결 테스트</h2>
	<%
	String driver = application.getInitParameter("OracleDriver");
	String url = application.getInitParameter("OracleURL");
	String id = application.getInitParameter("OracleId");
	String pw = application.getInitParameter("OraclePw");
	JDBConnect jdbc2 = new JDBConnect(driver, url, id, pw);
	jdbc2.close();
	%>

	<h2>데이터베이스 연결 테스트</h2>
	<%
	JDBConnect jdbc3 = new JDBConnect(application);
	jdbc3.close();
	%>
</body>
</html>