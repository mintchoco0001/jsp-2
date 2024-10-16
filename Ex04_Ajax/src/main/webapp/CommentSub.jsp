<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//application 영역에 댓글들 저장
//1.application 영역에 저장되어 있는 댓글들(ArrayList) 가져오기
ArrayList<String> comments = (ArrayList<String>) application.getAttribute("comments");
//2.자장된 데이터가 없으면 (ArrayList ==null) 새로생성
if (comments == null) {
	comments = new ArrayList<>();
}
//3.request에서 msg 꺼내서 ArrayList에 저장
String msg = request.getParameter("msg");
comments.add(msg);
//4.ArrayList를 다시 application영역에 저장
application.setAttribute("comments", comments);
//5. ArrayList에 저장된 댓글들을 문자열로 응답
for (String temp : comments) {
	out.print("<li>" + temp + "</li>");
}
%>