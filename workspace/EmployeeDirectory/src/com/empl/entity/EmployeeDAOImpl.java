package com.empl.entity;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.empl.util.DBHelperUtil;

public class EmployeeDAOImpl implements EmployeeDAO{
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;

	@Override
	public List<Employee> get() {
		
		// create the reference variables
		List<Employee> list = null;
		Employee employee = null;
		
		try {
			list = new ArrayList<Employee>();
			
			// create a sql query
			String sql = "SELECT * FROM tbl_employee";
			
			// get the database connection
			connection = DBHelperUtil.openConnection();
			
			// create a statement
			statement = connection.createStatement();
			
			// execute the sql query
			resultSet = statement.executeQuery(sql);
			
			// proccess the resultset
			while(resultSet.next()) {
				employee = new Employee();
				employee.setId(resultSet.getInt("id"));
				employee.setName(resultSet.getString("department"));
				employee.setDob(resultSet.getString("dob"));
				
				// add object to the list
				list.add(employee);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
