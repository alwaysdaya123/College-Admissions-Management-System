<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>
</head>
<body>
<%
String msg=request.getParameter("msg")==null?"":request.getParameter("msg");
%>
<div><%@include file="Header.html" %></div>
<div><%@include file="home_navigation.jsp" %></div>
<div><%@include file="footer.html" %></div>
<center><h3><%=msg %></h3></center>
</body>
</html>