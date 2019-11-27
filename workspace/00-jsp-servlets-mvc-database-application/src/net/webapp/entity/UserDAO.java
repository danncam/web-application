package net.webapp.entity;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Statement;
import net.webapp.util.ConnectionManager;
import static net.webapp.util.Provider.*;

public class UserDAO {
	
   static Connection currentCon = null;
   static ResultSet rs = null;  
   static Statement stmt = null; 
   static int outputUpdate;
	
   public static StdLogin login(StdLogin bean) {

      String username = bean.getUsername();
      String password = bean.getPassword();
	    
      String searchQuery =
            "select * from USERS where USRNAME='"
                     + username
                     + "' AND PSWD='"
                     + password
                     + "'";

      try {
    	  currentCon = ConnectionManager.getConnection();
    	  stmt = currentCon.createStatement();
    	  rs = stmt.executeQuery(searchQuery);	        
    	  boolean more = rs.next();
	       
    	  if (!more) {
    		  System.out.println("Sorry, you are not a registered user! Please sign up first");
    		  bean.setValid(false);
    	  } else {
    		  int uid = rs.getInt("UID");
    		  searchQuery =
			            "select * from REGISTER where UID = " + uid + ";";
    		  rs = stmt.executeQuery(searchQuery);
				
    		  String firstName = rs.getString("NAME");
		     	
    		  bean.setValid(true);
    	  }
	
      } catch (NullPointerException ex) {
    	  newDataBase();
    	  currentCon = ConnectionManager.getConnection();
			
      } catch (SQLException ex) {
    	  System.out.println("Log In failed: An Exception has occurred! " + ex);
			
      } finally {
    	  exceptionHandling();
      }

   return bean;
	
   }	
   
   public static User newUser(StdLogin bean) {

	   User usr = null;
	   Statement stmt = null; 
	   
	   String username = bean.getUsername();
	   String searchQuery = "select USRNAME from USERS where USRNAME = \"" + username +"\"";
	   try {
		   
		   currentCon = ConnectionManager.getConnection();
		   stmt = currentCon.createStatement();
		   rs = stmt.executeQuery(searchQuery);
		   
		   if(!rs.next()) {
			   
			   String password = bean.getPassword();
			   String insertValues = "insert into USERS values ("
			   		+ "0,"
					+ "\"" + username + "\","
					+ "\"" + password + "\");";
			   // Inserir na tabela USERS
			   outputUpdate = stmt.executeUpdate(insertValues);
			   
			   // Inicializar objeto Registro
			   usr = new User(bean);
			   
			   
		   } else {
			   System.out.println("Já existe usuário registrado como " + bean.getUsername());
		   }
	   } catch (SQLException e) {
		   System.out.println(outputUpdate);
		   e.printStackTrace();
	   } finally {
		   exceptionHandling();
	   }

	   return usr;
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
   
   protected static void exceptionHandling() {
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
				currentCon = null;
			}
		}
   }
}
