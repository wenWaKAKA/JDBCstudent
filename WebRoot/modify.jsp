<%@page import="com.codewen.entity.Student"%>
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

<title>My JSP 'modify.jsp' starting page</title>

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
	This is my JSP page.
	<br>
	<hr>
	<jsp:useBean id="con" class="com.codewen.serv.Controller"></jsp:useBean>
	<%
		int id = Integer.parseInt(request.getParameter("id"));

		Student student = con.findbyid(id);

out.print(student.getSex());
		out.print(id);
	%>
	<%=student.getNname()%>
	This is my input JSP page.

	<hr>
	<form action="modify_student.jsp" method="post">
		<center>
			<table>
				<tr align="center">
					<td colspan="2">input student information
				</tr>
				<tr>
					<td>昵称
					<td><input type="text" name="nname" value="<%=student.getNname() %>">
				</tr>
				<tr>
					<td>真实姓名
					<td><input type="text" name="tname" value="<%=student.getTname() %>">
				</tr>
				<tr>
					<td>性别
					<td><input type="radio" <%if (student.getSex() == 1) {%>
						checked <%}%> value="1" name="sex">男 <input type="radio"
						<%if (student.getSex() == 0) {%> checked <%}%> value="0"
						name="sex">女
				</tr>
				<tr>
					<td>出生日期
					<td><input type="text" name="birthday"
						value="<%=student.getBirthday()%>">
				</tr>
				<tr>
					<td>专业
					<td><select name="major">
							<option <%if (student.getMajor().equals("软件工程")) {%> selected <%}%>>软件工程</option>
							<option <%if (student.getMajor().equals("通信工程")) {%> selected <%}%>>通信工程</option>
							<option <%if (student.getMajor().equals("游戏工程")) {%> selected <%}%>>游戏工程</option>
							<option <%if (student.getMajor().equals("体育工程")) {%> selected <%}%>>体育工程</option>
					</select>
				</tr>
				<tr>
					<td>課程
					<td><select name="tclass" multiple="multiple">
							<option <%if (student.getTclass().equals("英語1")) {%> selected <%}%>>英語1</option>
							<option <%if (student.getTclass().equals("英語2")) {%> selected <%}%>>英語2</option>
							<option <%if (student.getTclass().equals("英語3")) {%> selected <%}%>>英語3</option>
							<option <%if (student.getTclass().equals("英語4")) {%> selected <%}%>>英語4</option>
					</select>
				</tr>
				<tr>
					<td>興趣
					<td><input type="checkbox" value="ball" name="interesting"
						<%if (student.getInteresting().equals("ball")) {%> checked <%}%>>打球
						<input type="checkbox" value="book" name="interesting"
						<%if (student.getInteresting().equals("book")) {%> checked <%}%>>看書
						<input type="checkbox" value="song" name="interesting"
						<%if (student.getInteresting().equals("song")) {%> checked <%}%>>聽歌
						<input type="checkbox" value="sport" name="interesting"
						<%if (student.getInteresting().equals("sport")) {%> checked <%}%>>運動
	
				</tr>
			</table>
			<input type="hidden" name="id" value="<%=student.getId() %>">
			<input type="submit" value="修改"> 
			
		</center>
	</form>
</body>
</html>
