package br.sigaweb.dao;

import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import br.sigaweb.entity.Curriculum;
import br.sigaweb.util.DBHelper;

public class User extends StdLogin{
		
	private Connection connection = null;
	private ResultSet resultSet = null;
	private Statement statement = null;
	private PreparedStatement preparedStatement = null;
	
	public List<StdLogin> get() {
		List<User> list = null;
		User usrlogin = null;
		
		try {
			
			list = new ArrayList<User>();
			String sql = "SELECT * FROM tbl_usr";
			connection = DBHelper.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				usrlogin = new User();
				usrlogin.setUid(resultSet.getInt("UID"));
				usrlogin.setEmailid(resultSet.getString("EMAILID"));
				usrlogin.setDepartment(resultSet.getString("department"));
				usrlogin.setDob(resultSet.getString("dob"));
				list.add(usrlogin);
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
		return null;
	}

	@Override
	public boolean save(Curriculum c) {
		return false;
	}

	@Override
	public boolean delete(int id) {
		return false;
	}

	@Override
	public boolean update(Curriculum c) {
		return false;
	}

}
