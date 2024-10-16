<%@page import="model1.board.BoarderDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="model1.board.BoarderDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
BoarderDAO dao = new BoarderDAO(application);
Map<String, Object> param = new HashMap<String, Object>();

String searchField = request.getParameter("searchField");
String searchWord = request.getParameter("searchWord");

if (searchWord != null) {
	param.put("searchField", searchField);
	param.put("searchWord", searchWord);
}

int totalCount = dao.selectCount(param);
List<BoarderDTO> boardLists = dao.selectList(param);
dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="Common/Link.jsp" />

	<h2>목록 보기 [LIST]</h2>

	<form method="get">
		<table border="1" width="90%">
			<td align="center"><select name="searchField">
					<option value="title"></option>
					<option value="content"></option>
			</select> <input type="text" name="searchWord"> <input type="submit"
				value="검색하기"></td>
		</table>
	</form>

	<table border="1" width="90%">
		<tr>
			<th width="10%">번호</th>
			<th width="50%">제목</th>
			<th width="15%">작성자</th>
			<th width="10%">조회수</th>
			<th width="15%">작성일</th>
		</tr>

		<%
		if (boardLists.isEmpty()) {
		%>
		<tr>
			<td colspan="5" align="center">등록된 게시물이 없습니다</td>
		</tr>
		<%
		} else {
		int virtualNum = 0;
		for (BoarderDTO dto : boardLists) {
			virtualNum = totalCount--;
		%>
		<tr align="center">
			<td><%=virtualNum%>></td>
			<td align="left"> <a href="View.jsp?num=<%=dto.getNum()%>"><%=dto.getTitle()%></a></td>
			<td align="center"><%=dto.getId()%></td>
			<td align="center"><%=dto.getVisitcount()%></td>
			<td align="center"><%=dto.getPostdate()%></td>
		</tr>

		<%
		}
		}
		%>>
	</table>

	<table border="1" width="90%">
		<tr align="right">
			<td>
				<button type="button" onclick="location.href='Write.jsp';">글쓰기</button>
			</td>
		</tr>
	</table>

</body>
</html>