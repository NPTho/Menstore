/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.menstore.Controller.web;

import com.menstore.DAOimpl.ProductDAO;
import com.menstore.model.Cart;
import com.menstore.model.CartItem;
import java.io.IOException;
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
@WebServlet(name = "CartController", urlPatterns = {"/cart"})
public class CartController extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
		if (action == null) {
			doGet_DisplayCart(request, response);
		} else {
			if (action.equalsIgnoreCase("buy")) {
				doGet_Buy(request, response);
			} else if (action.equalsIgnoreCase("remove")) {
				doGet_Remove(request, response);
			}
		}
    }
    
    protected void doGet_DisplayCart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("views/web/cart.jsp").forward(request, response);
	}

	protected void doGet_Remove(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		int index = isExisting(request.getParameter("id"), cart);
		cart.getList().remove(index);
		session.setAttribute("cart", cart);
		response.sendRedirect("cart");
	}

	protected void doGet_Buy(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProductDAO productDAO = new ProductDAO();
		HttpSession session = request.getSession();
		if (session.getAttribute("cart") == null) {
			Cart cart = new Cart();
			cart.addCart(new CartItem(productDAO.find(request.getParameter("id")), Double.parseDouble(request.getParameter("price")),
                                1, Double.parseDouble(request.getParameter("price"))));
			session.setAttribute("cart", cart);
                        System.out.println("aaaa");
                        System.out.println(cart.getList().size());
		} else {
			Cart cart = (Cart) session.getAttribute("cart");
			int index = isExisting(request.getParameter("id"), cart);
			if (index == -1) {
				cart.addCart(new CartItem(productDAO.find(request.getParameter("id")), Double.parseDouble(request.getParameter("price")),
                                1, Double.parseDouble(request.getParameter("price"))));
			} else {
				int quantity =((CartItem)cart.getList().get(index)).getQuantity() + 1;
				((CartItem)cart.getList().get(index)).setQuantity(quantity);
			}
			session.setAttribute("cart", cart);
                        System.out.println(productDAO.find(request.getParameter("id")));
                        System.out.println(index);
                        System.out.println(cart.getList().size());
		}
		response.sendRedirect("cart");
	}

	private int isExisting(String id, Cart cart) {
		for (int i = 0; i < cart.getItemCount()  ;i++) {
			if (((CartItem)(cart.getList().get(i))).getProduct().getProductId().equalsIgnoreCase(id)) {
				return i;
			}
		}
		return -1;
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
