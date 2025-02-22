<%@page import="com.daya.cams.dto.AdmissionsDto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admission</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">
.col-25{
width:30%;
float:left;
}
.col-75{
width:70%;
float:left;
}
</style>
</head>
<body>
<%
AdmissionsDto dto=(AdmissionsDto)request.getAttribute("dto");
%>
<form class="w3-container w3-card-4" action="/action_page.php">
<center><h3>Admission Details</h3></center>
<div class="col-25">
<label class="w3-text-blue"><b>FullName</br></label>
</div>
<div class="col-75">
<label><%=dto.getFullName() %></label>
</div>
<br>  
  <div class="col-25">
<label class="w3-text-blue"><b>FatherName</br></label>
</div>
<div class="col-75">
<label><%=dto.getFatherName() %></label>
</div>
<br> 
  <div class="col-25">
<label class="w3-text-blue"><b>MotherName</br></label>
</div>
<div class="col-75">
<label><%=dto.getMotherName() %></label>
</div>
<br> 
 <div class="col-25">
<label class="w3-text-blue"><b>Gender</br></label>
</div>
<div class="col-75">
<label><%=dto.getGender() %></label>
</div>
<br> 
 <div class="col-25">
<label class="w3-text-blue"><b>DateOfBirth</br></label>
</div>
<div class="col-75">
<label><%=dto.getDateOfBirth() %></label>
</div>
<br> 
  <div class="col-25">
<label class="w3-text-blue"><b>ParentMobileNumber</br></label>
</div>
<div class="col-75">
<label><%=dto.getParentMobileNumber() %></label>
</div>
<br> 
  <div class="col-25">
<label class="w3-text-blue"><b>StudentMobileNumber</br></label>
</div>
<div class="col-75">
<label><%=dto.getStudentMobileNumber() %></label>
</div>
<br>  
  <div class="col-25">
<label class="w3-text-blue"><b>Email</br></label>
</div>
<div class="col-75">
<label><%=dto.getEmail() %></label>
</div>
<br>  
 <div class="col-25">
<label class="w3-text-blue"><b>Address</br></label>
</div>
<div class="col-75">
<label><%=dto.getAddress() %></label>
</div>
<br> 
 <div class="col-25">
<label class="w3-text-blue"><b>JoiningYear</br></label>
</div>
<div class="col-75">
<label><%=dto.getJoiningYear() %></label>
</div>
<br> 
    
    <div class="col-25">
<label class="w3-text-blue">PinNumber</label>
</div>
<div class="col-75">
<label><%=dto.getPinNumber() %></label>
</div>
<br> 
</form>


</body>
</html>