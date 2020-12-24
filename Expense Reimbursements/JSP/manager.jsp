<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>MANAGER</title>
<style>
body {
  margin: 0;
}

/* Style the header */
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
			<h2>MANAGER DASHBOARD</h2>
			<ul>
				<li><a href="managergetallemployee.jsp">View All Employees</a></li>
				<li><a href="managerudatereimbursementstatus.jsp">Change Reimbursement Status</a></li>
				<li><a href="managergetpendingreimbursment.jsp">View Pending Request(s)</a></li>
			</ul>
		</div>

	<%@page import="com.model.EmployeeDao"%>
	<jsp:useBean id="obj" class="com.pojo.Employee" />

	<jsp:setProperty property="*" name="obj" />

<br><br><br><br><br><br>

<div class="center">
<h2>WELCOME TO MANAGER HOMEPAGE!</h2>
<a href="home.jsp" class="button">LOG-OUT</a>
</div>


<div class="footer">
  <p>@2020. All Rights reserved by Reimbursement System (ERS)</p>
    </div>
</body>
</html>