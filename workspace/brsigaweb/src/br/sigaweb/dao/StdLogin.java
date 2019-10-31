package br.sigaweb.dao;

import java.util.List;
import br.sigaweb.entity.*;

public interface StdLogin {
List<Curriculum> get();
	
Curriculum get(int id);
	
	boolean save(Curriculum p);
	
	boolean delete(int id);
	
	boolean update(Curriculum p);
}
