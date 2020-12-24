<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Login</title>
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
  <p>Expense Reimbursement System (ERS)</p>
    <a class="button" href="home.jsp">HOME</a>
</div>
	<div class="center">
	<br/><br>
	
	<h3>EMPLOYEE LOGIN</h3>
	
	<form action="EmployeetoLoginServlet" method="post" >
		<input type="text" name="name" placeholder="EMPLOYEE NAME"/><br />
		<br />
		<input type="password" name="password" placeholder="EMPLOYEE PASSWORD"/><br />
		<br /> 
		<input class="button" type="submit" value="login" />
	</form>
	</div>
	<div class="footer">
  <p>@2020. All Rights reserved by Reimbursement System (ERS)</p>
    </div>
</body>
</html>