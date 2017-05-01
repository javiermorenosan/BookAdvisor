package es.upm.dit.isst.bookAdvisor.dao;

import java.util.List;

import es.upm.dit.isst.bookAdvisor.model.Autor;

public interface AutorDAO {
	
	public Autor create(String nombre);
	public List<Autor> read();
	public List<Autor> readNombre(String nombre);
	public Autor update(Autor autor);
	public Autor delete(Autor autor);
	public void deleteAll();
}
