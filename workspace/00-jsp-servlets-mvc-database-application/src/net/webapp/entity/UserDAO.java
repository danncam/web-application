package net.webapp.entity;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Statement;
import net.webapp.util.ConnectionManager;
import static net.webapp.util.Provider.*;

public class UserDAO 	
{
   static Connection currentCon = null;
   static ResultSet rs = null;  
	
   public static StdLogin login(StdLogin bean) {
	
      //preparando objetos para a conexão
      Statement stmt = null;    
	
      String username = bean.getUsername();
      String password = bean.getPassword();
	    
      String searchQuery =
            "select * from USERS where USRNAME='"
                     + username
                     + "' AND PSWD='"
                     + password
                     + "'";

   // "System.out.println" prints in the console; Normally used to trace the process
   //System.out.println("Your user name is " + username);          
   //System.out.println("Your password is " + password);
   //System.out.println("Query: "+searchQuery);
	    
	try {
		//conectando a BD 
		currentCon = ConnectionManager.getConnection();
		stmt = currentCon.createStatement();
		rs = stmt.executeQuery(searchQuery);	        
		boolean more = rs.next();
	       
		// se o usuário não existe, flag more muda para falso
			if (!more) {
				System.out.println("Sorry, you are not a registered user! Please sign up first");
				bean.setValid(false);
			} else {
				int uid = rs.getInt("UID");
				searchQuery =
			            "select * from REGISTER where UID = " + uid + ";";
				rs = stmt.executeQuery(searchQuery);
				
				String firstName = rs.getString("NAME");
		     	
				System.out.println("Welcome " + firstName);
				bean.setFirstName(firstName);
				bean.setValid(true);
			}
	
		} catch (NullPointerException ex) {
			newDataBase();
			currentCon = ConnectionManager.getConnection();
			
		} catch (SQLException ex) {
			System.out.println("Log In failed: An Exception has occurred! " + ex);
		} 
	    
   //some exception handling
   finally {
      if (rs != null)	{
         try {
            rs.close();
         } catch (Exception e) {}
            rs = null;
         }
	
      if (stmt != null) {
         try {
            stmt.close();
         } catch (Exception e) {}
            stmt = null;
         }
	
      if (currentCon != null) {
         try {
            currentCon.close();
         } catch (Exception e) {
         }

         currentCon = null;
      }
   }

   return bean;
	
   }	
   
   public static StdLogin newUser(StdLogin bean) {
	 //preparando objetos para a conexão
	      Statement stmt = null;    
		
	      String username = bean.getUsername();
	      String password = bean.getPassword();
		  
	      String searchQuery = "select * from USERS where USRNAME = " + username;
	      try {
	    	  	currentCon = ConnectionManager.getConnection();
	  			stmt = currentCon.createStatement();
	  			rs = stmt.executeQuery(searchQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	      String updateDB;
	   
	   return bean;
   }
   
   public static void newDataBase() {
	   	Statement stmt;
		try {
			stmt = currentCon.createStatement();
			stmt.execute("create database if not exists " + DBNAME + ";");
			stmt.executeUpdate("create table USERS "
					+ "(UID INTEGER NOT NULL PRIMARY KEY AUTO INCREMENT, "
					+  "USRNAME VARCHAR(20) NOT NULL, "
					+  "PSWD VARCHAR(10) NOT NULL);");
			stmt.executeUpdate("create table REGISTER "
					+ "(ID INTEGER NOT NULL PRIMARY KEY, "
					+  "NAME VARCHAR(120),"
					+  "DOCID VARCHAR(11),"
					+  "TEL VARCHAR(11),"
					+  "BIRTHDATE DATE,"
					+  "GENRE CHAR(1),"
					+  "ADDRESS VARCHAR(200),"
					+  "ZIPCODE VARCHAR(11),"
					+  "CITY VARCHAR(80),"
					+  "FOREIGN KEY (ID) REFERENCES USERS(UID),"
					+  "CONSTRAINT CHK_GENRE CHECK(GENRE = 'F' OR GENRE = 'M'));");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("Base de Dados criada");
	}
}
