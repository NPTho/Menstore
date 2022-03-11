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
 * @author nhduy
 */
public interface IOrderDAO {
    List<Order> list();
    
    int getNoOfRecords();
    
    List<Order> list(int start, int recordsPerPage, String direction, String by);
    
    List<Order> list(int start, int recordsPerPage);
    
    boolean delete(String productId);
    
    boolean add(Order product);
    
    boolean edit(Order product);
    
    List<Order> search(String by, String keyword);
}
