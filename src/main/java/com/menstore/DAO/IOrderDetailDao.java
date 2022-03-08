
package com.menstore.DAO;

import java.util.List;

public interface IOrderDetailDao {
    List<IOrderDetailDao> list(String OrderId);
    
    boolean save(String OrderId, String productId, int soldPrice,String quantity);
    
    
}
