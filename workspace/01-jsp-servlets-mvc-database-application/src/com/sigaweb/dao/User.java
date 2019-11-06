package com.sigaweb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.sigaweb.entity.Curriculum;
import com.sigaweb.util.DBHelper;

public class User implements StdLogin {
	
	Connection connection = null;
	ResultSet resultSet = null;
	Statement statement = null;
	PreparedStatement preparedStatement = null;
	
	@Override
	public List<Curriculum> get() {
		
		List<Curriculum> list = null;
		Curriculum employee = null;
		
		try {
			
			list = new ArrayList<Curriculum>();
			String sql = "SELECT * FROM tbl_employee";
			connection = DBHelper.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				employee = new Curriculum();
				employee.setId(resultSet.getInt("id"));
				employee.setName(resultSet.getString("name"));
				employee.setDepartment(resultSet.getString("department"));
				employee.setDob(resultSet.getString("dob"));
				list.add(employee);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}catch(NullPointerException e) {
			
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Curriculum get(int id) {
		Curriculum curr = null;
		try {
			curr = new Curriculum();
			String sql = "SELECT * FROM tbl_employee where id="+id;
			connection = DBHelper.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			if(resultSet.next()) {
				curr.setId(resultSet.getInt("id"));
				curr.setName(resultSet.getString("name"));
				curr.setDepartment(resultSet.getString("department"));
				curr.setDob(resultSet.getString("dob"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return curr;
	}

	@Override
	public boolean save(Curriculum c) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO tbl_employee(name, department, dob)VALUES"
					+ "('"+c.getName()+"', '"+c.getDepartment()+"', '"+c.getDob()+"')";
			connection = DBHelper.openConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		}catch(SQLException ex) {
			ex.printStackTrace();
		}
		return flag;
	}

	@Override
	public boolean delete(int id) {
		boolean flag = false;
		try {
			String sql = "DELETE FROM tbl_employee where id="+id;
			connection = DBHelper.openConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	@Override
	public boolean update(Curriculum c) {
		boolean flag = false;
		try {
			String sql = "UPDATE tbl_employee SET name = '"+c.getName()+"', "
					+ "department = '"+c.getDepartment()+"', dob = '"+c.getDob()+"' where id="+c.getId();
			connection = DBHelper.openConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

}
