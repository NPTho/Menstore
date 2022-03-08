/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.menstore.DAOimpl;

import com.menstore.DAO.IVoucherDAO;
import com.menstore.model.Product;
import com.menstore.model.Voucher;
import com.menstore.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author MyPC
 */
public class VoucherDAO implements IVoucherDAO{

    @Override
    public int loadDiscountedPercent(String voucherId) {
        int discountedPercent = find(voucherId).getDiscountedPercent();
        
        return discountedPercent;
    }

    @Override
    public Voucher find(String voucherId) {
        Voucher voucher = new Voucher();
        String sql = "select * from Voucher where VoucherID = ?";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setString(1, voucherId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
               voucher.setVoucherID(rs.getString("VoucherID"));
               voucher.setDiscountedPercent(rs.getInt("Discount"));
               voucher.setDueDate(rs.getDate("DueDate"));
               voucher.setMaximumDiscount(rs.getDouble("Maximum_discount"));
               voucher.setRequired(rs.getDouble("Required"));
               voucher.setDescription(rs.getString("Description"));
            }
        } catch (Exception ex) {

            ex.printStackTrace();

        }
        
        return voucher;
    }
    
}
