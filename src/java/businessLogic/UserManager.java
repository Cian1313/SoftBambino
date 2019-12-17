/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package businessLogic;

import model.User;
import dao.UserDao;

/**
 *
 * @author ciano
 */
public class UserManager {
    public User loginUser(String email, String passWord){
        
        UserDao userDAO = new UserDao();
        User user = userDAO.getUserByEmail(email);
        if (user.getPassword().equals(passWord)){
            return user;
        }
        else return null;
    }
}
