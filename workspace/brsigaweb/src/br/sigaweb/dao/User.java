package br.sigaweb.dao;

import java.util.List;

import br.sigaweb.entity.Curriculum;

public class User implements StdLogin{

	@Override
	public List<Curriculum> get() {
		return null;
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
