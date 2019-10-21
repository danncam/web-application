package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.*;
import com.dao.*;

/**
 * Servlet implementation class EmployeeController
 */
@WebServlet("/EmployeeController")
public class EmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// create ref variables for DAO
	EmployeeDao employeDao = null;
	
	// create constructor
	public EmployeeController() {
		employeDao = new EmployeeDaoImpl();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// call dao method to get the list
		List<Employee> list = employeDao.get();
		
		// add employees to request object
		request.setAttribute("list", list);
		
		// get request dispatcher
		RequestDispatcher rdisp = request.getRequestDispatcher("/views/employee-list.jsp");
		
		// forward request dispatcher
		rdisp.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}