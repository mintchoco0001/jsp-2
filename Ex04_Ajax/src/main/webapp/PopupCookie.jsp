<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Cookie cookie = new Cookie("today", "off");
cookie.setPath(request.getContextPath());
cookie.setMaxAge(60 * 60 * 24);
response.addCookie(cookie);

out.print("저장완료");
%>