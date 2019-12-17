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
import model.User;
import utils.DBManager;
import utils.IConstants;

/**
 *
 * @author ciano
 */
public class UserDao {

    public User getUserByEmail(String email) {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();

        int userId = 0;
        String password = null;
        String fName = null;
        String lName = null;
        String userType = null;
        Boolean isDisabled = null;
        String addressLineOne = null;
        String addressLineTwo = null;
        String county = null;
        String country = null;
        String postalCode = null;

        User tempUser = new User();

        String query = "SELECT * FROM USERDATA WHERE EMAIL=" + "'" + email + "'";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                userId = (rs.getInt(1));
                password = (rs.getString(3));
                fName = (rs.getString(4));
                lName = (rs.getString(5));
                userType = (rs.getString(6));
                isDisabled = (rs.getBoolean(7));
                addressLineOne = (rs.getString(8));
                addressLineTwo = (rs.getString(9));
                county = (rs.getString(10));
                country = (rs.getString(11));
                postalCode = (rs.getString(12));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        tempUser.setEmail(email);
        tempUser.setId(userId);
        tempUser.setFirstName(fName);
        tempUser.setLastName(lName);
        tempUser.setPassword(password);
        tempUser.setUserType(userType);
        tempUser.setIsDiasbled(isDisabled);
        tempUser.setAddressLineOne(addressLineOne);
        tempUser.setAddressLineTwo(addressLineTwo);
        tempUser.setCounty(county);
        tempUser.setCountry(country);
        tempUser.setPostalCode(postalCode);
        return tempUser;

    }

    public Vector<User> getAllUsers() {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        int userId = 0;
        String password = null;
        String email = null;
        String fName = null;
        String lName = null;
        String userType = null;
        Boolean isDisabled = null;
        String addressLineOne = null;
        String addressLineTwo = null;
        String county = null;
        String country = null;
        String postalCode = null;
        Vector<User> userData = new Vector();

        String query = "SELECT * FROM USERDATA";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {

                userId = (rs.getInt(1));
                email = (rs.getString(2));
                password = (rs.getString(3));
                fName = (rs.getString(4));
                lName = (rs.getString(5));
                userType = (rs.getString(6));
                isDisabled = (rs.getBoolean(7));
                addressLineOne = (rs.getString(8));
                addressLineTwo = (rs.getString(9));
                county = (rs.getString(10));
                country = (rs.getString(11));
                postalCode = (rs.getString(12));

                User tempUser = new User();

                tempUser.setEmail(email);
                tempUser.setId(userId);
                tempUser.setFirstName(fName);
                tempUser.setLastName(lName);
                tempUser.setPassword(password);
                tempUser.setUserType(userType);
                tempUser.setIsDiasbled(isDisabled);
                tempUser.setAddressLineOne(addressLineOne);
                tempUser.setAddressLineTwo(addressLineTwo);
                tempUser.setCounty(county);
                tempUser.setCountry(country);
                tempUser.setPostalCode(postalCode);

                userData.add(tempUser);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userData;

    }

    public void insertUser(User newUser) {

        String stmtNewUser = "INSERT INTO USERDATA(EMAIL,PASSWORD,FNAME,LNAME,USERTYPE, ISDISABLED, ADDRESSLINEONE, ADDRESSLINETWO,COUNTY,COUNTRY,POSTALCODE) VALUES('" + newUser.getEmail() + "', '" + newUser.getPassword() + "', '" + newUser.getFirstName() + "', '" + newUser.getLastName() + "','" + newUser.getUserType() + "'," + newUser.getIsDiasbled() + ",'" + newUser.getAddressLineOne() + "','" + newUser.getAddressLineTwo() + "','" + newUser.getCounty() + "','" + newUser.getCountry() + "','" + newUser.getPostalCode() + "')";
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
    
    public void updateUser(User user){
        
        String stmtNewUser = "UPDATE USERDATA SET EMAIL = '" + user.getEmail() +"', PASSWORD = '" + user.getPassword() + "', FNAME = '" + user.getFirstName() + "', LNAME = '" + user.getLastName() + "', USERTYPE = '" + user.getUserType() + "', ISDISABLED = " + user.getIsDiasbled() + ", ADDRESSLINEONE = '" + user.getAddressLineOne() + "', ADDRESSLINETWO = '" + user.getAddressLineTwo() + "', COUNTY = '" + user.getCounty() + "', COUNTRY = '" + user.getCountry() + "', POSTALCODE = '"+ user.getPostalCode() + "' WHERE email = '" + user.getEmail() + "'";
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

    public void deleteUser(int id) {
        String stmtNewUser = "DELETE FROM USERDATA WHERE USER_ID = " + id ;
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
}
