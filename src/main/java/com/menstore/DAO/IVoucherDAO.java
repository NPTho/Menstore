/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.menstore.DAO;

import com.menstore.model.Voucher;

/**
 *
 * @author MyPC
 */
public interface IVoucherDAO {
    int loadDiscountedPercent(String voucherId);
    
    Voucher find(String voucherId);
}
