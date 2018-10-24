package controller;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import model.bo.Utilisateur;

/**
 * Servlet implementation class Servlet_User
 */

public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RequestDispatcher jsp;

	
	public static final String CHAMP_ACTION_ID = "actionId";
	public static final String CHAMP_NAME = "name";
	public static final String CHAMP_PASSWORD = "password";
	public static final String CHAMP_EMAIL = "email";
	public static final String CHAMP_MARK = "mark";
	public static final String CHAMP_ABOUT="about";
	public static final String CHAMP_INTEREST="interest";
	public static final String CHAMP_OCCUPATION="occupation";
	public static final String CHAMP_NUMBERPHONE="numberphone";

	/**
	 * Default constructor.
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			System.out.println("GET");
			HttpSession session = request.getSession();
			Utilisateur user = (Utilisateur) session.getAttribute("currentUser");
			request.setAttribute("user", user);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/updateprofile.jsp");
			dispatcher.forward(request, response);
	}

	public UserServlet() {
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("!!!!!!!!!!!!! init Servlet User");
		ServletContext context = config.getServletContext();
		jsp = context.getRequestDispatcher("/WEB-INF/jsp/accueil.jsp");
	}*/

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Utilisateur user = (Utilisateur) session.getAttribute("currentUser");
		request.setAttribute("user", user);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/updateprofile.jsp");
		dispatcher.forward(request, response);
		
		// doGet(request, response);
		/* Récupération des champs du formulaire. */
		/*String name = request.getParameter(CHAMP_NAME);
		String password = request.getParameter(CHAMP_PASSWORD);
		String email = request.getParameter(CHAMP_EMAIL);
		String about = request.getParameter(CHAMP_ABOUT);
		String interest = request.getParameter(CHAMP_INTEREST);
		String occupation =request.getParameter(CHAMP_OCCUPATION);
		String numberphone =request.getParameter(CHAMP_NUMBERPHONE);
	      
		UtilisateurDao userDao = new UtilisateurDao();
		userDao.saveDetails(name, email, password,about,interest,occupation,numberphone);
		request.setAttribute(CHAMP_NAME, name);
		request.setAttribute(CHAMP_PASSWORD, password);
		request.setAttribute(CHAMP_EMAIL, email);
		request.setAttribute(CHAMP_ABOUT, about);
		request.setAttribute(CHAMP_INTEREST, interest);
		request.setAttribute(CHAMP_OCCUPATION, occupation);
		request.setAttribute(CHAMP_NUMBERPHONE, numberphone);
        
        if(request.getParameter("updateUser")!=null){
           int id = Integer.parseInt(request.getParameter("id"));
           request.getParameter("name");
           request.getParameter("email");
           request.getParameter("password");
           request.getParameter("about");
           request.getParameter("interest");
           request.getParameter("occpation");
           request.getParameter("numberphone");
           
         //  userDao.updateUser(id, name, email,password,about,interest,occupation, numberphone);
           
           RequestDispatcher rd = request.getRequestDispatcher("updateprofile.jsp");
           rd.forward(request, response);
           
       }
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/test.jsp");
		dispatcher.forward(request, response);
	}*/
		
		
		
	   /* 
		String name = request.getParameter(CHAMP_NAME);
		String password = request.getParameter(CHAMP_PASSWORD);
		String email = request.getParameter(CHAMP_EMAIL);
		String about = request.getParameter(CHAMP_ABOUT);
		String interest = request.getParameter(CHAMP_INTEREST);
		String occupation =request.getParameter(CHAMP_OCCUPATION);
		String numberphone =request.getParameter(CHAMP_NUMBERPHONE);
		

		UtilisateurDao userDao = new UtilisateurDao();
		userDao.saveDetails( name, email, password,about,interest,occupation,numberphone, numberphone);
		request.setAttribute(CHAMP_NAME, name);
		request.setAttribute(CHAMP_PASSWORD, password);
		request.setAttribute(CHAMP_EMAIL, email);
		request.setAttribute(CHAMP_ABOUT, about);
		request.setAttribute(CHAMP_INTEREST, interest);
		request.setAttribute(CHAMP_OCCUPATION, occupation);
		request.setAttribute(CHAMP_NUMBERPHONE, numberphone);
		*/
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String actionId = request.getParameter(CHAMP_ACTION_ID);
		String description = request.getParameter("description");
		if("updateImg".equals(actionId)) {
			/* Update Imqge */
			Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">
		    String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
		    InputStream fileContent = filePart.getInputStream();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/updateprofile.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
