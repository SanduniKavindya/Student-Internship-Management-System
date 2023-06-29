/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author User
 */
@WebServlet(name = "JOB", urlPatterns = {"/JOB"})
public class JOB extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet JOB</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet JOB at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //processRequest(request, response);
        
        
        PrintWriter out=response.getWriter();
       String ID=request.getParameter("ID");
       String FirstName=request.getParameter("FirstName");
       String company =request.getParameter("company");
       String position=request.getParameter("position");
       String mobile=request.getParameter("mobile");
        
       
        RequestDispatcher dispatcher=null;
       
        try {
             Statement st ;

                   

            Class.forName("com.mysql.jdbc.Driver");
            Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/data?useSSL=false","root","");
            PreparedStatement pst=con.prepareStatement("insert into selected(ID,FirstName,company,position,mobile) values (?,?,?,?,?)");
            pst.setString(1, ID);
                        pst.setString(2, FirstName);
                         pst.setString(3, company);
                         pst.setString(4, position);
                         pst.setString(5, mobile);
                        
                                              //  pst.setString(8, ql);
                                                
                                                int rowCount = pst.executeUpdate();
                                                dispatcher=request.getRequestDispatcher("index.html");
                                                JOptionPane.showMessageDialog(null,"Insert Succsuss!");
                                                if(rowCount>0){
                                                    request.setAttribute("status", "sucuss");
                                                   
                                                }
                                                else{
                                                    request.setAttribute("status", "faild");
                                                    out.println("faild");
                                                    

                                                }
         
            dispatcher.forward(request, response);
            
        } catch (Exception e) {
        }
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
