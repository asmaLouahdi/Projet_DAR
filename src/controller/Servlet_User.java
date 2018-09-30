package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.UtilisateurDao;

/**
 * Servlet implementation class Servlet_User
 */

public class Servlet_User extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RequestDispatcher jsp;

	public static final String CHAMP_NAME = "name";
	public static final String CHAMP_PASSWORD = "password";
	public static final String CHAMP_EMAIL = "email";
	public static final String CHAMP_MARK = "mark";
	public static final String CHAMP_COMMENTS = "comment_site";

	/**
	 * Default constructor.
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	public Servlet_User() {
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("!!!!!!!!!!!!! init Servlet User");
		ServletContext context = config.getServletContext();
		jsp = context.getRequestDispatcher("/WEB-INF/jsp/accueil.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);

		/* Récupération des champs du formulaire. */

		/* String id = request.getParameter(CHAMP_ID); */
		String name = request.getParameter(CHAMP_NAME);
		String password = request.getParameter(CHAMP_PASSWORD);
		String email = request.getParameter(CHAMP_EMAIL);
		String mark = request.getParameter(CHAMP_MARK);
		String comment_site = request.getParameter(CHAMP_COMMENTS);

		UtilisateurDao userDao = new UtilisateurDao();
		userDao.saveDetails(name, email, password, mark, comment_site);
		request.setAttribute(CHAMP_NAME, name);
		request.setAttribute(CHAMP_PASSWORD, password);
		request.setAttribute(CHAMP_EMAIL, email);
		request.setAttribute(CHAMP_MARK, mark);
		request.setAttribute(CHAMP_COMMENTS, comment_site);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/accueil.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
