
package com.menstore.DAO;

import com.menstore.model.Product;
import java.util.List;

public interface IProductDAO {
    List<Product> list();
    
    int getNoOfRecords();
    
    List<Product> list(int start, int recordsPerPage, String direction, String by);
    
    List<Product> list(int start, int recordsPerPage);
    
    boolean delete(String productId);
    
    boolean add(Product product);
    
    boolean edit(Product product);
    
    List<Product> search(String by, String keyword);
    
}
