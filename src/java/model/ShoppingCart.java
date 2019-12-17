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
public class ShoppingCart {
    
    private long id;
    private int quantity;
    private float subtotal;
   
    public void setId(long id){
        this.id = id;
    }
    public long getId(){
        return this.id;
    }
    
    public void setQuantity(int quantity){
        this.quantity = quantity;
    }
    public int getQuantity(){
        return this.quantity;
    }
    
    public void setSubtotal(float subtotal){
        this.subtotal = subtotal;
    }
    public float getSubtotal(){
        return this.subtotal; 
    }
}
