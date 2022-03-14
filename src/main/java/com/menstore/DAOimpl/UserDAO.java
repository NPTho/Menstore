/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.menstore.DAOimpl;

import com.menstore.DAO.IUserDAO;
import com.menstore.model.User;
import com.menstore.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author MyPC
 */
public class UserDAO implements IUserDAO {

    @Override
    public int getNoOfRecords() {

        String sql = "SELECT COUNT(UserID) as noOfRecords FROM Users";

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
    public boolean save(User user) {
        String sql = "INSERT INTO Users \n"
                + " VALUES(?,?,?,?,?,?,?,?)";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, user.getUserId());
            ps.setNString(2, user.getName());
            ps.setNString(3, user.getUsername());
            ps.setString(4, user.getPassword());
            ps.setString(5, user.getRole());
            ps.setInt(6, user.getPoint());
            ps.setString(7, user.getAddress());
            ps.setString(8, user.getPhoneNumber());

            if (ps.executeUpdate() > 0) {
                return true;
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }

        return false;
    }

    @Override
    public boolean saveWalkInGuest(String id, String name, String phone, String address) {
        String sql = "INSERT INTO Users \n"
                + " VALUES(?,?,null,null,'clone',0,?,?)";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, id);
            ps.setNString(2, name);
            ps.setNString(3, address);
            ps.setString(4, phone);

            if (ps.executeUpdate() > 0) {
                return true;
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }

        return false;

    }

    @Override
    public boolean checkExist(String username) {
        String sql = "SELECT * FROM Users "
                + " WHERE UserName like ?";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, username);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return true;
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }
        return false;
    }

    @Override
    public boolean resetPoint(String id) {
        String sql = "UPDATE Users \n"
                + "SET Point = 0\n"
                + "WHERE UserID like ? ";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, id);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return true;
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }
        return false;
    }
}
