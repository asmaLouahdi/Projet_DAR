package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.ebay.services.client.ClientConfig;
import com.ebay.services.client.FindingServiceClientFactory;
import com.ebay.services.finding.FindItemsByKeywordsRequest;
import com.ebay.services.finding.FindItemsByKeywordsResponse;
import com.ebay.services.finding.FindingServicePortType;
import com.ebay.services.finding.SearchItem;

import model.bo.Item;

/**
 * Servlet implementation class accessoiresServlet
 */
@WebServlet("/accessoiresServlet")
public class accessoiresServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("service");
		request.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");
		System.out.println("action" + action);
		if (action.equals("search")) {
			searchItem(request, response);
		}
	}

	public void searchItem(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();

		List<Item> items = new ArrayList<Item>();
		List<SearchItem> searchItems = findItem(req.getParameter("obj"));
		if (searchItems != null) {
			for (SearchItem item : searchItems) {
				Item i = new Item();
				i.setTitre(item.getTitle());
				i.setPhoto(item.getGalleryURL());
				i.setInfo(item.getViewItemURL());
				items.add(i);
			}
		}
	
		JSONArray jsonArray = new JSONArray(items);
		String jsonStr = jsonArray.toString();
		System.out.println(jsonStr);
		out.println(jsonStr);
	}

	public List<SearchItem> findItem(String obj) {
		List<SearchItem> items = null;
		try {
			// initialize service end-point configuration
			ClientConfig config = new ClientConfig();
			// endpoint address can be overwritten here, by default, production
			// address is used,
			// to enable sandbox endpoint, just uncomment the following line
			// config.setEndPointAddress("http://svcs.sandbox.ebay.com/services/search/FindingService/v1");
			config.setApplicationId("ZiyiZhou-Animal-PRD-9f9002d37-0e2d0833");
			// create a service client
			FindingServicePortType serviceClient = FindingServiceClientFactory.getServiceClient(config);
			// create request object
			FindItemsByKeywordsRequest request = new FindItemsByKeywordsRequest();
			// set request parameters
			request.setKeywords(obj);
			// PaginationInput pi = new PaginationInput();
			// pi.setEntriesPerPage(2);
			// request.setPaginationInput(pi);

			// call service
			FindItemsByKeywordsResponse result = serviceClient.findItemsByKeywords(request);

			// output result
			System.out.println("Ack = " + result.getAck());
			System.out.println("Find " + result.getSearchResult().getCount() + " items.");
			items = result.getSearchResult().getItem();
			for (SearchItem item : items) {
				System.out.println(item.getTitle());
				System.out.println(item.getViewItemURL());
			}

		} catch (Exception ex) {
			// handle exception if any
			ex.printStackTrace();
		}
		return items;
	}
}
