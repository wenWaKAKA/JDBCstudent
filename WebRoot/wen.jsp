<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'wen.jsp' starting page</title>

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
	<jsp:useBean id="user" class="com.codewen.entity.User"></jsp:useBean>
	<jsp:useBean id="controller" class="com.codewen.serv.Controller"></jsp:useBean>
	<jsp:setProperty property="*" name="user" /> 

	<%
		if (controller.login(user)) {
			session.setAttribute("user", user);
	%>
	<jsp:forward page="main.jsp"></jsp:forward>
	<%
		} else {
	%>
	<jsp:forward page="index.jsp"></jsp:forward>
	<%
		}
	%>

</body>
</html>
