package control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
import dao.ProductDAO;
import entity.Product;

@WebServlet("/CartDetailControl")
public class CartDetailControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CartDetailControl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// B1: Get Cart trong session
		Map<Integer, Integer> cart = (HashMap<Integer, Integer>) request.getSession().getAttribute("cart");
		Map<Product, Integer> products = new HashMap<Product, Integer>();
		if(cart == null) cart = new HashMap<Integer, Integer>();
		// B2: Get products
		DAO dao = new DAO();
		int sumPrice = 0;
		for (Map.Entry<Integer, Integer> entry : cart.entrySet()) {
			// Get product add to Map
			Product product = dao.getProductByID(entry.getKey().toString());
			products.put(product, entry.getValue());
			sumPrice += product.getPrice() * entry.getValue();
		}
		
		
		// Forward to cart.jsp
		request.setAttribute("vat", sumPrice * 0.1);
		request.setAttribute("priceBeforeVAT", sumPrice);
		request.setAttribute("priceAfterVAT", String.valueOf(sumPrice + 0.1 * sumPrice));
		request.setAttribute("products", products);
		request.getRequestDispatcher("Cart.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
