/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static com.sun.xml.ws.security.impl.policy.Constants.logger;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;
import java.util.logging.Level;
import model.SoftToy;
import model.User;
import utils.DBManager;
import utils.IConstants;

/**
 *
 * @author ciano
 */
public class SoftToyDao {

  public SoftToy getProductById(int id) {

         DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        
        int productId = id;
        String productName = null;
        String productDesc = null;
        String productType = null;
        double price = 0;
        int stock = 0;
        String ageSuitability = null;
        String image = null;
       
        SoftToy tempSoftToy = new SoftToy();

        String query = "SELECT * FROM PRODUCT WHERE PRODUCT_ID =" + id ;
        
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                
                productId = (rs.getInt(1));
                productName = (rs.getString(2));
                productDesc = (rs.getString(3));
                productType = (rs.getString(4));
                price = (rs.getDouble(5));
                stock = (rs.getInt(6));
                ageSuitability =(rs.getString(7));
                image = (rs.getString(8));
              
                
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
       
                tempSoftToy.setId(productId);
                tempSoftToy.setProductName(productName);
                tempSoftToy.setProductDesc(productDesc);
                tempSoftToy.setProductType(productType);
                tempSoftToy.setPrice(price);
                tempSoftToy.setStock(stock);
                tempSoftToy.setAgeSuitability(ageSuitability);
                tempSoftToy.setImage(image);
                
                
        return tempSoftToy;

    }

    public Vector<SoftToy> getAllSoftToys() {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        
        int productId = 0;
        String productName = null;
        String productDesc = null;
        String productType = null;
        double price = 0;
        int stock = 0;
        String ageSuitability = null;
        String image = null;
       
        Vector<SoftToy> productData = new Vector();

        String query = "SELECT * FROM PRODUCT";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                
                productId = (rs.getInt(1));
                productName = (rs.getString(2));
                productDesc = (rs.getString(3));
                productType = (rs.getString(4));
                price = (rs.getDouble(5));
                stock = (rs.getInt(6));
                ageSuitability =(rs.getString(7));
                image = (rs.getString(8));
               
                SoftToy tempSoftToy = new SoftToy();
                
                tempSoftToy.setId(productId);
                tempSoftToy.setProductName(productName);
                tempSoftToy.setProductDesc(productDesc);
                tempSoftToy.setProductType(productType);
                tempSoftToy.setPrice(price);
                tempSoftToy.setStock(stock);
                tempSoftToy.setAgeSuitability(ageSuitability);
                tempSoftToy.setImage(image);
               
                productData.add(tempSoftToy);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
      
        return productData;
        
    }
    
     public Vector<SoftToy> getSuggestedProducts(String category) {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        
        int productId = 0;
        String productName = null;
        double price = 0;
        String image = null;
       
        Vector<SoftToy> productData = new Vector();

        String query = "SELECT PRODUCT_ID, NAME, PRICE, IMAGE FROM PRODUCT WHERE TYPE = '" + category + "' fetch first 4 rows only"  ;
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                
                productId = (rs.getInt(1));
                productName = (rs.getString(2));
                price = (rs.getDouble(3));
                image = (rs.getString(4));
               
                SoftToy tempSoftToy = new SoftToy();
                
                tempSoftToy.setId(productId);
                tempSoftToy.setProductName(productName);
                tempSoftToy.setPrice(price);
                tempSoftToy.setImage(image);
               
                productData.add(tempSoftToy);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
      
        return productData;
        
    }
    
    public void insertSoftToy(SoftToy newSoftToy){
        
        String stmtNewUser = "INSERT INTO PRODUCT(NAME, DESCRIPTION, TYPE, PRICE, STOCK, AGESUITABILITY, IMAGE) VALUES('" + newSoftToy.getProductName() + "','" + newSoftToy.getProductDesc() + "','" + newSoftToy.getProductType() + "'," + newSoftToy.getPrice() + "," + newSoftToy.getStock() + ",'" + newSoftToy.getAgeSuitability() + "','" + newSoftToy.getImage() +"')";
        DBManager dmbgr = new DBManager();
        Statement currentStatement = null;
        Connection con = dmbgr.getConnection();
        try {
            // Execute statement
            currentStatement = con.createStatement();
            currentStatement.execute(stmtNewUser);
        } catch (SQLException sqlExcept) {
            logger.log(Level.SEVERE, null, sqlExcept);
        }
    }
    
     public void updateSoftToy(SoftToy softToy){
        
        String stmtNewUser = "UPDATE PRODUCT SET NAME = '" + softToy.getProductName() + "', DESCRIPTION = '" + softToy.getProductDesc() + "', TYPE = '" + softToy.getProductType() + "', PRICE = " + softToy.getPrice() + ", STOCK = " + softToy.getStock() + ", AGESUITABILITY = '" + softToy.getAgeSuitability() + "', IMAGE = '" + softToy.getImage() + "' WHERE PRODUCT_ID = " + softToy.getId();
        DBManager dmbgr = new DBManager();
        Statement currentStatement = null;
        Connection con = dmbgr.getConnection();
        try {
            // Execute statement
            currentStatement = con.createStatement();
            currentStatement.execute(stmtNewUser);
        } catch (SQLException sqlExcept) {
            logger.log(Level.SEVERE, null, sqlExcept);
        }
        
    }
     
     public void deleteSoftToy(int id){
        
        String stmtNewUser = "DELETE FROM product WHERE PRODUCT_ID = " + id;
        DBManager dmbgr = new DBManager();
        Statement currentStatement = null;
        Connection con = dmbgr.getConnection();
        try {
            // Execute statement
            currentStatement = con.createStatement();
            currentStatement.execute(stmtNewUser);
        } catch (SQLException sqlExcept) {
            logger.log(Level.SEVERE, null, sqlExcept);
        }
    }
    
    public Vector<SoftToy> filterAllSoftToys(String filter){
        System.out.println("dao filter: " + filter);
        Vector<SoftToy> products = new Vector();
        Vector<SoftToy> allProducts = new Vector();
        allProducts = getAllSoftToys();
        if(filter.equals("all")){
            System.out.println("all products called");
            products = getAllSoftToys();
            
        }else{
            for(SoftToy softToy : allProducts){
                System.out.println("Filter: " + filter);
                if(filter.equals(softToy.getProductType())){
                    products.add(softToy);
                }
            }
        }
        return products;
    }
}
