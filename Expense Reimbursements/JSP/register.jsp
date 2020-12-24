<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
  margin: 0;
}

.header {
  background-color: #9cdef0;
  padding: 20px;
  text-align: center;
}
input[type=text], select {
  width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=password], select {
  width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=email], select {
  width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
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

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
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

.sidebar {
	position: fixed;
	width: 200px;
	height: 250%;
	background: #4b4276;
	padding: 30px 0;
}

.sidebar h2 {
	color: #fff;
	text-transform: uppercase;
	text-align: center;
	margin-bottom: 30px;
}

.sidebar ul {
	list-style: none;
	margin: 0;
}

.sidebar ul li {
	text-align: center;
	padding: 10px;
	position: relative;
	width: 130px;
	background: #4b4276;
	padding: 15px 0;
	background-color: #4b4276;
	border-top: 1px solid #BDC3C7;
	border-bottom: 1px solid rgba(0, 0, 0, 0.05);
	border-top: 1px solid rgba(225, 225, 225, 0.05);
}
.sidebar ul ul {
	transition: all 0.3s;
	opacity: 0;
	position: absolute;
	visibility: hidden;
	left: 70%;
	top: 0%;
}

.sidebar ul li:hover>ul {
	opacity: 1;
	visibility: visible;
}

.sidebar ul li a {
	color: #fff;
	text-decoration: none;
	display: block;
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
  <p>Expense Reimbursement System (ERS)</p>
</div>

<div class="sidebar">
			<h2>EMPLOYEE DASHBOARD</h2>
			<ul>
				<li><a href="employeeview.jsp">My Profile</a></li>
				<li><a href="register.jsp">New Reimbursement System</a></li>
				<li><a href="employeeviewreimbusementstatus.jsp">View Reimbursement Request Status</a></li>
			</ul>
		</div>

	<%@page import="com.model.EmployeeDao"%>
	<jsp:useBean id="obj" class="com.pojo.Employee" />

	<jsp:setProperty property="*" name="obj" />

<div class="center">
<h3>REIMBUSEMENT REQUEST FORM</h3>
<form action="SaveEmployeeServlet" method="post">
<input type="text" name="amount" placeholder="AMOUNT"><br>
<input type="text" name="message" placeholder="MESSAGE"><br>

<input class="button" type="submit" value="Request">
<a href="employeehomepage.jsp" class="button">BACK</a>

</form>
</div>
	<div class="footer">
  <p>@2020. All Rights reserved by Reimbursement System (ERS)</p>
    </div>

</body>
</html>