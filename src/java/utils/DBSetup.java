
package utils;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author User
 */
public class DBSetup {

    Logger logger = Logger.getLogger(DBManager.class.getName());

    public void createTables() {

        DBManager dmbgr = new DBManager();

        Connection con = dmbgr.getConnection();

        InputStream inpStr = this.getClass().getResourceAsStream("createdb.txt");

        executeSqlScript(con, inpStr);
    }

    public void insertSetupData() {

        DBManager dmbgr = new DBManager();

        Connection con = dmbgr.getConnection();
        
        InputStream inpStr = this.getClass().getResourceAsStream("insertdata.txt");

        executeSqlScript(con, inpStr);
    }

    public void showData() {

        Statement stmt;

        DBManager dmbgr = new DBManager();

        Connection con = dmbgr.getConnection();

        try {
            stmt = con.createStatement();
            ResultSet results = stmt.executeQuery("select * from USERDATA");

            System.out.println("\n-------------------------------------------------");

            while (results.next()) {
                int id = results.getInt(1);
                String email = results.getString(2);
                String password = results.getString(3);
                String fName = results.getString(4);
                String lName = results.getString(5);
                String userType = results.getString(6);
                boolean isDisabled = results.getBoolean(7);
                String addressLineOne = results.getString(8);
                String addressLineTwo = results.getString(9);
                String county = results.getString(10);
                String country = results.getString(11);
                String postalCode = results.getString(12);
                
                logger.info(id + "\t\t" + email + "\t\t" + password + "\t\t" + fName + "\t\t" + lName + "\t\t" + userType + "\t\t" + isDisabled + "\t\t" +addressLineOne + "\t\t" + addressLineTwo + "\t\t" +county + "\t\t" +country+ "\t\t" + postalCode);
            }
            results.close();
            stmt.close();
        } catch (SQLException sqlExcept) {
            logger.log(Level.SEVERE, null, sqlExcept);
        }

        try {
            stmt = con.createStatement();
            ResultSet results = stmt.executeQuery("select * from PRODUCT");

            System.out.println("\n-------------------------------------------------");

            while (results.next()) {
                int id = results.getInt(1);
                String name = results.getString(2);
                String description = results.getString(3);
                String type = results.getString(4);
                String price = results.getString(5);
                int stock = results.getInt(6);
                String ageSuitability = results.getString(7);
                String image = results.getString(8);
                logger.info(id + "\t\t" + name + "\t\t" + description + "\t\t" + type + "\t\t"+ price + "\t\t"+ stock + "\t\t"+ ageSuitability + "\t\t"+ image);
            }
            results.close();
            stmt.close();
        } catch (SQLException sqlExcept) {
            logger.log(Level.SEVERE, null, sqlExcept);
        }
        
        

    }

    public void executeSqlScript(Connection conn, InputStream inputStream) {

        // Delimiter
        String delimiter = ";";

        // Create scanner
        Scanner scanner;

        scanner = new Scanner(inputStream).useDelimiter(delimiter);

        // Loop through the SQL file statements 
        Statement currentStatement = null;
        while (scanner.hasNext()) {

            // Get statement 
            String rawStatement = scanner.next();
            try {
                // Execute statement
                currentStatement = conn.createStatement();
                currentStatement.execute(rawStatement);
            } catch (SQLException e) {
                logger.log(Level.SEVERE, null, e);
            } finally {
                // Release resources
                if (currentStatement != null) {
                    try {
                        currentStatement.close();
                    } catch (SQLException e) {
                        logger.log(Level.SEVERE, null, e);;
                    }
                }
                currentStatement = null;
            }
        }
    }

}

