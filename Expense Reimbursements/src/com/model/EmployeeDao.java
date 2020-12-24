package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.pojo.Employee;

/**
 * Employee class that has all methods that access employee table
 * @author Pascaline Mukakamari
 *
 */

public class EmployeeDao {
/**
* Method that connects to database 
* @return the connection
*/
	public static Connection getConection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("url", "username", "password");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
/**
 * Method that save an employee amount and type
 * @param e employee object
 * @return an integer as result
 */
	public static int saveEmployee(Employee e) {

		int status = 0;
		try {
			Connection con = EmployeeDao.getConection();
			PreparedStatement ps = con.prepareStatement("insert into employee(emp_amount,emp_type) values (?,?)");

			ps.setString(1, e.getEmp_amount());
			ps.setString(2, e.getEmp_type());
			
			status = ps.executeUpdate();

			con.close();
		} catch (Exception e1) {
			System.out.println(e1);
		}
		return status;
	}
/**
 * Method that get all employee 
 * @return a list of employee
 */
	public static List<Employee> getAllEmp() {

		List<Employee> list = new ArrayList<Employee>();

		try {
			Connection con = EmployeeDao.getConection();
			PreparedStatement ps = con.prepareStatement("select emp_id,emp_name,emp_email,emp_mob,emp_amount,emp_type,emp_status from employee");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Employee s = new Employee();
				s.setEmp_id(rs.getInt(1));
				s.setEmp_name(rs.getString(2));
				//s.setEmp_pass(rs.getString(3));
				s.setEmp_email(rs.getString(3));
				s.setEmp_mob(rs.getString(4));
				s.setEmp_amount(rs.getString(5));
				s.setEmp_type(rs.getString(6));
				s.setEmp_status(rs.getString(7));

				list.add(s);
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
/**
 * Method that gets employee information	
 * @return a list of employee
 */
	public static List<Employee> getAllEmpPlofileInfo() {

		List<Employee> list = new ArrayList<Employee>();

		try {
			Connection con = EmployeeDao.getConection();
			PreparedStatement ps = con.prepareStatement("select * from employee where emp_id=? ");
			ps.setInt(1, 1);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Employee s = new Employee();
				s.setEmp_id(rs.getInt(1));
				s.setEmp_name(rs.getString(2));
				s.setEmp_pass(rs.getString(3));
				s.setEmp_email(rs.getString(4));
				s.setEmp_mob(rs.getString(5));
				s.setEmp_amount(rs.getString(6));
				s.setEmp_type(rs.getString(7));
				s.setEmp_status(rs.getString(8));
				
				list.add(s);

			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
/**
 * Method that gets employee by id
 * @param id the employee's id
 * @return employee object
 */
	public static Employee getEmpById(int id) {
		Employee s = new Employee();
		try {

			Connection con = EmployeeDao.getConection();
			PreparedStatement ps = con.prepareStatement("select * from employee where emp_id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				s.setEmp_id(rs.getInt(1));
				s.setEmp_name(rs.getString(2));
				s.setEmp_pass(rs.getString(3));
				s.setEmp_email(rs.getString(4));
				s.setEmp_mob(rs.getString(5));
				s.setEmp_amount(rs.getString(6));
				s.setEmp_type(rs.getString(7));
				s.setEmp_status(rs.getString(8));
			}
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}
/**
 * Method that gets employee(s) by status	
 * @return a list of employee
 */
	public static List<Employee> getEmpByStatus() {
		
		List<Employee> list = new ArrayList<Employee>();

		try {
			Connection con = EmployeeDao.getConection();
			PreparedStatement ps = con.prepareStatement("select emp_id,emp_name,emp_amount,emp_type,emp_status from employee where emp_status=?");
			ps.setString(1, "pending");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Employee s = new Employee();
				s.setEmp_id(rs.getInt(1));
				s.setEmp_name(rs.getString(2));
				s.setEmp_amount(rs.getString(3));
				s.setEmp_type(rs.getString(4));
				s.setEmp_status(rs.getString(5));

				list.add(s);
			}
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	
	}
/**
 * Method that gets employee by user name and password	
 * @param name the user name of employee
 * @param password the password of employee
 * @return
 */
	public static Employee getEmp(String name, String password) {

		//List<Employee> list = new ArrayList<Employee>();
		Employee s = new Employee();
		try {
			Connection con = EmployeeDao.getConection();
			PreparedStatement ps = (PreparedStatement) con
					.prepareStatement("select * from employee where emp_name=? and emp_pass=?");
			ps.setString(1, name);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				s.setEmp_id(rs.getInt(1));
				s.setEmp_name(rs.getString(2));
				s.setEmp_pass(rs.getString(3));
				s.setEmp_email(rs.getString(4));
				s.setEmp_mob(rs.getString(5));
				s.setEmp_amount(rs.getString(6));
				s.setEmp_type(rs.getString(7));
				s.setEmp_status(rs.getString(8));
			}
			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return s;

	}
/**
 * Method that update employee
 * @param s the employee object
 * @return an integer 
 */
	public static int UpdateEmp(Employee s) {

		int status = 0;
		try {
			Connection con = EmployeeDao.getConection();
			PreparedStatement ps = con.prepareStatement("update employee set emp_name=?,emp_pass=?,emp_email=?,emp_mob=? where emp_id=?");
			ps.setString(1, s.getEmp_name());
			ps.setString(2, s.getEmp_pass());
			ps.setString(3, s.getEmp_email());
			ps.setString(4, s.getEmp_mob());
			ps.setInt(5, s.getEmp_id());

			status = ps.executeUpdate();

			con.close();
		} catch (Exception e) {

			e.printStackTrace();
		}
		return status;
	}
/**
 * Method that update employee status 
 * @param s employee object
 * @return an integer 
 */
	public static int UpdateEmpStatus(Employee s) {

		int status = 0;
		try {
			Connection con = EmployeeDao.getConection();
			PreparedStatement ps = con.prepareStatement("update employee set emp_status=?");
			ps.setString(1, s.getEmp_status());

			status = ps.executeUpdate();

			con.close();
		} catch (Exception e) {

			e.printStackTrace();
		}
		return status;
	}
/**
 * Method that updates employee reimbursement
 * @param s an employee object
 * @return an integer
 */
	public static int UpdateEmpReimbRequest(Employee s) {

		int status = 0;
		try {
			Connection con = EmployeeDao.getConection();
			PreparedStatement ps = con.prepareStatement("update employee set emp_amount=?,emp_type=? where emp_id=1");
			ps.setString(1, s.getEmp_amount());
		    ps.setString(2, s.getEmp_type());

			status = ps.executeUpdate();

			con.close();
		} catch (Exception e) {

			e.printStackTrace();
		}
		return status;
	}

/**
 * Method that checks login credentials an employee
 * @param name is employee user name
 * @param password is employee password.
 * @return
 */
	public static boolean checkLogin(String name, String password) {
		boolean status = false;
		try {

			Connection con = EmployeeDao.getConection();
			PreparedStatement ps = (PreparedStatement) con
					.prepareStatement(" SELECT * FROM employee where emp_name=? and emp_pass=?");
			ps.setString(1, name);
			ps.setString(2, password);
			ResultSet rs = (ResultSet) ps.executeQuery();
			status = rs.next();

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return status;

	}


}
