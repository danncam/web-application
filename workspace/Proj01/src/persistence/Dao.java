
package persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Dao {
	Connection con;
	PreparedStatement stnt;
	ResultSet rs;
	
	private final String URL = "jdbc:mysql://localhost:3306/cadcliente";
	private final String USER = "root";
	private final String PASS = "1234";
	
	protected void open() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(this.URL, this.USER, this.PASS);
		
	}
	
	
	protected void close() throws Exception{
		con.close();
		
	}
}