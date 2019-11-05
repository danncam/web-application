package br.sigaweb.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.DatabaseMetaData;
import com.mysql.jdbc.exceptions.MySQLSyntaxErrorException;

import br.sigaweb.util.*;
import br.sigaweb.dao.*;
import br.sigaweb.entity.Curriculum;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Controller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		switch(action) {
		
		case "SEARCH":
			search(request, response);
			break;
			
		case "EDIT":
			edit(request, response);
			break;
			
		case "DELETE":
			delete(request, response);
			break;
			
		default:
			list(request, response);
			break;
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	private void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		StdLogin usrlogin = new StdLogin();
		usrlogin.setUser_ID(Integer.parseInt(request.getParameter("UID")));
		usrlogin.setEmail_ID(request.getParameter("EMAILID"));
		
		PrintWriter pw = response.getWriter();
		List<Curriculum> usrl = User.get();
		pw.println(usrl.toString());
		
		request.setAttribute("list", theList);
		
		dispatcher = request.getRequestDispatcher("/views/employee-list.jsp");
		
		dispatcher.forward(request, response);
	}
	
	private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
	private void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}


/*

// get the PrintWriter object
PrintWriter pw = response.getWriter();
pw.println("Connecting to database");

// creating statements
Statement stmt = null;
ResultSet rset = null;
Connection conn = null;
DatabaseMetaData dbinfo = null;

try {
	
	// Conexão com a BD
	conn = DBHelper.openConnection();
	dbinfo = conn.getMetaData();
	if(conn != null) {
		pw.println("Connection successfully");
	}
		
	// try to read
	String crdb = "create database if not exists resdirectory;";
	String usedb = "use resdirectory;";
	String crtbuser = "create table tb_usr (UID INT NOT NULL AUTO_INCREMENT, EMAILID VARCHAR(45) NOT NULL, PWDLOGIN VARCHAR(25) NOT NULL, DATELOG DATE NOT NULL, PRIMARY KEY(UID));";
	String crtbcur = "create table tb_cur (ID INT NOT NULL AUTO_INCREMENT, NAME VARCHAR(75) NOT NULL, DOC INT NOT NULL, BIRTHDAY DATE NOT NULL, GENRE CHAR(1), COUNTRYID INT, FKUID INT NOT NULL, PRIMARY KEY(ID), FOREIGN KEY(FKUID) REFERENCES tb_usr(UID));";
	stmt = conn.createStatement();
	
	pw.println(stmt.executeUpdate(crdb));
	pw.println(stmt.execute(usedb));
	
	String   catalog          = null;
	String   schemaPattern    = null;
	String   tableNamePattern = null;
	String[] types            = null;

	ResultSet result = dbinfo.getTables(
	    catalog, schemaPattern, tableNamePattern, types );

	while(result.next()) {  
            if(result.getString(3).equals("tb_usr")) {
            	pw.println(stmt.executeUpdate(crtbuser)); System.out.println("table user created");}
            else if(result.getString(3).equals("tb_cur")) {
            	pw.println(stmt.executeUpdate(crtbcur)); System.out.println("table curriculum created");}
    }

	conn.close();
	
} catch (MySQLSyntaxErrorException e) {
	e.printStackTrace();
} catch (Exception e) {
	e.printStackTrace();
}*/