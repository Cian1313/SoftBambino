/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import dao.SoftToyDao;
import dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.SoftToy;
import model.User;

/**
 *
 * @author ciano
 */
public class ProductManagerServlet extends HttpServlet {

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
                viewProducts(request, response);
            }

            if (action.equals("DELETE")) {
                deleteProduct(request, response);

            }

            if (action.equals("ADD")) {
                addProduct(request, response);

            }

            if (action.equals("EDIT")) {
                editProduct(request, response);

            }

            if (action.equals("UPDATE")) {
                updateUsers(request, response);
            }
            
            if (action.equals("PROD")) {
                viewProd(request, response);
            }
        }
    }
    private void addProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String productName = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        String category = request.getParameter("category");
        String ageSuitability = request.getParameter("ageSuitability");
        int stock = Integer.parseInt(request.getParameter("stock"));
        String image = request.getParameter("image");
        
        SoftToy newSoftToy = new SoftToy();

        newSoftToy.setProductName(productName);
        newSoftToy.setPrice(price);
        newSoftToy.setProductDesc(description);
        newSoftToy.setProductType(category);
        newSoftToy.setAgeSuitability(ageSuitability);
        newSoftToy.setStock(stock);
        newSoftToy.setImage(image);
        
        SoftToyDao softToyDao = new SoftToyDao();
        
        softToyDao.insertSoftToy(newSoftToy);

        Vector<SoftToy> allSoftToys;
        allSoftToys = softToyDao.getAllSoftToys();

        request.setAttribute("SKALLPRODUCTS", allSoftToys);

        RequestDispatcher rd = request.getRequestDispatcher("/viewProducts.jsp");
        rd.forward(request, response);
    }
    
     private void viewProducts(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        SoftToyDao softToyDao = new SoftToyDao();

        Vector<SoftToy> allSoftToys;
        allSoftToys = softToyDao.getAllSoftToys();

        request.setAttribute("SKALLPRODUCTS", allSoftToys);

        RequestDispatcher rd = request.getRequestDispatcher("/viewProducts.jsp");
        rd.forward(request, response);

    }
     
     private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        SoftToyDao softToyDao = new SoftToyDao();
        int id = Integer.parseInt(request.getParameter("id"));
        softToyDao.deleteSoftToy(id);

        Vector<SoftToy> allSoftToys = softToyDao.getAllSoftToys();

         request.setAttribute("SKALLPRODUCTS", allSoftToys);

        RequestDispatcher rd = request.getRequestDispatcher("/viewProducts.jsp");
        rd.forward(request, response);

    }
     
     private void editProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

       SoftToyDao softToyDao = new SoftToyDao();
       
       int id = Integer.parseInt(request.getParameter("id"));

        SoftToy editSoftToy = softToyDao.getProductById(id);

        request.setAttribute("editProduct", editSoftToy);

        RequestDispatcher rd = request.getRequestDispatcher("/editProduct.jsp");
        rd.forward(request, response);

    }
     
    private void updateUsers(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id = Integer.parseInt(request.getParameter("id"));
        String productName = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        String category = request.getParameter("category");
        String ageSuitability = request.getParameter("ageSuitability");
        int stock = Integer.parseInt(request.getParameter("stock"));
        String image = request.getParameter("image");
        
        SoftToy newSoftToy = new SoftToy();

        newSoftToy.setId(id);
        newSoftToy.setProductName(productName);
        newSoftToy.setPrice(price);
        newSoftToy.setProductDesc(description);
        newSoftToy.setProductType(category);
        newSoftToy.setAgeSuitability(ageSuitability);
        newSoftToy.setStock(stock);
        newSoftToy.setImage(image);
        
        SoftToyDao softToyDao = new SoftToyDao();
        
        softToyDao.updateSoftToy(newSoftToy);

        Vector<SoftToy> allSoftToys;
        allSoftToys = softToyDao.getAllSoftToys();

        request.setAttribute("SKALLPRODUCTS", allSoftToys);

        RequestDispatcher rd = request.getRequestDispatcher("/viewProducts.jsp");
        rd.forward(request, response);
    }  
    
     private void viewProd(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

       SoftToyDao softToyDao = new SoftToyDao();
       
       int id = Integer.parseInt(request.getParameter("id"));

        SoftToy product = softToyDao.getProductById(id);
        
        String category = product.getProductType();
        
        Vector<SoftToy> allSoftToys;
        allSoftToys = softToyDao.getSuggestedProducts(category);

        request.setAttribute("product", product);
        request.setAttribute("suggestedProducts", allSoftToys);
        

        RequestDispatcher rd = request.getRequestDispatcher("/product.jsp");
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
