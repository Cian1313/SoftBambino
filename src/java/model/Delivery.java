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
public class Delivery {
    private long deliveryId;
    private double price;
    private String deliveryDesc;
    
    public Delivery(long id, double price, String desc){
        this.deliveryId = id;
        this.price = price;
        this.deliveryDesc = desc;
    }
    
    public long getDeliveryId() {
        return deliveryId;
    }

    public void setDeliveryId(long deliveryId) {
        this.deliveryId = deliveryId;
    }

    public double getPrice() {
        return price;
    }

    /**
     * @param price the price to set - can be used to update delivery
     */
    public void setPrice(double price) {
        this.price = price;
    }

        public String getDeliveryDesc() {
        return deliveryDesc;
    }

    public void setDeliveryDesc(String deliveryDesc) {
        this.deliveryDesc = deliveryDesc;
    }
    
}
