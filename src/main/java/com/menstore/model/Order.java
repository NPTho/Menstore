/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.menstore.model;

import java.util.Date;

/**
 *
 * @author nhduy
 */
public class Order {
    private String orderId;
    private String note;
    private int discuntPrice;
    private int total;
    private Date date;
    private String status;
    private String voucher;
    private String user;

    public Order() {
    }

    public Order(String orderId, String note, int discuntPrice, int total, Date date, String status, String voucher, String user) {
        this.orderId = orderId;
        this.note = note;
        this.discuntPrice = discuntPrice;
        this.total = total;
        this.date = date;
        this.status = status;
        this.voucher = voucher;
        this.user = user;
    }

    public Order(String invoiceId, String note, double discountedPrice, double total, java.sql.Date orderDate, String status, String voucher, String userId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getDiscuntPrice() {
        return discuntPrice;
    }

    public void setDiscuntPrice(int discuntPrice) {
        this.discuntPrice = discuntPrice;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getVoucher() {
        return voucher;
    }

    public void setVoucher(String voucher) {
        this.voucher = voucher;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }
    
    
}
