<%@page import="java.sql.PreparedStatement"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 추가 테스트</h2>
	<%
	JDBConnect jdbc = new JDBConnect();

	String id = "test1";
	String pw = "1111";
	String name = "테스트1회원";
	
	String sql = "insert into member values (?,?,?,sysdate)";
	PreparedStatement psmt = jdbc.con.prepareStatement(sql);
	psmt.setString(1, id);
	psmt.setString(2, pw);
	psmt.setString(3, name);
	
	int result = psmt.executeUpdate();
	out.print(result+"행");
	
	jdbc.close();
	%>
</body>
</html>