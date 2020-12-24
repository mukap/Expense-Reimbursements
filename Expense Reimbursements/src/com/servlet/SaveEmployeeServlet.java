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
 * Servlet implementation class SaveStud
 */
@WebServlet("/SaveEmployeeServlet")
public class SaveEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SaveEmployeeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
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
		String amount = request.getParameter("amount");
		String message = request.getParameter("message");


		Employee s = new Employee();
		s.setEmp_amount(amount);
		s.setEmp_type(message);
		
		//To update Database using EmployeeDao method
		int status = EmployeeDao.UpdateEmpReimbRequest(s);
		if (status > 0) {
			out.print("Record saved successfully!");
			request.getRequestDispatcher("employeehomepage.jsp").include(request, response);
		} else {
			out.println("Sorry! unable to save record");
			request.getRequestDispatcher("register.jsp").include(request, response);
		}

	}

}
