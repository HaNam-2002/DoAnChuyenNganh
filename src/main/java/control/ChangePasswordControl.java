package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MD5;
import dao.DAO;
import entity.Account;

/**
 * Servlet implementation class ChangePassword
 */
@WebServlet("/changePassword")
public class ChangePasswordControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ChangePasswordControl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String newPass = request.getParameter("newPassword");
		String repeatPass = request.getParameter("repeatPassword");
		System.out.println(newPass);
		System.out.println(repeatPass);
		if(newPass == null || repeatPass == null) {
			// quay lai trang change password 
		}
		if(!newPass.equals(repeatPass)) {
			// neu khong khop => quay lai trang change password
		} 
		// update database
		int id = ((Account)request.getSession().getAttribute("acc")).getId();
		String pass = (new MD5()).hashPass(newPass);
		System.out.println("pass");
		DAO dao = new DAO();
		if(dao.changePass(pass, id)) {
			// thah cong
			System.out.println("thanh cong");
		} else System.out.println("that bai");
	}

}
