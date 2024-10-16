<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String id = request.getParameter("userid");
String pw = request.getParameter("userpw");
if (id.equals("dleldh") && pw.equals("1234")) {
	out.print(id + "님 환영합니다");
} else {
	out.print("로그인 실패. 아이디, 비밀번호를 다시 확인해보세요.");
}
%>