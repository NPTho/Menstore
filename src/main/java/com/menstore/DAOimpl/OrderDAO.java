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
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

/**
 *
 * @author MyPC
 */
public class OrderDAO implements IOrderDAO{
    
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
    public List<Order> list() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean save(Order order) {
        String sql = "INSERT INTO Orders \n"
                + " VALUES(?,?,?,?,?,?,?,?)";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, order.getInvoiceID());
            ps.setDouble(2, order.getDiscountedMoney());
            ps.setDate(3, order.getOrderDate());
            ps.setDouble(4, order.getTotal());
            ps.setNString(5, order.getNote());
            ps.setNString(6, order.getStatus());
            ps.setString(7, order.getUserId());
            ps.setString(8, order.getVoucherId());
            
            if (ps.executeUpdate() > 0) {
                return true;
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }

        return false;
    }
    
}
