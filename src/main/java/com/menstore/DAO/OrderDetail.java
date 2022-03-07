
package com.menstore.DAO;

import java.util.List;

public interface OrderDetail {
    List<OrderDetail> list(String OrderId);
    
    boolean save(String OrderId, String productId, int soldPrice,String quantity);
    
    
}
