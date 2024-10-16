<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String[] pocket = { "피카츄", "라이츄", "파이리", "꼬북이", "버터플", "야도란", "피존투", "또가스", "마자용", "냐옹이", "갸라도스", "이어킹", "고라파덕", "토게피",
		"이상해씨", "루주라", "푸린", "단데기", "모다피", "뚜벅초", "디그다", "이상해풀", "이상해꽃", "스라크", "꼬마돌" };

String key = request.getParameter("key");

for (int i = 0; i < pocket.length; i++) {
	if (pocket[i].contains(key)) {
		out.println("<li>" + pocket[i] + "</li>");
	}
}
%>