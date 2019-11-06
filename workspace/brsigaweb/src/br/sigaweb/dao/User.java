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
	
	public boolean save(Curriculum c) {
		return false;
	}


	public boolean delete(int id) {
		return false;
	}

	public boolean update(Curriculum c) {
		return false;
	}

}
