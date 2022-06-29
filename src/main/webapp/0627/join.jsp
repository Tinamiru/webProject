<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.google.gson.JsonArray"%>
<%@page import="com.google.gson.JsonParser"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="kr.or.ddit.member.MemberVO"%>
<%@page import="org.apache.commons.beanutils.BeanUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	//json object를 받고 
	BufferedReader rd = request.getReader();
	String jsonData = rd.readLine();
	
	MemberVO vo = new MemberVO();
	Map<String,Object> map = new HashMap<>();
	
	//json object => javascript object로 변경 - gson
	JsonParser jsonParser = new JsonParser();
	JsonArray jsonArray = (JsonArray)jsonParser.parse(jsonData);
	for(int i=0; i<jsonArray.size(); i++){
		JsonObject jsonObj = (JsonObject)jsonArray.get(i);
		
		String key = jsonObj.get("name").getAsString();
		String value = jsonObj.get("value").getAsString();
		
		map.put(key, value);
	}
	BeanUtils.populate(vo, map);

	
	//BeanUtils : map을 bean객체로 바꿔주는 클래스
	//				>> java bean(vo)객체에 맞춰 값을 자동으로 넣음
// 	BeanUtils.populate(vo, request.getParameterMap());
	
	//String memId = vo.getMem_name();

	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	Connection conn = DriverManager.getConnection(url, "sjr", "java");
	
	//insert query
	String sql = "INSERT INTO MEMBER (" + 
			"mem_id, mem_name, mem_pass, mem_bir" +	
			",mem_zip, mem_add1, mem_add2, mem_hp" +	
			",mem_mail) VALUES (?,?,?,?,?,?,?,?,?)";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, vo.getMem_id());
	pstmt.setString(2, vo.getMem_name());
	pstmt.setString(3, vo.getMem_pass());
	pstmt.setString(4, vo.getMem_bir());
	pstmt.setString(5, vo.getMem_zip());
	pstmt.setString(6, vo.getMem_add1());
	pstmt.setString(7, vo.getMem_add2());
	pstmt.setString(8, vo.getMem_hp());
	pstmt.setString(9, vo.getMem_mail());
	
	int rst = pstmt.executeUpdate();
	
	System.out.println(rst);
%>

<%=rst %>





