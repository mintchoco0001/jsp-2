<%@page import="java.util.Scanner"%>
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
	<%
	JDBConnect jdbc = new JDBConnect();

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");

	String sql = "insert into member values (?,?,?,sysdate)";
	PreparedStatement psmt = jdbc.con.prepareStatement(sql);
	psmt.setString(1, id);
	psmt.setString(2, pw);
	psmt.setString(3, name);

	int result = psmt.executeUpdate();
	out.print("회원정보 저장 완료");

	jdbc.close();
	%>
</body>
</html>