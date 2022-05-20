<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// Post방식으로 한글데이터가 들어올때
request.setCharacterEncoding("utf-8");
// 데이터 전달받기
String txta = request.getParameter("ta");
txta = txta.replace("\r\n", "<br>");
// String car = request.getParameter("cars");
String[] cars = request.getParameterValues("cars");

String cha = "";
for (int i = 0; i < cars.length; i++) {
	cha += cars[i];
	if (i != cars.length - 1) {
		cha += ",";
	}
}
%>

테스트 에어리어 :
<%=txta%><br>
<%="Dream Car : " + cha%>
