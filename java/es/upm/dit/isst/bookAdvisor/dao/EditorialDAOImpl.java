package es.upm.dit.isst.bookAdvisor.dao;

import static com.googlecode.objectify.ObjectifyService.ofy;
import java.util.List;
import es.upm.dit.isst.bookAdvisor.model.Editorial;

public class EditorialDAOImpl implements EditorialDAO {
	private static EditorialDAOImpl instancia;
	
	private EditorialDAOImpl () {
	}
	public static EditorialDAOImpl getInstancia() {
		if (instancia == null)
			instancia= new EditorialDAOImpl();
		return instancia;
	}
	
	@Override
	public Editorial create(String nombre, String email, String contrasena) {
		
		Editorial editorial = new Editorial(nombre, email, contrasena);
		ofy().save().entity(editorial).now();
		return editorial;
	}

	@Override
	public List<Editorial> read() {
		
		return ofy().load().type(Editorial.class).list();
	}
	
	@Override
	public List<Editorial> readNombre(String nombre) {
			
		return ofy().load().type(Editorial.class).filter("nombre", nombre).list();
	}

	@Override
	public Editorial readEmail(String email) {
		
		List<Editorial> editoriales = ofy().load().type(Editorial.class).filter("email", email).list();
		if (editoriales.size()> 0){
			return editoriales.get(0);
		}
		else {
			return null;
		}
	}

	@Override
	public Editorial update(Editorial editorial) {
		
		ofy().save().entity(editorial).now();
		return editorial; 
	}

	@Override
	public Editorial delete(Editorial editorial) {
		
		ofy().delete().entity(editorial).now();
		return editorial;
	}

	@Override
	public void deleteAll() {
		
		List<Editorial> editoriales = ofy().load().type(Editorial.class).list();
		for(Editorial editorial: editoriales){
			ofy().delete().entity(editorial).now();
		}
	}			
}
