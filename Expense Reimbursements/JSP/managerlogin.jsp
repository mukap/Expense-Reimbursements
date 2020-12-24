<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager Login</title>
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

<div class="header">
  <p>Expense Reimbursement System (ERS)</p>
</div>


	<br />
	<div class="center">
	<h3>MANAGER LOGIN</h3>
	<form action="ManagerLoginServlet" method="post">
		<input type="text" name="name" placeholder="MANAGER NAME" /><br />
		<br /><input type="password" name="password" placeholder="PASSWORD"/><br />
		<br /> <input class="button" type="submit" value="login" />
	</form>
	</div>
<div class="footer">
  <p>@2020. All Rights reserved by Reimbursement System (ERS)</p>
    </div>
</html>