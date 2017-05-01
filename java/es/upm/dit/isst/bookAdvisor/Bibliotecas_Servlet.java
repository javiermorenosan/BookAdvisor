package es.upm.dit.isst.bookAdvisor;

import java.util.List;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;
import com.googlecode.objectify.ObjectifyService;

import es.upm.dit.isst.bookAdvisor.dao.BibliotecaDAO;
import es.upm.dit.isst.bookAdvisor.dao.BibliotecaDAOImpl;
import es.upm.dit.isst.bookAdvisor.dao.LibreriaDAO;
import es.upm.dit.isst.bookAdvisor.dao.LibreriaDAOImpl;
import es.upm.dit.isst.bookAdvisor.model.Biblioteca;
import es.upm.dit.isst.bookAdvisor.model.Libreria;

public class Bibliotecas_Servlet extends HttpServlet{
	@Override
	public void init() throws ServletException {
		ObjectifyService.register(Biblioteca.class);	
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
		      throws IOException, ServletException {
		BibliotecaDAO dao = BibliotecaDAOImpl.getInstancia();
		
//		Biblioteca biblioteca1 = dao.create("Biblioteca Le", "c/ Paseo de la Casetellana", "http://www.libreriale.es", "email1", "Esta es una biblioteca de noseque y de nosecuantos", "libreria1.png");
//		Biblioteca biblioteca2 = dao.create("Nosecuantitos", "c/ Paseo de la Habana", "http://www.google.es", "email2", "Esta es otra biblioteca de noseque y de nosecuantos", "libreria2.jpeg");
//		Biblioteca biblioteca3 = dao.create("Biblioteca3", "c/ de la Piruleta", "http://www.marca.com", "email3", "Esta es una mas biblioteca de noseque y de nosecuantos", "libreria3.jpeg");
		
		List<Biblioteca> bibliotecas = dao.read();
		
		request.getSession().setAttribute("bibliotecas", bibliotecas);
		
		RequestDispatcher view = request.getRequestDispatcher("bibliotecas.jsp");
		view.forward(request, response);
	}
}