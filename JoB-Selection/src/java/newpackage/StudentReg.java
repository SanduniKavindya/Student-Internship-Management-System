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
@WebServlet(name = "StudentReg", urlPatterns = {"/StudentReg"})
public class StudentReg extends HttpServlet {

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
            out.println("<title>Servlet StudentReg</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet StudentReg at " + request.getContextPath() + "</h1>");
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
        
       String stuID=request.getParameter("stuID");
       String Name=request.getParameter("Name");
       String Email=request.getParameter("Email");
       String Mobile =request.getParameter("Mobile");
       String Gender=request.getParameter("Gender");
       String dob=request.getParameter("dob");
       String position=request.getParameter("position");
       String Company=request.getParameter("company");
       //String ql=request.getParameter("Ql");
       
       
       
        RequestDispatcher dispatcher=null;
       
        try {
             Statement st ;

                   

            Class.forName("com.mysql.jdbc.Driver");
            Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/data?useSSL=false","root","");
            PreparedStatement pst=con.prepareStatement("insert into Student(stuID,Name,Email,Mobile,Gender,dob,position,Company) values (?,?,?,?,?,?,?,?)");
            pst.setString(1, stuID);
                        pst.setString(2, Name);
                        pst.setString(3, Email);
                         pst.setString(4, Mobile);
                         pst.setString(5, Gender);
                         pst.setString(6, dob);
                         pst.setString(7,position);
                         pst.setString(8, Company);
                                              //  pst.setString(8, ql);
                                                
                                                int rowCount = pst.executeUpdate();
                                                dispatcher=request.getRequestDispatcher("index.html");
                                                JOptionPane.showMessageDialog(null,"Insert Success!");
                                                if(rowCount>0){
                                                    request.setAttribute("status", "sucuss");
                                                }
                                                else{
                                                    request.setAttribute("status", "faild");

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
