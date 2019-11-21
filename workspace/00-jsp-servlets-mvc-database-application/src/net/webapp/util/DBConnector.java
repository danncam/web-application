package net.webapp.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException;

public class DBConnector {
	
	//Define the database properties
	
	private static Properties properties = new Properties();

	private static final String URL = "jdbc:mysql://localhost:3306/";
	private static final String DATABASENAME = "testdir";
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "1234";
	
	private static Connection connection = null;
	private static Statement statement = null;
	private static ResultSet resultSet = null;
	
	public static void openConnection() throws SQLException, IllegalAccessException, ClassNotFoundException, InstantiationException {
		properties.setProperty("user", USERNAME);
		properties.setProperty("password", PASSWORD);
		properties.setProperty("useSSL", "false");
		properties.setProperty("useTimezone", "true");
		properties.setProperty("serverTimezone", "UTC");
		properties.setProperty("autoReconnect", "true");
		
		Class.forName(DRIVER).newInstance();
        connection = DriverManager.getConnection(URL, properties);
	}
	
	public static void newDataBase() {
		createStatement();
    	execute("create database if not exists " + DBConnector.getDataBaseName() + ";");
	}
	
	public static void useDB() throws MySQLSyntaxErrorException{
		createStatement();
		execute("use " +DBConnector.getDataBaseName() + ";");
	}
	
	public static void dropData() {
		createStatement();
		executeUpdate("drop database " + getDataBaseName());
		close();
	}
	
	public static void createStatement() {
		try {
			statement = connection.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static ResultSet executeQuery(String sql) {
		try {
			resultSet = statement.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultSet;
	}
	
	public static int executeUpdate(String sql) {
		int output = -1;
		try {
			output = statement.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return output;
	}
	
	public static boolean execute(String sql) {
		boolean output = false;
		try {
			output = statement.execute(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return output;
	}
	
	public static void close() {
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static String getDataBaseName() {
		return DATABASENAME;
	}
	
	public static String getUserName() {
		return USERNAME;
	}
	
	public static boolean isConnected() throws SQLException {
		return connection != null && !connection.isClosed() && connection.getMetaData().getURL().contains(DATABASENAME);
	}
}
