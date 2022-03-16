/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.menstore.Controller.web;

import com.menstore.DAO.IProductDAO;
import com.menstore.DAOimpl.ProductDAO;
import com.menstore.DAOimpl.WebProductDAO;
import com.menstore.model.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MyPC
 */
@WebServlet(name = "ProductController", urlPatterns = {"/products"})
public class ProductController extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        
        String listType = request.getParameter("listType");
        
        if (listType == null) {
            doDisplay(request, response);
        } else if (listType.equals("Ao")) {
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/ProductInType.jsp");
            rd.forward(request, response);
        } else if (listType.equals("Quan")) {
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/ProductInType.jsp");
            rd.forward(request, response);
        } else if (listType.equals("PhuKien")) {
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/ProductInType.jsp");
            rd.forward(request, response);
        } else{
            response.sendRedirect("/products");
        }
        
    }
    
    protected void doDisplay(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        IProductDAO webProductDAO = new WebProductDAO();
        List<Product> shirtList = new ArrayList<>();
        List<Product> pantList = new ArrayList<>();
        List<Product> accessoryList = new ArrayList<>();
        
        shirtList = ((WebProductDAO) webProductDAO).top3Shirt_list();
        pantList = ((WebProductDAO) webProductDAO).top3Pant_list();
        accessoryList = ((WebProductDAO) webProductDAO).top3Accessory_list();
        
        request.setAttribute("shirtList", shirtList);
        request.setAttribute("pantList", pantList);
        request.setAttribute("accessoryList", accessoryList);
        
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/products.jsp");
        rd.forward(request, response);
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
