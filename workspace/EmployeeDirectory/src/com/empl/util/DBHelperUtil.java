package com.empl.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBHelperUtil {

	private static final String URL = "jdbc:mysql://localhost:9093/employeeddirectory";
	private static final String DRIVER = "com.mysql.jdbc.DRIVER";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "";
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
				connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return connection;
		}	
	}
}
