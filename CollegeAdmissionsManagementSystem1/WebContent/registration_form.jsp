_<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
String msg=request.getParameter("msg")==null?"":request.getParameter("msg");
%>
<div><%@include file="Header.html" %></div>
<div><%@include file="home_navigation.jsp" %></div>

<div class="body">
  <div class="w3-container w3-brown">
    <h2>Addmissions Form</h2>
     </div>
    <center><h1><%=msg %></h1></center>
 
  <form class="w3-container" action="./AdmissionsController" method="post">
  
    <p>      
    <label class="w3-text-brown"><b>Full Name</b></label>
    <input class="w3-input w3-border w3-sand" name="full_name" type="text"></p>
    <p>      
    <label class="w3-text-brown"><b>Father Name</b></label>
    <input class="w3-input w3-border w3-sand" name="father_name" type="text"></p>
     <p>      
    <label class="w3-text-brown"><b>Mother Name</b></label>
    <input class="w3-input w3-border w3-sand" name="mother_name" type="text"></p>
     <p>
     <label class="w3-text-brown"><b>Gender</b></label><br>
  <input class="w3-radio" type="radio" name="gender" value="male" checked>
  <label>Male</label>
  
  <input class="w3-radio" type="radio" name="gender" value="female">
  <label>Female</label></p>
  <p>      
    <label class="w3-text-brown"><b>Date Of Birth</b></label>
    <input class="w3-input w3-border w3-sand" name="date_of_birth" type="text"></p>
    <p>      
    <label class="w3-text-brown"><b>Parent Mobile Number</b></label>
    <input class="w3-input w3-border w3-sand" name="parent_mobile_number" type="text"></p>
     <p>      
    <label class="w3-text-brown"><b>Student Mobile Number</b></label>
    <input class="w3-input w3-border w3-sand" name="student_mobile_number" type="text"></p>
     <p>      
    <label class="w3-text-brown"><b>E-mail</b></label>
    <input class="w3-input w3-border w3-sand" name="e_mail" type="text"></p>
     <p>      
    <label class="w3-text-brown"><b>Address</b></label>
    <textarea class="w3-input w3-border w3-sand" name="address" type="text" style="height:100px"></textarea></p>
     <p>      
    <label class="w3-text-brown"><b>Joining Year</b></label>
    <input class="w3-input w3-border w3-sand" name="joining_year" type="text"></p>
    <p>
     <label class="w3-text-brown"><b>Branch</b></label>
    <select class="w3-select" name="branch">
    <option value="" disabled selected>Choose your branch</option>
    <option value="cme">CME</option>
    <option value="ece">ECE</option>
    <option value="eee">EEE</option>
  </select>
  </p>
   <p>      
    <label class="w3-text-brown"><b>Pin Number</b></label>
    <input class="w3-input w3-border w3-sand" name="pin_number" type="text"></p>
    <p>
    <button class="w3-btn w3-brown">Register</button>
     <button class="w3-btn w3-brown">Cancel</button>
    </p>
  </form>
</div>

</body>
</html>