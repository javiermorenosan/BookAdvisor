package es.upm.dit.isst.bookAdvisor;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.googlecode.objectify.ObjectifyService;

import es.upm.dit.isst.bookAdvisor.dao.BibliotecaDAO;
import es.upm.dit.isst.bookAdvisor.dao.BibliotecaDAOImpl;
import es.upm.dit.isst.bookAdvisor.dao.LibreriaDAO;
import es.upm.dit.isst.bookAdvisor.dao.LibreriaDAOImpl;
import es.upm.dit.isst.bookAdvisor.model.Biblioteca;
import es.upm.dit.isst.bookAdvisor.model.Libreria;

/**
 * Servlet implementation class BibliotecasReg_Servlet
 */
public class BibliotecasReg_Servlet extends HttpServlet {
	
	@Override
	public void init() throws ServletException {
		ObjectifyService.register(Biblioteca.class);
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		RequestDispatcher view = request.getRequestDispatcher("registroBiblioteca.jsp");
		view.forward(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		BibliotecaDAO dao = BibliotecaDAOImpl.getInstancia();
		String email = request.getParameter("email");
		String nombre = request.getParameter("name");
		String localizacion = request.getParameter("direccion");
		String url = request.getParameter("url");
		String descripcion = request.getParameter("descripcion");
		String imagen = request.getParameter("imagen");
		String pass1 = request.getParameter("password");
		String pass2 =  request.getParameter("password2");
		String hash1="";
		String hash2="";
		
		
		try {
			hash1= hash(pass1);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			hash2= hash(pass2);
		} catch (NoSuchAlgorithmException e) {				
				e.printStackTrace();
		}
		
		
		
		Biblioteca biblioteca = dao.readEmail(email);
		List<Biblioteca> biblioteca1 = dao.read();
		if(hash1==null || hash2==null || !hash1.equals(hash2)){
			request.getSession().setAttribute("mensaje","error en la contrase�a");
			response.sendRedirect("/registroBiblioteca");
			
		}

		else if (biblioteca != null){
			request.getSession().setAttribute("mensaje","error en la contrase�a");
			response.sendRedirect("/registroBiblioteca");
		}
		else{
			dao.create( nombre, localizacion, url, email, descripcion, hash1, imagen);
			response.sendRedirect("/login");
		}
		
		
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
}
