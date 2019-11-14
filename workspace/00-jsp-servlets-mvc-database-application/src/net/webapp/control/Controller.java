package net.webapp.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException;

import net.webapp.util.DBConnector;

/**
 * Servlet implementation class Controller
 */
@WebServlet({"/Controller"})
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Controller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		getDataBaseConnection(request, response);
    	
    	
    	//request.getRequestDispatcher("/home.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	
	protected void getDataBaseConnection(HttpServletRequest request, HttpServletResponse response) throws IOException {
		try {
			DBConnector.openConnection();
			response.getWriter().append("Establishing a Database Connection at: ").append(request.getContextPath()).println();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
			response.getWriter().append("Executing method does not have access to the definition of the specified class, field, method or constructor").println();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			response.getWriter().append("Error while connecting to MySQL database from Java Program: jdbc.Driver not found").println();
		} catch (InstantiationException e) {
			e.printStackTrace();
			response.getWriter().append("The specified class object cannot be instantiated").println();
		} catch (SQLException e) {
			e.printStackTrace();
			response.getWriter().append("Access denied for user : ").append(DBConnector.getUserName()).append("@localhost").println();
		}
		
		try {
			if(DBConnector.isConnected()) {
				DBConnector.useDB();
				response.getWriter().append("Connected at : ").append(DBConnector.getDataBaseName()).println();
			} else {
	    		DBConnector.newDataBase();
	    		response.getWriter().append("DataBase created successfully : ").append(DBConnector.getDataBaseName()).println();
	    		DBConnector.useDB();
	    		response.getWriter().append("Connected at : ").append(DBConnector.getDataBaseName()).println();
			}
			
		} catch (MySQLSyntaxErrorException e) {
				e.printStackTrace();
    	} 
				
	}

}
