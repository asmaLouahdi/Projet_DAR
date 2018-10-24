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

import org.apache.commons.io.IOUtils;

import model.bo.Avatar;
import model.bo.Utilisateur;
import model.dao.UtilsDao;

/**
 * Servlet implementation class UploadServlet
 */

public class UploadServlet extends HttpServlet {

	
	public static final String CHAMP_ACTION_ID = "actionId";
	public static final String SAVE_AVATAR  = "saveAvatar";
	public UtilsDao utilsDao = new UtilsDao();
	
	/**
	 * Default constructor.
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
	}

	public UploadServlet() {
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String actionId = request.getParameter(CHAMP_ACTION_ID);
		if(SAVE_AVATAR.equals(actionId)) {
			/* Update Imqge */
			Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">
		    String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
		    InputStream fileContent = filePart.getInputStream();
		    byte[] bytes = IOUtils.toByteArray(fileContent);
		    Avatar avatar = new Avatar(fileName, bytes);
		    utilsDao.saveAvatar(avatar);
		    Utilisateur user = (Utilisateur) session.getAttribute("currentUser");
		    user.setAvatar(avatar);
		    utilsDao.updateUser(user);
		    session.setAttribute("currentUser", user);
		    request.setAttribute("user", user);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/updateprofile.jsp");
		dispatcher.forward(request, response);		
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}