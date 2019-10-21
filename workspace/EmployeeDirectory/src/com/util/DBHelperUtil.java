package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBHelperUtil {

	private static final String URL = "jdbc:mysql://localhost:3306/employeedirectory";
	private static final String SPEC = "?useTimezone=true&serverTimezone=UTC";
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "1234";
	private static Connection connection = null;
	
	public static Connection openConnection() {
		
		// check the connection
		if(connection != null) {
			return connection;
		} else {
			try {
				
				// load the DRIVER
				Class.forName(DRIVER);
				
				// get the connection
				connection = DriverManager.getConnection(URL+SPEC, USERNAME, PASSWORD);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return connection;
		}	
	}
}
