package com.testapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBHelper {
	
	//Definir as propriedades da base de dados
	private static final String URL = "jdbc:mysql://localhost:3306/";
	private static final String DBNAME = "resdirectory";
	private static final String TIMEZONE = "?useTimezone=true&serverTimezone=UTC";
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "1234";
	
	private static Connection connection = null;
	
	//Conexão com a base de dados
	public static Connection openConnection() {
		if (connection != null)
            return connection;
        else {
            try {
                Class.forName(DRIVER);
                connection = DriverManager.getConnection(URL + DBNAME + TIMEZONE, USERNAME, PASSWORD);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            } 
            return connection;
        }
	}
}
