package es.upm.dit.isst.bookAdvisor.dao;


import java.util.List;

import es.upm.dit.isst.bookAdvisor.model.Biblioteca;

public interface BibliotecaDAO {

		public Biblioteca create(String nombre, String localizacion, String url, String email, String descripcion, String contrasena, String imagen);
		public Biblioteca readNombre(String nombre);
		public List<Biblioteca> read();
		public List<Biblioteca> readLocalizacion(String localizacion);
		public List<Biblioteca> readUrl(String url);
		public Biblioteca readEmail(String email);
		public List<Biblioteca> readDescripcion(String descripcion);
		public Biblioteca update(Biblioteca biblioteca);
		public Biblioteca delete(Biblioteca biblioteca);
		public void deleteAll();
}
