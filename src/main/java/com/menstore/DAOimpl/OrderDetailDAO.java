/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.menstore.DAOimpl;

import java.util.List;
import com.menstore.DAO.IOrderDetailDAO;
import com.menstore.model.OrderDetail;
import com.menstore.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author MyPC
 */
public class OrderDetailDAO implements IOrderDetailDAO{

    @Override
    public List<IOrderDetailDAO> list(String OrderId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean save(OrderDetail orderDetail) {
        String sql = "INSERT INTO OrderDetail \n"
                + " VALUES(?,?,?,?)";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, orderDetail.getInvoiceId());
            ps.setString(2, orderDetail.getProductId());
            ps.setDouble(3, orderDetail.getSoldPrice());
            ps.setInt(4, orderDetail.getQuantity());

            return ps.execute();

        } catch (Exception ex) {

            ex.printStackTrace();

        }

        return false;
    }
    
}
