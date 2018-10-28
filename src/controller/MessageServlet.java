package controller;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import model.bo.Message;
import model.dao.MessageDao;
import model.dao.UtilisateurDao;

//@WebServlet("/MessageServlet")
public class MessageServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	MessageDao messageDao;

	/**
	 * Default constructor.
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("message servlet");
		messageDao = new MessageDao();
		String action = request.getParameter("action");
		switch (action) {
		// add a message
		case "add_message": {

			String content = request.getParameter("content");
			String id = request.getParameter("user_id");
			String destination_id = request.getParameter("contact_id");
			System.out.println("add_msg servlet" + content);
			messageDao.addMessage(content, Integer.parseInt(id), Integer.parseInt(destination_id));
			response.setContentType("text/plain;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("ok");
			break;

		}
		// delete a message according to id
		case "delete": {

			Long id = Long.parseLong(request.getParameter("msg_id"));
			messageDao.deleteMessage(id);
			response.setContentType("text/plain;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("ok");
			break;

		}
		// show all messages for the login user(send and receive)
		case "display_all": {

			response.setContentType("application/json;charset=UTF-8");
			String user_id = request.getParameter("user_id");
			messageDao.updateMessageState(Integer.parseInt(user_id));
			PrintWriter out = response.getWriter();
			out.println(getAllMessages(Integer.parseInt(user_id)).toString());
			break;

		}
		case "display_send":{
			System.out.println("send message");
			response.setContentType("application/json;charset=UTF-8");
			String user_id = request.getParameter("user_id");
			PrintWriter out = response.getWriter();
			out.println(getSendMessages(Integer.parseInt(user_id)).toString());
			break;		
		}
		case "display_receive":{
			System.out.println("receive message");
			response.setContentType("application/json;charset=UTF-8");
			String user_id = request.getParameter("user_id");
			messageDao.updateMessageState(Integer.parseInt(user_id));
			PrintWriter out = response.getWriter();
			out.println(getReceiveMessages(Integer.parseInt(user_id)).toString());
			break;	
		}
		case "newMessages":{
			System.out.println("new message");
			response.setContentType("application/json;charset=UTF-8");
			String user_id = request.getParameter("user_id");
//			messageDao.updateMessageState(Integer.parseInt(user_id));
			PrintWriter out = response.getWriter();
			out.println(getNewMessages(Integer.parseInt(user_id)).toString());
			break;	
		}
		// get the id of user_departure for reply this user
		case "getDeparture": {

			Long id = Long.parseLong(request.getParameter("msg_id"));
			int dest_id = messageDao.getDepartureUserId(id);
			response.setContentType("text/plain;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println(dest_id);
			break;
		}
		// get the number of the new messages
		case "getCountNoRead": {

			String user_id = request.getParameter("user_id");
			response.setContentType("text/plain;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println(messageDao.getCountNoReadMsgByUserId(Integer.parseInt(user_id)));
			break;
		}
		}
	}
	
	
	public JSONArray getNewMessages(int id) {

		List<Message> receive_messages = messageDao.getAllNewMessages(id);
		List<String> userDepartNames = new ArrayList<String>();
		UtilisateurDao utilisateurDao = new UtilisateurDao();
		for (Message message : receive_messages) {
			userDepartNames.add(utilisateurDao.getNameByUserId(message.getId_user_departure()));
		}

		JSONArray jsonReceiveArray = new JSONArray(receive_messages);
		for (int i = 0; i < jsonReceiveArray.length(); i++) {
			JSONObject json = new JSONObject();
			json = jsonReceiveArray.getJSONObject(i);
			String date = json.getString("date");
			json.put("date", date.substring(0, date.length()-2));
			json.put("id_user_departure", userDepartNames.get(i));
		}

//		String jsonStr = jsonReceiveArray.toString();
		return jsonReceiveArray;

	}

	public JSONArray getReceiveMessages(int id) {

		List<Message> receive_messages = messageDao.getAllMessagesByDestinationId(id);
		List<String> userDepartNames = new ArrayList<String>();
		UtilisateurDao utilisateurDao = new UtilisateurDao();
		for (Message message : receive_messages) {
			userDepartNames.add(utilisateurDao.getNameByUserId(message.getId_user_departure()));
		}

		JSONArray jsonReceiveArray = new JSONArray(receive_messages);


		for (int i = 0; i < jsonReceiveArray.length(); i++) {
			JSONObject json = new JSONObject();
			json = jsonReceiveArray.getJSONObject(i);
			String date = json.getString("date");
			json.put("date", date.substring(0, date.length()-2));			
			json.put("id_user_departure", userDepartNames.get(i));
		}

//		String jsonStr = jsonReceiveArray.toString();
		System.out.println(jsonReceiveArray.toString());
		return jsonReceiveArray;

	}
	

	public JSONArray getSendMessages(int id) {
		UtilisateurDao utilisateurDao = new UtilisateurDao();
		List<Message> send_messages = messageDao.getAllMessagesByDepartureId(id);
		List<String> userDestNames = new ArrayList<String>();
		for (Message message : send_messages) {
			userDestNames.add(utilisateurDao.getNameByUserId(message.getId_user_destination()));
		}

		JSONArray jsonSendArray = new JSONArray(send_messages);
		for (int i = 0; i < jsonSendArray.length(); i++) {
			JSONObject json = new JSONObject();
			json = jsonSendArray.getJSONObject(i);
			json.put("id_user_destination", userDestNames.get(i));
			String date = json.getString("date");
			json.put("date", date.substring(0, date.length()-2));
		}

//		String jsonStr = jsonSendArray.toString();
		return jsonSendArray;

	}

	// convert data(list of messages) to json
	public JSONArray getAllMessages(int id) {
//
//		List<Message> receive_messages = messageDao.getAllMessagesByDestinationId(id);
//		List<String> userDepartNames = new ArrayList<String>();
//		UtilisateurDao utilisateurDao = new UtilisateurDao();
//		for (Message message : receive_messages) {
//			userDepartNames.add(utilisateurDao.getNameByUserId(message.getId_user_departure()));
//		}
//
//		JSONArray jsonReceiveArray = new JSONArray(receive_messages);
//		for (int i = 0; i < jsonReceiveArray.length(); i++) {
//			JSONObject json = new JSONObject();
//			json = jsonReceiveArray.getJSONObject(i);
//			json.put("id_user_departure", userDepartNames.get(i));
//		}
//
//		List<Message> send_messages = messageDao.getAllMessagesByDepartureId(id);
//		List<String> userDestNames = new ArrayList<String>();
//		for (Message message : send_messages) {
//			userDestNames.add(utilisateurDao.getNameByUserId(message.getId_user_destination()));
//		}
//
//		JSONArray jsonSendArray = new JSONArray(send_messages);
//		for (int i = 0; i < jsonSendArray.length(); i++) {
//			JSONObject json = new JSONObject();
//			json = jsonSendArray.getJSONObject(i);
//			json.put("id_user_destination", userDestNames.get(i));
//		}

		JSONObject typeSend = new JSONObject();
		typeSend.put("type", "send");
		typeSend.put("list", getSendMessages(id));
		JSONObject typeReceive = new JSONObject();
		typeReceive.put("type", "receive");
		typeReceive.put("list", getReceiveMessages(id));

		JSONArray jsonArray = new JSONArray();
		jsonArray.put(0, typeSend);
		jsonArray.put(1, typeReceive);

//		String jsonStr = jsonArray.toString();
		return jsonArray;

	}

}
