package br.sigaweb.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.sigaweb.util.*;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Controller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

				try {
					// get the PrintWriter object
					PrintWriter pw = response.getWriter();
					pw.println("Connecting to database");
					
					// Conexão com a BD
					Connection conn = DBHelper.openConnection();
					if(conn != null) {
						pw.println("Connection successfully");
					}
						
					
					// try to read
					
					String crdb = "create database if not exists resdirectory;";
					String usedb = "use resdirectory;";
					Statement stmt = conn.createStatement();
					ResultSet rset = null;
					int upd;
					boolean exe;
					upd = stmt.executeUpdate(crdb);
					exe = stmt.execute(usedb);
					
					pw.println(upd);
					pw.println(exe);
					
					// close the connection
					conn.close();
					
				} catch (Exception e) {
					e.printStackTrace();
				}
	}

}
