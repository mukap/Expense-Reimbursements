package com.servlet;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.EmployeeDao;
import com.pojo.Employee;

/**
 * Servlet implementation class EditServlet
 */
@WebServlet("/EditEmployeeServlet")
public class EditEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditEmployeeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		//To get request information
		String sid=request.getParameter("id");  
        int id=Integer.parseInt(sid);  
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		//To set employee information
		Employee s = new Employee();
		s.setEmp_id(id);
		s.setEmp_name(name);
		s.setEmp_pass(password);
		s.setEmp_email(email);
		s.setEmp_mob(phone);
		//To call employe Dao
		int status = EmployeeDao.UpdateEmp(s);
		if (status > 0) {
			out.print("Record saved successfully!");
			request.getRequestDispatcher("employeehomepage.jsp").include(request, response);
		} else {
			out.println("Sorry! unable to save record");
			request.getRequestDispatcher("employeehomepage.jsp").include(request, response);
		}
	}

}
