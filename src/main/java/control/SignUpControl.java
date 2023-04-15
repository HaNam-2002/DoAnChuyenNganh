/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.DAO;
import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MD5;

/**
 *
 * @author trinh
 */
@WebServlet(name = "SignUpControl", urlPatterns = {"/signup"})
public class SignUpControl extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String re_pass = request.getParameter("repass");
        if(!pass.equals(re_pass)){
        	request.setAttribute("notify", "Mật khẩu xác nhận phải trùng mật khẩu mới !");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }else{
            DAO dao = new DAO();
            boolean isExist = dao.checkExistUsername(user);
            if(isExist){
                // đã tồn tại
            	System.out.println("Đã tồn tại");
            	request.setAttribute("notify", "Username đã tồn tại !");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            }	else{
            	//dc signup
                dao.singup(user, (new MD5()).hashPass(pass));
                request.getSession().setMaxInactiveInterval(0);
                response.sendRedirect("Login.jsp");
            }
        }
        //sign up
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
 
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
