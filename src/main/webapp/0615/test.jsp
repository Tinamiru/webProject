<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

// 	String hb = request.getParameter("hobby"); //단일데이터
	String[] hb = request.getParameterValues("hobby");

	String result = "";
	//null check
	if(hb != null){
		for(int i=0; i<hb.length; i++){
			result += hb[i];
		}
	}else{
		result = "hobby is no data <br><br>";	
	}
	
	String[] flower = request.getParameterValues("flower");
	String flw = "";
	if(flower != null){
		for(int i=0; i<flower.length; i++){
			flw += flower[i];
		}	
	}else{
		flw = "flower is no data";
	}
%>
<%= result %> <hr>
<%= flw %>