package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import model.bo.Utilisateur;
import model.dao.LoginDao;
import model.dao.UtilisateurDao;
import model.bo.Utilisateur;
import model.dao.LoginDao;
 
 
public class LoginServlet extends HttpServlet {
	public static final String CHAMP_PASSWORD = "password";
	public static final String CHAMP_EMAIL = "email";
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
     String email = request.getParameter("email");   
     String password = request.getParameter("password");
     UtilisateurDao utildao = new UtilisateurDao();
     Utilisateur user = utildao.getUserByUserId(email,password);
     if(user == null) {
    	 RequestDispatcher dispatcher = request.getRequestDispatcher("/erreur.jsp");
    	 dispatcher.forward(request, response);
     }else {
    	 request.setAttribute(CHAMP_EMAIL, email); 	
    	 request.setAttribute("name", user.getName()); 	

    	 RequestDispatcher dispatcher = request.getRequestDispatcher("/test.jsp");
 		dispatcher.forward(request, response);
     }
    
}
 
}