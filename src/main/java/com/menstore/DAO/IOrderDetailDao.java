
package com.menstore.DAO;

import com.menstore.model.OrderDetail;
import java.util.List;

public interface IOrderDetailDAO {
    List<IOrderDetailDAO> list(String OrderId);
    
    boolean save(OrderDetail orderDetail);
    
    
}
