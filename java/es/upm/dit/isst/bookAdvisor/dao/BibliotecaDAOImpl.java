package es.upm.dit.isst.bookAdvisor.dao;

import java.util.List;
import static com.googlecode.objectify.ObjectifyService.ofy;
import java.util.List;
import com.googlecode.objectify.Key;
import es.upm.dit.isst.bookAdvisor.model.Biblioteca;

public class BibliotecaDAOImpl implements BibliotecaDAO{
	private static BibliotecaDAOImpl instancia;
	
	private BibliotecaDAOImpl () {
	}
	public static BibliotecaDAOImpl getInstancia() {
		if (instancia == null)
			instancia= new BibliotecaDAOImpl();
		return instancia;
	}

	@Override
	public Biblioteca create(String nombre, String localizacion, String url, String email, String descripcion, String contrasena, String imagen) {
		Biblioteca biblioteca = new Biblioteca(nombre, localizacion, url, email, descripcion, contrasena, imagen);
		ofy().save().entity(biblioteca).now();
		return biblioteca;
	}

	@Override
	public Biblioteca readNombre(String nombre) {
		if (nombre != null || nombre != "") {
			Biblioteca biblioteca = ofy().load().type(Biblioteca.class).filterKey(Key.create(Biblioteca.class, nombre)).first().now();
			return biblioteca;
		}
		return null;
	}

	@Override
	public List<Biblioteca> read() {
		List<Biblioteca> biblioteca = ofy().load().type(Biblioteca.class).list();
		return biblioteca;
	}

	@Override
	public List<Biblioteca> readLocalizacion(String localizacion) {
		if (localizacion == null || localizacion == "") {
			return null;
		}
		List<Biblioteca> bibliotecas = ofy().load().type(Biblioteca.class).filter("localizacion", localizacion).list();
		return bibliotecas;
	}

	@Override
	public List<Biblioteca> readUrl(String url) {
		if (url == null || url == "") {
			return null;
		}
		List<Biblioteca> bibliotecas = ofy().load().type(Biblioteca.class).filter("url", url).list();
		return bibliotecas;
	}

	@Override
	public Biblioteca readEmail(String email) {
		
		List<Biblioteca> bibliotecas = ofy().load().type(Biblioteca.class).filter("email", email).list();
		if(bibliotecas.size()>0){
			return bibliotecas.get(0);
		}
		else {
			return null;

		}
	}
	
	@Override
	public List<Biblioteca> readDescripcion(String descripcion) {
		if (descripcion == null || descripcion == "") {
			return null;
		}
		List<Biblioteca> bibliotecas = ofy().load().type(Biblioteca.class).filter("descripcion", descripcion).list();
		return bibliotecas;
	}

	@Override
	public Biblioteca update(Biblioteca biblioteca) {
		ofy().save().entity(biblioteca).now();
		return biblioteca;
	}

	@Override
	public Biblioteca delete(Biblioteca biblioteca) {
		ofy().delete().entity(biblioteca).now();
		return biblioteca;
	}

	@Override
	public void deleteAll() {
		List<Biblioteca> bibliotecas = ofy().load().type(Biblioteca.class).list();
		for(Biblioteca biblioteca: bibliotecas){
			ofy().delete().entity(biblioteca).now();
		}
	}

}
