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

<title>My JSP 'displayInfo.jsp' starting page</title>

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
	This is my di JSP page.
	<br>
	<hr>
	<jsp:useBean id="show" class="com.codewen.serv.Controller"></jsp:useBean>
	<%
		List<Student> list = show.disPlay();
		out.print(list.size());
		Iterator<Student> tIterator = list.iterator();
	%>
	<table>
		<tr>
			<td>id</td>
			<td>真实姓名</td>
			<td>昵称</td>
			<td>性别</td>
			<td>出生日期</td>
			<td>专业</td>
			<td>课程</td>
			<td>兴趣</td>
			<td></td>
		</tr>
		<%
			int i = 0;
			while (tIterator.hasNext()) {
				Student student = tIterator.next();
		%>
		<tr <%if(i%2==0){ %>bgcolor="#f0f8f"<% }%>>
			<td><%=student.getId()%></td>
			<td><%=student.getTname()%></td>
			<td><%=student.getNname()%></td>
			<td>
				<%
					if (student.getSex()==1)
							out.print("男");
						else
							out.print("女");
				%>
			</td>
			<td><%=student.getBirthday()%></td>
			<td><%=student.getMajor()%></td>
			<td><%=student.getTclass()%></td>
			<td><%=student.getInteresting()%></td>
			<td><a href="modify.jsp?id=<%=student.getId()%>">修改</a></td>
		</tr>
		<%
			i++;
			}
		%>

	</table>
</body>
</html>
