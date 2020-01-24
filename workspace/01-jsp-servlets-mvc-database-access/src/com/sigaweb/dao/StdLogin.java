package com.sigaweb.dao;

import java.util.List;

import com.sigaweb.entity.Curriculum;

public interface StdLogin {
	
	List<Curriculum> get();
	
	Curriculum get(int id);
	
	boolean save(Curriculum c);
	
	boolean delete(int id);
	
	boolean update(Curriculum c);
}
