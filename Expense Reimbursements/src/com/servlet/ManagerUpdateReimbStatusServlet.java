package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.EmployeeDao;
import com.pojo.Employee;

/**
 * Servlet implementation class ManagerUpdateReimbStatusServlet
 */
@WebServlet("/ManagerUpdateReimbStatusServlet")
public class ManagerUpdateReimbStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManagerUpdateReimbStatusServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		//To get request information
		String emp_status = request.getParameter("emp_status");


		Employee s = new Employee();
		s.setEmp_status(emp_status);
		
		//To update Database using EmployeeDao method
		int status = EmployeeDao.UpdateEmpStatus(s);
		if (status > 0) {
			out.print("Record saved successfully!");
			request.getRequestDispatcher("manager.jsp").include(request, response);
		} else {
			out.println("Sorry! unable to save record");
			request.getRequestDispatcher("managerudatereimbursementstatus.jsp").include(request, response);
		}
	}

}
