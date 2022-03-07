
package com.menstore.model;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<CartItem> list = new ArrayList();
    private double total;

    public Cart() {
    }

    public ArrayList getList() {
        return (ArrayList) list;
    }

    public void setList(ArrayList list) {   
        this.list = list;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public int getItemCount() {
        return list.size();
    }

    public void deleteCart(String stt) {
        
    }

    public void updateCart(String stt, String quantity) {
        
    }

    public void addCart(CartItem cartItem) {
       list.add(cartItem);
       calculateOrderTotal();
    }

    protected void calculateOrderTotal() {
        double plus = 0;
        for (int i = 0; i < list.size(); i++) {
            CartItem cartItem = (CartItem) list.get(i);
            plus += cartItem.getTotalCost();

        }
        setTotal(plus);
    }
    
}
