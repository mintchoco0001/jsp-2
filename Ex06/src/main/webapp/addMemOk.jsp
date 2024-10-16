<%@page import="membership.memberDTO"%>
<%@page import="membership.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String oracleDriver = application.getInitParameter("OracleDriver");
String oracleURL = application.getInitParameter("OracleURL");
String oracleId = application.getInitParameter("OracleId");
String oraclePw = application.getInitParameter("OraclePw");
String uid = request.getParameter("uid");
memberDAO dao = new memberDAO(oracleDriver, oracleURL, oracleId, oraclePw);
memberDTO memberDTO = dao.getMemberDTO();
dao.close();

if(uid.equals(memberDTO.getId())){
	
}

%>