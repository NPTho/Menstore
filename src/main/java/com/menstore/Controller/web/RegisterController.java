/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.menstore.Controller.web;

import com.menstore.DAO.IUserDAO;
import com.menstore.DAOimpl.AccessManager;
import com.menstore.DAOimpl.UserDAO;
import com.menstore.model.User;
import com.menstore.model.UserSession;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author MyPC
 */
@WebServlet(name = "RegisterController", urlPatterns = {"/register"})
public class RegisterController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        IUserDAO userDAO = new UserDAO();

        String userId = "US" + (userDAO.getNoOfRecords() + 1);
        String name = request.getParameter("register_name");
        String password = request.getParameter("register_password");
        String username = request.getParameter("register_username");
        String retypePassword = request.getParameter("register_retypePassword");
        String phone = request.getParameter("register_phoneNumber");
        String address = request.getParameter("register_address");

        RequestDispatcher rd = request.getRequestDispatcher("views/common/login.jsp");

        if (!password.equals(retypePassword)) {

            request.setAttribute("message", "Mật khẩu không khớp");
            rd.forward(request, response);
            return;
        }
        
        if (userDAO.checkExist(username)) {
            request.setAttribute("message", "Username đã tồn tại!");
            rd.forward(request, response);
            return;
        }

        User user = new User(userId, name, phone, address, username, password, "user", 0);
        if (userDAO.save(user)) {
            request.setAttribute("message", "Đăng ký thành công");
            rd.forward(request, response);
        } else {
            request.setAttribute("message", "Đăng ký thất bại");
            rd.forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
