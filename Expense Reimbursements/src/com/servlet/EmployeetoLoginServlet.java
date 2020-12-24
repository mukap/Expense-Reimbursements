package com.servlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.EmployeeDao;


/**
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/EmployeetoLoginServlet")
public class EmployeetoLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeetoLoginServlet() {
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

		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		PrintWriter out=response.getWriter();
		if(EmployeeDao.checkLogin(name, password))
		{
		
			Cookie ck=new Cookie("name","password");
			ck.setMaxAge(0);
			response.addCookie(ck);
			
			RequestDispatcher rd=request.getRequestDispatcher("employeehomepage.jsp");
			rd.forward(request, response);
		}
	
		else
		{
			RequestDispatcher rd1=request.getRequestDispatcher("employeelogin.jsp");
			out.print("Sorry");
			rd1.forward(request, response);
			
		}
		
				
	}

}
