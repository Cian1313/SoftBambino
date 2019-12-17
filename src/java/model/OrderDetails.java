/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ciano
 */
public class OrderDetails {
    
    private long orderDetailsId;
    private int quantity;
    private double subtotal;

    public long getOrderDetails() {
        return orderDetailsId;
    }

    public void setOrderDetails(long orderDetails) {
        this.orderDetailsId = orderDetails;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }
   }
