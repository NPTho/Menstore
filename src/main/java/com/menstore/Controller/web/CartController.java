/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.menstore.Controller.web;

import com.menstore.DAO.IOrderDAO;
import com.menstore.DAO.IUserDAO;
import com.menstore.DAO.IVoucherDAO;
import com.menstore.DAOimpl.OrderDAO;
import com.menstore.DAOimpl.ProductDAO;
import com.menstore.DAOimpl.UserDAO;
import com.menstore.DAOimpl.VoucherDAO;
import com.menstore.model.Cart;
import com.menstore.model.CartItem;
import com.menstore.model.UserSession;
import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.menstore.DAO.IOrderDetailDAO;
import com.menstore.DAOimpl.OrderDetailDAO;
import com.menstore.model.Order;
import com.menstore.model.OrderDetail;
import com.menstore.model.User;

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
            } else if (action.equalsIgnoreCase("update")) {
                doGet_Update(request, response);
            } else if (action.equalsIgnoreCase("checkVoucher")) {
                doGet_CheckVoucher(request, response);
            } else if (action.equalsIgnoreCase("checkout")) {
                doGet_Checkout(request, response);
            }
        }
    }

    protected void doGet_DisplayCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("views/web/cart.jsp").forward(request, response);
    }

    protected void doGet_Checkout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        UserSession userSession = (UserSession) session.getAttribute("usersession");

        if (cart == null || cart.getItemCount() == 0) {
            request.getRequestDispatcher("views/web/cart.jsp").forward(request, response);
        } else {
            IOrderDAO orderDAO = new OrderDAO();
            IUserDAO userDAO = new UserDAO();
            IOrderDetailDAO orderDetailDAO = new OrderDetailDAO();

            String invoiceId = "HD" + (orderDAO.getNoOfRecords() + 1);
            double discountedPrice = cart.getDiscounted();
            Date orderDate = new Date(System.currentTimeMillis());
            double total = cart.getTotal();
            String note = request.getParameter("note");
            String status = "Đang xử lý";
            String userId;
            if (userSession != null) {
                userId = userSession.getUser().getUserId();
            } else {
                userId = "US" + (userDAO.getNoOfRecords() + 1);
                userDAO.saveWalkInGuest(userId, request.getParameter("name"), request.getParameter("phone"), request.getParameter("address"));
            }
            String voucher = cart.getVoucherId();

            Order order = new Order(invoiceId, note ,discountedPrice,total, orderDate,status,voucher, userId);
//            if (orderDAO.save(order) == true) {
//                for (CartItem item : cart.getList()) {
//                    OrderDetail orderDetail = new OrderDetail(invoiceId, item.getProduct().getProductId(), item.getSoldPrice(), item.getQuantity());
//                    orderDetailDAO.save(orderDetail);
//                }
//            }
            
            response.sendRedirect("views/common/newjsp.jsp");
        }
        
        
    }

    protected void doGet_Update(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        int index = isExisting(request.getParameter("id"), cart);
        String direction = request.getParameter("direc");
        int updatedQuantity = ((CartItem) cart.getList().get(index)).getQuantity() + (direction.equals("up") ? 1 : -1);
        if (updatedQuantity > 0) {
            ((CartItem) cart.getList().get(index)).setQuantity(updatedQuantity);
            cart.updateCartMoney();
            session.setAttribute("cart", cart);
            response.sendRedirect("cart");
        } else {
            doGet_Remove(request, response);
        }

    }

    protected void doGet_Remove(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        int index = isExisting(request.getParameter("id"), cart);
        cart.getList().remove(index);
        cart.updateCartMoney();
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
        } else {
            Cart cart = (Cart) session.getAttribute("cart");
            int index = isExisting(request.getParameter("id"), cart);
            if (index == -1) {
                cart.addCart(new CartItem(productDAO.find(request.getParameter("id")), Double.parseDouble(request.getParameter("price")),
                        1, Double.parseDouble(request.getParameter("price"))));
            } else {
                int quantity = ((CartItem) cart.getList().get(index)).getQuantity() + 1;
                ((CartItem) cart.getList().get(index)).setQuantity(quantity);
                cart.updateCartMoney();
            }
            session.setAttribute("cart", cart);
        }
        response.sendRedirect("cart");
    }

    protected void doGet_CheckVoucher(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        String voucherId = request.getParameter("voucherId");
        IVoucherDAO voucherDAO = new VoucherDAO();

        int voucher_DiscountPercent = voucherDAO.loadDiscountedPercent(voucherId);
        if (voucher_DiscountPercent > 0) {
            request.setAttribute("voucher_discountPercent", voucher_DiscountPercent);

            double discountedMoney = (voucher_DiscountPercent / 100.0) * cart.getTotal();

            cart.setDiscounted(discountedMoney);
            cart.setVoucherId(voucherId);
        } else {
            cart.setVoucherId(null);
            cart.setDiscounted(0);
        }

        request.getRequestDispatcher("views/web/cart.jsp").forward(request, response);
    }

    private int isExisting(String id, Cart cart) {
        for (int i = 0; i < cart.getItemCount(); i++) {
            if (((CartItem) (cart.getList().get(i))).getProduct().getProductId().equalsIgnoreCase(id)) {
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
