package control;

import dao.DAO;
import entity.Account;
import entity.Category;
import entity.Product;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ManagerControl", urlPatterns = {"/manager"})
public class ManagerControl extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession(); // gọi tới session 
        Account a = (Account) session.getAttribute("acc");// lấy accout đc đã đc lưu trên ss
        int id = a.getId();// get ID của acount
        DAO dao = new DAO();
        List<Product> list = dao.getProductBySellID(id); 
        List<Category> listC = dao.getAllCategory();
        request.setAttribute("listCC", listC);
        request.setAttribute("listP", list);// đẩy danh sách sản phẩm lên listP bên ManagerProduct.jsp
        request.getRequestDispatcher("ManagerProduct.jsp").forward(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
