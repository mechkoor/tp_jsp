/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.projet.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ma.projet.classes.Client;
import ma.projet.service.ClientService;
import ma.projet.util.Utils;

/**
 *
 * @author ayoub mechkour
 */
@WebServlet(name = "LoginController", urlPatterns = {"/Login"})
public class LoginController extends HttpServlet {

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
        Client c1=new Client();
        ClientService cs=new ClientService();
        String email=request.getParameter("email");
        String pswd=request.getParameter("password");
        
         c1=cs.getByEmail(email);
         
             
         
         if(c1==null){
             request.setAttribute("msg", "email or password incorrect");
             request.getRequestDispatcher("Login.jsp").forward(request, response);
         }
         else{
             if(email.equals(c1.getEmail()) && Utils.MD5(pswd).equals(c1.getPassword())){
                 request.setAttribute("nom", c1.getPrenom());
             request.getRequestDispatcher("Welcome.jsp").forward(request, response);
                 response.sendRedirect("Welcome.jsp");
             }
             else{
                  request.setAttribute("msg", "email or password incorrect");
             request.getRequestDispatcher("Login.jsp").forward(request, response);
             }
                 
                 
         }
        
        
        
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
    }
}


