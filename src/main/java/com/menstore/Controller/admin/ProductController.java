/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.menstore.Controller.admin;

import com.menstore.DAOimpl.ProductDAO;
import com.menstore.model.Product;
import java.io.IOException;
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
@WebServlet(name = "datamanageController", urlPatterns = {"/product"})
public class ProductController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int page = 1;
        int recordsPerPage = 4;
        if (request.getParameter("page") != null) {
            page = Integer.parseInt(request.getParameter("page"));
        }

        ProductDAO productDAO = new ProductDAO();
        List<Product> list = new ArrayList<>();

        int noOfRecords = productDAO.getNoOfRecords();
        int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);

        request.setAttribute("noOfPages", noOfPages);
        request.setAttribute("currentPage", page);

        String action = request.getParameter("action");
        if (action != null) {
            if (action.equals("sort")) {
                String direction = request.getParameter("direction");
                String by = request.getParameter("by");

                list = productDAO.list((page - 1) * recordsPerPage, recordsPerPage, direction, by);
                request.setAttribute("list", list);

                RequestDispatcher rd = request.getRequestDispatcher("views/admin/Product.jsp");
                rd.forward(request, response);

            } else if (action.equals("search")) {
                String keyword = request.getParameter("keyword");
                String by = request.getParameter("by");

                System.out.println(keyword);
                System.out.println(by);

                list = productDAO.search(by, keyword);
                request.setAttribute("list", list);

                RequestDispatcher rd = request.getRequestDispatcher("views/admin/Product.jsp");
                rd.forward(request, response);

            } else if (action.equals("listBy")) {
                String category = request.getParameter("category");
                
                list = productDAO.listBy((page - 1) * recordsPerPage, recordsPerPage ,category);
                request.setAttribute("list", list);

                RequestDispatcher rd = request.getRequestDispatcher("views/admin/Product.jsp");
                rd.forward(request, response);
            } else if (action.equals("delete")) {
                if (request.getParameterValues("options") != null) {
                    for (String id : request.getParameterValues("options")) {
                        productDAO.delete(id);
                    }
                }

                //list = productDAO.list((page - 1) * recordsPerPage, recordsPerPage);
                response.sendRedirect(request.getContextPath() + "/product");
            } else if (action.equals("add")) {
                String id = request.getParameter("id");
                String name = request.getParameter("name");
                String status = request.getParameter("status");
                float discount = Float.parseFloat(request.getParameter("discount"));
                int price = Integer.parseInt(request.getParameter("price"));
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                String size = request.getParameter("size");
                String categoryId = request.getParameter("categoryId");
                String linkImage = request.getParameter("linkImage");

                Product product = new Product(id, name, status, size, discount, price, quantity, categoryId, linkImage);

                productDAO.add(product);

                //list = productDAO.list((page - 1) * recordsPerPage, recordsPerPage);
                response.sendRedirect(request.getContextPath() + "/product");

            } else if (action.equals("edit")) {
                String id = request.getParameter("id");
                String name = request.getParameter("name");
                String status = request.getParameter("status");
                float discount = Float.parseFloat(request.getParameter("discount"));
                int price = Integer.parseInt(request.getParameter("price"));
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                String size = request.getParameter("size");
                String categoryId = request.getParameter("categoryId");
                String linkImage = request.getParameter("linkImage");

                Product product = new Product(id, name, status, size, discount, price, quantity, categoryId, linkImage);

                productDAO.edit(product);

                //list = productDAO.list((page - 1) * recordsPerPage, recordsPerPage);
                response.sendRedirect(request.getContextPath() + "/product");
            }

        } else {
            list = productDAO.list((page - 1) * recordsPerPage, recordsPerPage);
            request.setAttribute("list", list);

            RequestDispatcher rd = request.getRequestDispatcher("views/admin/Product.jsp");
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
