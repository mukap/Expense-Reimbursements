package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/**
 * Manager class that has a method that access manager table
 * @author Pascaline Mukakamari
 *
 */

public class ManagerDao {
	
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
	 * Method that checks login credentials of a Manager
	 * @param name is manager user name
	 * @param password is manager password.
	 * @return
	 */
	
	public static boolean checkLogin(String name, String password) {
		boolean status = false;
		try {

			Connection con = EmployeeDao.getConection();
			PreparedStatement ps = (PreparedStatement) con
					.prepareStatement(" SELECT * FROM manager where mng_name=? and mng_pass=?");
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
