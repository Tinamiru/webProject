<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
  String str1 = request.getParameter("str1");
  String str2 = request.getParameter("str2");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/outStyle.css">
<style>
img {
  width: 100px;
} 
</style>
<script src="../js/jquery-3.6.0.min.js"></script>
<script>
$(function(){
  //시작
  $('button').eq(0).on('click',proxyCall);
  //정지
  $('button').eq(1).on('click',callEnd);
});

let chk = false;
let timer = "";
let proxyCall = function(){
  if(!chk){
	  appendImg();
	  chk = true;
  }  
};

let callEnd = function(){
  clearTimeout(timer);
  chk = false;
};

let appendImg = function(){
	$('img').first().appendTo('div');
	timer = setTimeout(appendImg, 500);
};

</script>
</head>
<body>
<%= str1 + "-" + str2 %>
  <button type="button">시작</button>
  <button type="button">정지</button>

  <div>
    <img src="../images/suzy.jfif" alt="">
    <img src="../images/iu.jpg" alt="">
    <img src="../images/img/bogum.jfif" alt="">
    <img src="../images/coffee.jpg" alt="">
  </div>
  
</body>
</html>