package es.upm.dit.isst.bookAdvisor;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.file.attribute.UserPrincipal;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.googlecode.objectify.ObjectifyService;

import es.upm.dit.isst.bookAdvisor.dao.BibliotecaDAO;
import es.upm.dit.isst.bookAdvisor.dao.BibliotecaDAOImpl;
import es.upm.dit.isst.bookAdvisor.dao.EditorialDAO;
import es.upm.dit.isst.bookAdvisor.dao.EditorialDAOImpl;
import es.upm.dit.isst.bookAdvisor.dao.LectorDAO;
import es.upm.dit.isst.bookAdvisor.dao.LectorDAOImpl;
import es.upm.dit.isst.bookAdvisor.dao.LibreriaDAO;
import es.upm.dit.isst.bookAdvisor.dao.LibreriaDAOImpl;
import es.upm.dit.isst.bookAdvisor.model.Biblioteca;
import es.upm.dit.isst.bookAdvisor.model.Editorial;
import es.upm.dit.isst.bookAdvisor.model.Lector;
import es.upm.dit.isst.bookAdvisor.model.Libreria;

public class Comprueba_Login_Servlet extends HttpServlet {
	@Override
	public void init() throws ServletException {
		ObjectifyService.register(Lector.class);
		ObjectifyService.register(Editorial.class);
		ObjectifyService.register(Biblioteca.class);
		ObjectifyService.register(Libreria.class);

	}
	
	private String hash(String passwordToHash) throws NoSuchAlgorithmException {
		MessageDigest md = MessageDigest.getInstance("SHA-256");
		try {
			md.update(passwordToHash.getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // Change this to "UTF-16" if needed
		byte[] digest = md.digest();
		return byteArrayToHexString(digest);
		}
	private static String byteArrayToHexString(byte[] b) {
		  String result = "";
		  for (int i=0; i < b.length; i++) {
		    result +=
		          Integer.toString( ( b[i] & 0xff ) + 0x100, 16).substring( 1 );
		  }
		  return result;
		}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String nombre = request.getParameter("username");
		String password = request.getParameter("password");
		
		LectorDAO dao = LectorDAOImpl.getInstancia();
		EditorialDAO editorialDao = EditorialDAOImpl.getInstancia();
		BibliotecaDAO biblioDao = BibliotecaDAOImpl.getInstancia();
		LibreriaDAO libDao = LibreriaDAOImpl.getInstancia();
		
		Biblioteca biblioteca = biblioDao.readEmail(nombre);
		Libreria libreria = libDao.readEmail(nombre);
		Editorial editorial = editorialDao.readEmail(nombre);
		
		Lector lector = dao.readEmail(nombre);
		String hash = "";
		try {
			 hash = hash(password);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		if(lector == null && editorial == null && libreria==null && biblioteca==null) {
			request.getSession().setAttribute("mensaje","No existe el usuario");
			response.sendRedirect("/login");
		}
		else if(lector != null) {
			if(hash=="" || !hash.equals(lector.getContrasena())) {
				request.getSession().setAttribute("mensaje","Error con la contrase�a");
				response.sendRedirect("/login");

			}
			else {
				
				request.getSession().setAttribute("lector", lector);
				
				
				response.sendRedirect("/libros");

			}
		}
		else if(editorial != null) {
			if(hash=="" || !hash.equals(editorial.getContrasena())) {
				request.getSession().setAttribute("mensaje","Error con la contrase�a");
				response.sendRedirect("/login");

			}
			else {
				
				request.getSession().setAttribute("editorial", editorial);
				
				
				response.sendRedirect("/libros");

			}
		}
		else if(biblioteca != null) {
			if(hash=="" || !hash.equals(biblioteca.getContrasena())) {
				request.getSession().setAttribute("mensaje","Error con la contrase�a");
				response.sendRedirect("/login");

			}
			else {
				
				request.getSession().setAttribute("biblioteca", biblioteca);
				
				
				response.sendRedirect("/libros");

			}
		}
		else if(libreria != null) {
			if(hash=="" || !hash.equals(libreria.getContrasena())) {
				request.getSession().setAttribute("mensaje","Error con la contrase�a");
				response.sendRedirect("/login");

			}
			else {
				
				request.getSession().setAttribute("libreria", libreria);
				
				
				response.sendRedirect("/libros");

			}
		}
		
		
	}
}
