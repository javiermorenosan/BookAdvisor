package es.upm.dit.isst.bookAdvisor.dao;

import java.util.List;

import es.upm.dit.isst.bookAdvisor.model.Editorial;

public interface EditorialDAO {

	public Editorial create(String nombre, String email, String contrasena);
	public List<Editorial> read();
	public List<Editorial> readNombre(String nombre);
	public Editorial readEmail(String email);
	public Editorial update(Editorial editorial);
	public Editorial delete(Editorial editorial);
	public void deleteAll();
}