<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.daya.cams.dto.AdmissionsDto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View All Admissions</title>
</head>
<body>
<% List<AdmissionsDto> list =(ArrayList<AdmissionsDto>)request.getAttribute("list"); %>
<div><%@include file="Header.html" %></div>
<div><%@include file="home_navigation.jsp" %></div>
<div class="w3-container">
  <h2>View All Admissions</h2>
  
  <table class="w3-table-all">
    <thead>
      <tr class="w3-red">
        <th>PinNumber</th>
        <th>FullName</th>
        <th>Branch</th>
        <th>Gender</th>
        <th>StudentMobileNumber</th>
        <th>Email</th>
        <th>Actions </th>
      </tr>
    </thead>
    <%for(AdmissionsDto d:list){ %>
    <tr>
      <td><%=d.getPinNumber() %></td>
      <td><%=d.getFullName() %></td>
      <td><%=d.getBranch()%></td>
      <td><%=d.getGender() %></td>
      <td><%=d.getStudentMobileNumber()%></td>
      <td><%=d.getEmail() %></td>
     <td>
      <span><a href="./AdmissionsController?pin_number=<%=d.getPinNumber() %>&action=update">Update</a></span>
      <span><a href="./AdmissionsController?pin_number=<%=d.getPinNumber() %>&action=view">View</a></span>
      <span><a href="./AdmissionsController?pin_number=<%=d.getPinNumber() %>&action=delete">Delete</a></span>
     </td>
    </tr>
    <%} %>
    
  </table>
</div>
<div><%@include file="footer.html" %></div>
</body>
</html>