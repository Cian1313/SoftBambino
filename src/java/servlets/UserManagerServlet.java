/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Set;
import java.util.Vector;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;

/**
 *
 * @author ciano
 */
public class UserManagerServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String action = request.getParameter("action");
            System.out.println(action);
            if (action.equals("VIEW")) {
                viewUsers(request, response);
            }

            if (action.equals("DELETE")) {
                deleteUsers(request, response);

            }

            if (action.equals("ADD")) {
                addUser(request, response);

            }

            if (action.equals("EDIT")) {
                editUsers(request, response);

            }

            if (action.equals("UPDATE")) {
                updateUsers(request, response);
            }
            
            
        }
    }
    private void viewUsers (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        UserDao userDao = new UserDao();

        Vector<User> allUsers;
        allUsers = userDao.getAllUsers();

        request.setAttribute("SKALLUSERS", allUsers);

        RequestDispatcher rd = request.getRequestDispatcher("/viewUsers.jsp");
        rd.forward(request, response);

    }

    private void addUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String pword = request.getParameter("pword");
        String addressLineOne = request.getParameter("address");
        String addressLineTwo = request.getParameter("address2");
        String county = request.getParameter("county");
        String country = request.getParameter("country");
        String postalCode = request.getParameter("postalCode");
        Boolean isDisabled = Boolean.parseBoolean(request.getParameter("isDisabled"));
        String userType = request.getParameter("userType");

        System.out.println(firstName);
        User newUser = new User();

        newUser.setFirstName(firstName);
        newUser.setLastName(lastName);
        newUser.setEmail(email);
        newUser.setPassword(pword);
        newUser.setAddressLineOne(addressLineOne);
        newUser.setAddressLineTwo(addressLineTwo);
        newUser.setCounty(county);
        newUser.setCountry(country);
        newUser.setPostalCode(postalCode);
        newUser.setIsDiasbled(isDisabled);
        newUser.setUserType(userType);

        UserDao userDAO = new UserDao();

        userDAO.insertUser(newUser);

        Vector<User> allUsersVect = userDAO.getAllUsers();

        request.setAttribute("SKALLUSERS", allUsersVect);

        RequestDispatcher rd = request.getRequestDispatcher("/viewUsers.jsp");
        rd.forward(request, response);
    }

    private void deleteUsers(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        UserDao userDao = new UserDao();
        int id = Integer.parseInt(request.getParameter("id"));
        userDao.deleteUser(id);

        Vector<User> allUsers = userDao.getAllUsers();

        request.setAttribute("SKALLUSERS", allUsers);

        RequestDispatcher rd = request.getRequestDispatcher("/viewUsers.jsp");
        rd.forward(request, response);

    }

    private void editUsers(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        UserDao userDao = new UserDao();
        String email = request.getParameter("email");

        User editUser = userDao.getUserByEmail(email);

        request.setAttribute("editUser", editUser);

        RequestDispatcher rd = request.getRequestDispatcher("/editUser.jsp");
        rd.forward(request, response);

    }

    private void updateUsers(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String pword = request.getParameter("pword");
        String addressLineOne = request.getParameter("address");
        String addressLineTwo = request.getParameter("address2");
        String county = request.getParameter("state");
        String country = request.getParameter("country");
        String postalCode = request.getParameter("postCode");
        Boolean isDisabled = Boolean.parseBoolean(request.getParameter("isDisabled"));
        String userType = request.getParameter("userType");

        System.out.println(firstName);
        User newUser = new User();

        newUser.setFirstName(firstName);
        newUser.setLastName(lastName);
        newUser.setEmail(email);
        newUser.setPassword(pword);
        newUser.setAddressLineOne(addressLineOne);
        newUser.setAddressLineTwo(addressLineTwo);
        newUser.setCounty(county);
        newUser.setCountry(country);
        newUser.setPostalCode(postalCode);
        newUser.setIsDiasbled(isDisabled);
        newUser.setUserType(userType);

        UserDao userDAO = new UserDao();

        userDAO.updateUser(newUser);

        Vector<User> allUsersVect = userDAO.getAllUsers();

        request.setAttribute("SKALLUSERS", allUsersVect);

        RequestDispatcher rd = request.getRequestDispatcher("/viewUsers.jsp");
        rd.forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
