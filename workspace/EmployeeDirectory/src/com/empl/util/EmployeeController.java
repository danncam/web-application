package com.empl.util;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.empl.entity.Employee;
import com.empl.entity.EmployeeDAO;
import com.empl.entity.EmployeeDAOImpl;

public class EmployeeController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	// create ref variables for DAO
	EmployeeDAO employeDAO = null;
	
	// create constructor
	public EmployeeController() {
		employeDAO = new EmployeeDAOImpl();

	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// call dao method to get the list
		List<Employee> list = employeDAO.get();
		
		// add employees to request object
		req.setAttribute("list", list);
		
		// get request dispatcher
		RequestDispatcher rdisp = req.getRequestDispatcher("/views/employee-list.jsp");
		
		// forward request dispatcher
		rdisp.forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
