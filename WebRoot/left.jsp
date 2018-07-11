<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    This is my left JSP page. <br>
    <hr>
    <a href="inputInfo.jsp" target="right">input</a><br>
    <a href="displayInfo.jsp" target="right">display</a><br>
    <a href="modifyInfo.jsp" target="right">modify</a><br>
    <a href="deleteInfo.jsp" target="right">delete</a><br>
    <a href="exitt.jsp" target="_top">exit</a><br>
    
  </body>
</html>
