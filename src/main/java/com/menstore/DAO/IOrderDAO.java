/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.menstore.DAO;

import com.menstore.model.Order;
import java.sql.Date;
import java.util.List;

/**
 *
 * @author MyPC
 */
public interface IOrderDAO {
    
    List<Order> list();
    
    boolean save(String InvoiceId, String discountedMoney, 
            Date orderDate, double total, String note, String status, 
            String userId, String VoucherID);
    
    
            
}
