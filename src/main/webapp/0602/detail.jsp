<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<pre>
	JDBC(Java DataBase Connectivity)를 이용한 DB Connection
	: 자바에서 디비에 접속할 수 있도록 하는 API
	>> DB에서 정보를 가져오기 위해 객체를 만들어 연결하는 방식
</pre>
<%
	String nm = request.getParameter("name");
%>
<%-- 전달받은 요청데이터 : <%=nm %> --%>
  <table border="1">
    <tr>
      <th>이름</th>
      <th>아이디</th>
      <th>핸드폰</th>
      <th>이메일</th>
    </tr>
    <tr>
      <td><%=nm %></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </table>
</body>
</html>