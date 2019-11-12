package com.testapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConnectionServlet
 */
@WebServlet("/ConnectionServlet")
public class ConnectionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	RequestDispatcher rdis;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// define fields
		String username = "root";
		String password = "1234";
		String jdbcDriver = "jdbc:mysql://localhost:3306/employeedirectory";
		String timezone = "?useTimezone=true&serverTimezone=UTC";
		String driver = "com.mysql.cj.jdbc.Driver";
		
		
		try {
			// get the PrintWriter object
			PrintWriter pw = response.getWriter();
			pw.println("Connecting to database: "+jdbcDriver);
			
			// load on driver
			Class.forName(driver);
			
			// get the connection
			Connection conn = DriverManager.getConnection(jdbcDriver+timezone, username, password);
			pw.println("Connection successfully");
			
			// try to read
			
			String sql = "SELECT * FROM tbl_employee;";
			Statement stmt = conn.createStatement();
			ResultSet rset = stmt.executeQuery("use employeedirectory;");
			stmt.executeQuery(sql);
			
			// close the connection
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//rdis = request.getRequestDispatcher("/index.jsp");
		
		//rdis.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}
}
