<%@page import="com.codewen.entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	User user = (User) session.getAttribute("user");
	if (user == null) {
%>
<jsp:forward page="index.jsp"></jsp:forward>

<%
	}
%>

