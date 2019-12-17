/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author BEmerson
 */
public class DBManager {

    Logger logger = Logger.getLogger(DBManager.class.getName());

    void loadJDBCDriver() {

        try {
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
        } catch (ClassNotFoundException ex) {
            logger.log(Level.SEVERE, null, ex);
        }
    }

    void checkConnection() {

        loadJDBCDriver();

        Connection dbConnection = null;
        String strUrl = "jdbc:derby:billsdb;create=true";
        try {
            dbConnection = DriverManager.getConnection(strUrl);
        } catch (SQLException sqle) {
            logger.log(Level.SEVERE, null, sqle.getStackTrace());
        }

    }

    public Connection getConnection() {

        loadJDBCDriver();

        Connection dbConnection = null;
        String strUrl = "jdbc:derby:billsdb;create=true";
        try {
            dbConnection = DriverManager.getConnection(strUrl);
        } catch (SQLException sqle) {
            logger.log(Level.SEVERE, null, sqle.getStackTrace());
        }

        return dbConnection;

    }

}
