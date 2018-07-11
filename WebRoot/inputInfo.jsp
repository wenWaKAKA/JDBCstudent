<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'inputInfo.jsp' starting page</title>

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
	This is my input JSP page.
	<br>
	<hr>
	<form action="" method="post">
		<center>
			<table>
				<tr align="center">
					<td colspan="2">input student information
				</tr>
				<tr>
					<td>昵称
					<td><input type="text">
				</tr>
				<tr>
					<td>真实姓名
					<td><input type="text">
				</tr>
				<tr>
					<td>性别
					<td><input type="radio" checked value="1" name="sex">男
						<input type="radio" value="0" name="sex">女
				</tr>
				<tr>
					<td>出生日期
					<td><input type="text">
				</tr>
				<tr>
					<td>专业
					<td><select>
							<option>软件工程</option>
							<option>通信工程</option>
							<option selected>游戏工程</option>
							<option>体育工程</option>
					</select>
				</tr>

			</table>
		</center>
	</form>
</body>
</html>
