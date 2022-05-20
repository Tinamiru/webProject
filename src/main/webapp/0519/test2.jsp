<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String nm = request.getParameter("name");
String gd = request.getParameter("gender");
//String fd = request.getParameter("food");
String[] foods = request.getParameterValues("food");
String hd = request.getParameter("hidden");

String food = "";
for (int i = 0; i < foods.length; i++) {
	food += foods[i];
}

String fl = request.getParameter("file");
%>

당신의 이름은<%=nm%><br>
성별은
<%=gd%>
입니다.
<br>
<%="좋아하는 음식은 " + food%>..
<br>
선택한 파일 :
<%=fl%><br>
<br>
숨겨진 데이터 내용 :
<%=hd%><br>
<br>
<%=nm%>,<%=gd%>,<%=foods[1]%>,<%=foods[2]%>,<%=fl%>
