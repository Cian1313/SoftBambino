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
public class SoftToy {

   

    private long id;
    private String productName;
    private String productDesc;
    private String productType;
    private double price;
    private int stock;
    private String ageSuitability;
    private String image;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }
    
    public String getProductDesc() {
        return productDesc;
    }

    public void setProductDesc(String productDesc) {
        this.productDesc = productDesc;
    }

    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }
    
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getAgeSuitability() {
        return ageSuitability;
    }

    public void setAgeSuitability(String ageSuitability) {
        this.ageSuitability = ageSuitability;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public SoftToy(long id, String name, String desc, String type, double price, int stock, String ageSuitability, String image) {
        this.id = id;
        this.productName = name;
        this.productDesc = desc;
        this.productType = type;
        this.price = price;
        this.stock = stock;
        this.ageSuitability = ageSuitability;
        this.image = image;
    }
    
    public SoftToy() {
        
    }

}
