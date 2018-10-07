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
import com.ebay.services.finding.PaginationInput;
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
	int count = 0;
	int pageSize = 30;
	int page = 1;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		System.out.println("service() api");
		String action = request.getParameter("action");
		if (action.equals("sum")) {
			findItem(request.getParameter("key"), action);
			response.getWriter().println("" + (int) Math.ceil(count / pageSize));
		} else if (action.equals("paging")) {
			searchItem(request, response);
		}
	}

	public void searchItem(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		String key = request.getParameter("key");
		page = Integer.parseInt(request.getParameter("page"));
		List<Item> items = new ArrayList<Item>();
		List<SearchItem> searchItems = findItem(key, "paging");
		for (int j = 0; j < pageSize; j++) {
			if ((j) != searchItems.size() - 1) {
				Item i = new Item();
				i.setTitre(searchItems.get(j).getTitle());
				i.setPhoto(searchItems.get(j).getGalleryURL());
				i.setInfo(searchItems.get(j).getViewItemURL());
				items.add(i);
			}
		}

		JSONArray jsonArray = new JSONArray(items);
		String jsonStr = jsonArray.toString();
		response.getWriter().println(jsonStr);
	}

	public List<SearchItem> findItem(String key, String action) {
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
			request.setKeywords(key);
			if (action.equals("paging")) {
				PaginationInput pi = new PaginationInput();
				pi.setEntriesPerPage(pageSize);
				pi.setPageNumber(page);
				request.setPaginationInput(pi);
			}

			// call service
			FindItemsByKeywordsResponse result = serviceClient.findItemsByKeywords(request);

			// output result
			// count = result.getSearchResult().getCount();
			if(action.equals("sum")){
				count = result.getSearchResult().getCount();
			}			
			items = result.getSearchResult().getItem();
		} catch (Exception ex) {
			// handle exception if any
			ex.printStackTrace();
		}
		return items;
	}
}
