/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.menstore.DAO;

import com.menstore.model.Order;
import java.util.List;

/**
 *
 * @author MyPC
 */
public interface IOrderDAO {
    
    int getNoOfRecords();
    
    List<Order> list();
    
    boolean save(Order order);
    
    
            
}
