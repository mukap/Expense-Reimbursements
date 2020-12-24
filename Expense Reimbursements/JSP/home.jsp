<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home Page</title>
<style>
body {
  margin: 0;
}

.header {
  background-color: #9cdef0;
  padding: 20px;
  text-align: center;
}
.button {
  background-color: #777;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.center {
  text-align:center
}

.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: #777;
   color: white;
   text-align: center;
}
</style>
</head>
<body>

<div class="header">
<h1>EXPENSE REIMBUSEMENT SYSTEM</h1>
  <p>Project Developed in MVC (SERVLET AND JSP).</p>
</div>

<br><br><br><br><br><br>

<div class="center">
<a href="managerlogin.jsp" class="button">MANAGER LOGIN</a>
<a href="employeelogin.jsp" class="button">EMPLOYEE LOGIN</a>
</div>


<div class="footer">
  <p>@2020. All Rights reserved by Reimbursement System (ERS)</p>
    </div>
</body>
</html>