<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="IsLogedIn.jsp"%>
<%@ page import="model1.board2.BoarderDAO"%>
<%@ page import="model1.board2.BoarderDTO"%>

<%
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	BoarderDTO dto = new BoarderDTO();
	dto.setTitle(title);
	dto.setContent(content);
	dto.setId(session.getAttribute("UserId").toString());
	
	BoarderDAO dao =new BoarderDAO(application);
	int result = dao.insertWrite(dto);
	dao.close();
	
	if(result==1){
		response.sendRedirect("List.jsp");
	}else{
		JSFunction.alertBack("글쓰기에 실패했습니다.", out);
	}
	
%>
