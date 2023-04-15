package control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteCartControl")
public class DeleteCartControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeleteCartControl() {
        super();
           }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int productId = Integer.parseInt(request.getParameter("pid"));
		
		String quantityText = request.getParameter("quantity");
		int quantity = quantityText == null ? 1 : Integer.parseInt(quantityText);		
		
		Map<Integer, Integer> cart = (HashMap<Integer, Integer>) request.getSession().getAttribute("cart");
		if(cart.get(productId) == 1) {
			cart.remove(productId);
//			cart.put(quantity,null);
		} else {
			
			cart.replace(productId, cart.get(productId) - quantity);
		}		
		request.getSession().setAttribute("cart", cart);				
		String path = request.getParameter("path");
		if("detail".equalsIgnoreCase(path)) {
			request.setAttribute("pid", productId);
			request.getRequestDispatcher("detail").forward(request, response);
		} else {
			response.sendRedirect(path);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}