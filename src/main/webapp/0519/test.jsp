<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!-- 스크립트릿 -->
<%
// Post 형식로 데이터를 받을 경우 캐릭터 세팅 필요
request.setCharacterEncoding("utf-8");
// 데이터 전달받기 - id, pw
String id = request.getParameter("userID");
String pw = request.getParameter("userPW");
%>
<%=id%>
<br>
<%=pw%>
