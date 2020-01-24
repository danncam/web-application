package net.webapp.util;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.sql.Connection;

import static net.webapp.util.Provider.*;

public class ConnectionManager {
	private static Connection conn;
    private static Properties properties;
          
    public static Connection getConnection() {
    	
    	properties = new Properties();
    	properties.setProperty("user", USERNAME);
		properties.setProperty("password", PASSWORD);
		properties.setProperty("useSSL", "false");
		properties.setProperty("useTimezone", "true");
		properties.setProperty("serverTimezone", "UTC");
		properties.setProperty("autoReconnect", "true");
		
		try {
			Class.forName(DRIVER);
			conn = DriverManager.getConnection(CONNECTION_URL+DBNAME, properties);

       } catch (ClassNotFoundException ex) {
           System.out.println(ex);
       } catch (SQLException ex) {
    	   System.out.println(ex);
       }

    return conn;
    }
}
