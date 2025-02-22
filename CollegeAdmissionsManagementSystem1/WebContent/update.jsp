_
<%@page import="com.daya.cams.dto.AdmissionsDto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.body{
margin-left:10px;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration Form</title>
</head>
<body>
<%
AdmissionsDto dto=(AdmissionsDto)request.getAttribute("dto");
%>

<div><%@include file="Header.html" %></div>
<div><%@include file="home_navigation.jsp" %></div>

<div class="body">
  <div class="w3-container w3-brown">
    <h2>Update Form</h2>
     </div>
  
 
  <form class="w3-container" action="./AdmissionsController" method="post" action="update">
     <p>      
   
    <input class="w3-input w3-border w3-sand" type="hidden" name="pin_number" value"<%=dto.getPinNumber() %>"></p>
  
    <p>      
    <label class="w3-text-brown"><b>Full Name</b></label>
    <input class="w3-input w3-border w3-sand" name="full_name" type="text" value="<%=dto.getFullName()%>"></p>
    <p>      
    <label class="w3-text-brown"><b>Father Name</b></label>
    <input class="w3-input w3-border w3-sand" name="father_name" type="text" value="<%=dto.getFatherName()%>"></p>
     <p>      
    <label class="w3-text-brown"><b>Mother Name</b></label>
    <input class="w3-input w3-border w3-sand" name="mother_name" type="text" value="<%=dto.getMotherName()%>"></p>
     <p>
     <label class="w3-text-brown"><b>Gender</b></label><br>
     <input class="w3-input w3-border w3-sand" name="gender" type="text" value="<%=dto.getGender()%>"></p>
  <p>      
    <label class="w3-text-brown"><b>Date Of Birth</b></label>
    <input class="w3-input w3-border w3-sand" name="date_of_birth" type="text" value="<%=dto.getDateOfBirth()%>"></p>
    <p>      
    <label class="w3-text-brown"><b>Parent Mobile Number</b></label>
    <input class="w3-input w3-border w3-sand" name="parent_mobile_number" type="text"value="<%=dto.getParentMobileNumber() %>"></p>
     <p>      
    <label class="w3-text-brown"><b>Student Mobile Number</b></label>
    <input class="w3-input w3-border w3-sand" name="student_mobile_number" type="text" value="<%=dto.getStudentMobileNumber() %>"></p>
     <p>      
    <label class="w3-text-brown"><b>E-mail</b></label>
    <input class="w3-input w3-border w3-sand" name="e_mail" type="text" value="<%=dto.getEmail() %>"></p>
     <p>      
    <label class="w3-text-brown"><b>Address</b></label>
    <input class="w3-input w3-border w3-sand" name="address" type="text" value="<%=dto.getAddress() %>"></p>
     <p>    
    <label class="w3-text-brown"><b>Joining Year</b></label>
    <input class="w3-input w3-border w3-sand" name="joining_year" type="text" value="<%=dto.getJoiningYear() %>"></p>
    <p>
     <label class="w3-text-brown"><b>Branch</b></label>
    <input class="w3-input w3-border w3-sand" name="branch" type="text" value="<%=dto.getBranch() %>"></p>
  
    <p>
    <button class="w3-btn w3-brown">update</button>
     <button class="w3-btn w3-brown">Cancel</button>
    </p>
  </form>
</div>

</body>
</html>