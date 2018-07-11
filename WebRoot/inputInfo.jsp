<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
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

	<hr>
	<form action="input_student.jsp" method="post">
		<center>
			<table>
				<tr align="center">
					<td colspan="2">input student information
				</tr>
				<tr>
					<td>昵称
					<td><input type="text" name="nname">
				</tr>
				<tr>
					<td>真实姓名
					<td><input type="text" name="tname">
				</tr>
				<tr>
					<td>性别
					<td><input type="radio" checked value="1" name="sex">男
						<input type="radio" value="0" name="sex">女
				</tr>
				<tr>
					<td>出生日期
					<td><input type="text" name="birthday">
				</tr>
				<tr>
					<td>专业
					<td><select name="major">
							<option>软件工程</option>
							<option>通信工程</option>
							<option selected>游戏工程</option>
							<option>体育工程</option>
					</select>
				</tr>
				<tr>
					<td>課程
					<td><select name="tclass" multiple="multiple">
							<option>英語1</option>
							<option>英語2</option>
							<option>英語3</option>
							<option>英語4</option>
					</select>
				</tr>
				<tr>
					<td>興趣
					<td><input type="checkbox" value="ball" name="interesting">打球
						<input type="checkbox" value="book" name="interesting">看書
						<input type="checkbox" value="song" name="interesting">聽歌
						<input type="checkbox" value="sport" name="interesting">運動

					
				</tr>
			</table>
			<input type="submit" value="tijiao">
		</center>
	</form>
</body>
</html>
