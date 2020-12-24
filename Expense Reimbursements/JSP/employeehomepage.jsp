<%@page import="com.model.EmployeeDao"%>
<%@page import="com.pojo.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<title>Employee View</title>
<style>

<!--To difine style of different element -->

body {
	margin: 0;
}

.header {
	background-color: #9cdef0;
	padding: 20px;
	text-align: center;
}

input[type=text], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=password], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
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
		<p><h1>Expense Reimbursement System (ERS)</h1></p>
	</div>
		<div class="sidebar">
			<h2>EMPLOYEE DASHBOARD</h2>
			<ul>
			<!--Links to different pages based on employee choice -->
			
				<li><a href="employeeview.jsp">My Profile</a></li>
				<li><a href="register.jsp">New Reimbursement Request</a></li>
				<li><a href="employeeviewreimbusementstatus.jsp">View Reimbursement Request Status</a></li>
			</ul>
		</div>
<!--To -->
	<%@page import="com.model.EmployeeDao"%>
	<jsp:useBean id="obj" class="com.pojo.Employee" />

	<jsp:setProperty property="*" name="obj" />
	
<br><br><br><br><br><br>
<div class="center">
<h2>WELCOME TO EMPLOYEE HOMEPAGE!</h2>
<a href="home.jsp" class="button">LOG-OUT</a>
</div>

	<div class="footer">
		<p>@2020. All Rights reserved by Expense Reimbursement System (ERS)</p>
	</div>
</body>
</html>