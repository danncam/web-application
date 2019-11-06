package br.sigaweb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import br.sigaweb.entity.*;
import br.sigaweb.util.*;

public class StdLogin {
	
	private int uid;
	private String emailid;
	private String pwd;
	
	private Connection connection = null;
	private ResultSet resultSet = null;
	private Statement statement = null;
	private PreparedStatement preparedStatement = null;
	
	/*
	abstract List<StdLogin> get() ;
	
	abstract Curriculum get(int id);
		
	abstract boolean save(Curriculum p);
		
	abstract boolean delete(int id);
		
	abstract boolean update(Curriculum p);
	*/
	
	public List<StdLogin> getLoginList() {
		List<StdLogin> list = null;
		StdLogin stdusr = null;
		try {
			
			list = new ArrayList<StdLogin>();
			String sql = "SELECT * FROM tbl_usr";
			connection = DBHelper.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				stdusr = new StdLogin();
				stdusr.setUser_ID(resultSet.getInt("UID"));
				stdusr.setEmail_ID(resultSet.getString("EMAILID"));
				stdusr.setPassword(resultSet.getString("PWDLOGIN"));
				list.add(stdusr);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(NullPointerException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int getUser_ID() {
		return uid;
	}
	
	public void setUser_ID(int id) {
		this.uid = id;
	}
	
	public String getEmail_ID() {
		return emailid;
	}
	
	public void setEmail_ID(String email) {
		this.emailid = email;
	}
	
	public String getPassword() {
		return pwd;
	}
	
	public void setPassword(String password) {
		this.pwd = password;
	}

}