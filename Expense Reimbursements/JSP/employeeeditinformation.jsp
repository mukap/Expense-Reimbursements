<%@page import="com.pojo.Employee"%>
<%@page import="com.model.EmployeeDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
</div>
</head>
<body>
	<%
		//String id = request.getParameter("id");
		//Employee d = EmployeeDao.getEmpById(Integer.parseInt(id));
		Employee d = EmployeeDao.getEmpById(1);
		
		
	%>
<center>

	<br><br>
	<form action="EditEmployeeServlet" method="post">
	
		<input type="hidden" name="id" value="<%=d.getEmp_id()%>" />
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" value="<%= d.getEmp_name() %>" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="text" name="password" value="<%= d.getEmp_pass() %>" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="text" name="email" value="<%= d.getEmp_email() %>" /></td>
			</tr>
			
			<tr>
				<td>Phone:</td>
				<td><input type="text" name="phone" value="<%= d.getEmp_mob() %>" /></td>
			</tr>
			
			
			<tr>
				<td ><input class="button" type="submit" value="Update"></td>
				<td><a href="employeehomepage.jsp" class="button">BACK</a></td>
			</tr>
		</table>
	</form>
</div>
	<div class="footer">
  <p>@2020. All Rights reserved by Reimbursement System (ERS)</p>
    </center>
</body>
</html>