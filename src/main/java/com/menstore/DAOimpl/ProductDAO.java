/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.menstore.DAOimpl;

import com.menstore.DAO.IProductDAO;
import com.menstore.model.Product;
import com.menstore.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO implements IProductDAO {

    @Override
    public List<Product> list() {
        ArrayList<Product> list;
        list = new ArrayList<Product>();

        String sql = "select * from Product";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                product.setProductId(rs.getString("ProductID"));
                product.setProductName(rs.getString("ProductName"));
                product.setSize(rs.getString("Size"));
                product.setStatus(rs.getString("Status"));
                product.setDiscount(rs.getFloat("Discount"));
                product.setQuantity(rs.getInt("Quantity"));
                product.setCategoryId(rs.getString("CategoryID"));
                product.setLinkImage(rs.getString("Link_image"));
                list.add(product);
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }

        return list;
    }

}
