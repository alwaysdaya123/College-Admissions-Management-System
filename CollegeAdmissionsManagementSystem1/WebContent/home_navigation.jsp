<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.w3-container{
margin-left:-20px;
margin-right:-20px;
}
</style>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Home Navigation</title>
 </head>
<body>
<div class="w3-container">
  <div class="w3-bar w3-black">
    <a href="Home.jsp" class="w3-bar-item w3-button w3-mobile w3-green">Home</a>
    <div class="w3-dropdown-hover w3-mobile">
      <button class="w3-button">Admissions  <i class="fa fa-caret-down"></i></button>
      <div class="w3-dropdown-content w3-bar-block w3-dark-grey">
        <a href="registration_form.jsp" class="w3-bar-item w3-button w3-mobile">Add New Student</a>
        <a href="./AdmissionsController" class="w3-bar-item w3-button w3-mobile">View All</a>
      </div>
    </div>
    <a href="aboutus.jsp" class="w3-bar-item w3-button w3-mobile">Contact us</a>
    <a href="#" class="w3-bar-item w3-button w3-mobile">Log out</a> 
  </div>
</div>
</body>
</html>