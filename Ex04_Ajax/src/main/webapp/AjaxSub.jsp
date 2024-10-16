<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("result");	

	//응답 하기
	
	out.print(name + "가 만든 쿠키  🍪🍪🍪🍪🍪🍪🍪🍪🍪");

	//쿠키값 저장
	//키는 key, value는 name으로!
	Cookie cookie =new Cookie("key", name);
	cookie.setMaxAge(50);
	cookie.setPath(request.getContextPath());
	response.addCookie(cookie);
	
	
%>