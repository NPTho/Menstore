/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.menstore.DAOimpl;

import com.menstore.DAO.IOrderDAO;
import com.menstore.model.Order;
import com.menstore.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nhduy
 */
public class OrderDAO  implements IOrderDAO{

    @Override
    public List<Order> list() {
        ArrayList<Order> list;
        list = new ArrayList<Order>();

        String sql = "select * from Orders join OrderDetail on Orders.InvoiceID=OrderDetail.InvoiceID";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Order order = new Order();
                order.setOrderId(rs.getString("InvoiceID"));
                order.setNote(rs.getString("Note"));
                order.setDiscuntPrice(rs.getInt("DiscountedPrice"));
                order.setTotal(rs.getInt("Total"));
                order.setDate(rs.getDate("OrderDate"));
                order.setStatus(rs.getString("Status"));
                order.setVoucher(rs.getString("VoucherID"));
                order.setUser(rs.getString("UserID"));
                list.add(order);
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }
        return list;
    }

    @Override
    public int getNoOfRecords() {
        String sql = "SELECT COUNT(InvoiceID) as noOfRecords FROM Orders";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("noOfRecords");
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }
        return 0;
    }

    @Override
    public List<Order> list(int start, int recordsPerPage, String direction, String by) {
        ArrayList<Order> list;
        list = new ArrayList<Order>();
        String sql = " DECLARE @col as varchar(255) = ?\n";

        String direc = direction.equals("up") ? "ASC" : "DESC";

        if (by.equals("discounted") || by.equals("total")) {
            sql += "select * from Orders join OrderDetail on Orders.InvoiceID=OrderDetail.InvoiceID \n"
                    + " ORDER BY CASE @col\n"
                    + "		WHEN 'discounted' THEN DiscountedPrice\n"
                    + "		WHEN 'total' THEN Total\n"
                    + "			END " + direc + "\n"
                    + " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
        } else {
            sql += "select * from Orders join OrderDetail on Orders.InvoiceID=OrderDetail.InvoiceID\"\n"
                    + " ORDER BY CASE @col\n"
                    + "            WHEN 'ID' THEN InvoiceID\n"
                    + "            WHEN 'date' THEN OrderDate\n"
                    + "			END " + direc + "\n"
                    + " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
        }
        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, by);
            ps.setInt(2, start);
            ps.setInt(3, recordsPerPage);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Order order = new Order();
                order.setOrderId(rs.getString("InvoiceID"));
                order.setNote(rs.getString("Note"));
                order.setDiscuntPrice(rs.getInt("DiscountedPrice"));
                order.setTotal(rs.getInt("Total"));
                order.setDate(rs.getDate("OrderDate"));
                order.setStatus(rs.getString("Status"));
                order.setVoucher(rs.getString("VoucherID"));
                order.setUser(rs.getString("UserID"));
                list.add(order);
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }

        return list;
    
    }

    @Override
    public List<Order> list(int start, int recordsPerPage) {
        ArrayList<Order> list;
        list = new ArrayList<Order>();

        String sql = "select * from Orders join OrderDetail on Orders.InvoiceID=OrderDetail.InvoiceID"
                + " ORDER BY Orders.InvoiceID\n"
                + " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, start);
            ps.setInt(2, recordsPerPage);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Order order = new Order();
                order.setOrderId(rs.getString("InvoiceID"));
                order.setNote(rs.getString("Note"));
                order.setDiscuntPrice(rs.getInt("DiscountedPrice"));
                order.setTotal(rs.getInt("Total"));
                order.setDate(rs.getDate("OrderDate"));
                order.setStatus(rs.getString("Status"));
                order.setVoucher(rs.getString("VoucherID"));
                order.setUser(rs.getString("UserID"));
                list.add(order);
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }

        return list;
    }

    @Override
    public boolean delete(String orderId) {
         throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Order product) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean edit(Order product) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Order> search(String by, String keyword) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
