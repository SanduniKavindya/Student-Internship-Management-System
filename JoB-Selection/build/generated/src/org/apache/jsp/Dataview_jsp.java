package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class Dataview_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>HOD</title>\n");
      out.write("        <style>\n");
      out.write("            .div1{\n");
      out.write("                width: 50%;\n");
      out.write("                float: left;\n");
      out.write("            }\n");
      out.write("            .div{\n");
      out.write("                width: 50%;\n");
      out.write("                float: right;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <a href=\"index.html\"> Back </a>\n");
      out.write("    <center>\n");
      out.write("        <br>\n");
      out.write("        <center><h2>HOD MAINTAINANCE</h2></center><br>\n");
      out.write("        <div class=\"div1\">\n");
      out.write("        <table border=\"1\"  >\n");
      out.write("            <caption align=\"bottoom\">Student Details</caption>\n");
      out.write("            <tr>\n");
      out.write("                <th> ID</th>\n");
      out.write("                <th> StudentName</th>\n");
      out.write("                <th> EmailID</th>\n");
      out.write("                <th> Mobile</th>\n");
      out.write("                <th>Gender</th>\n");
      out.write("                <th>dob</th>\n");
      out.write("                 <th>company</th>\n");
      out.write("            </tr> \n");
      out.write("        \n");
      out.write("        ");

        try{
           
                   

            Class.forName("com.mysql.jdbc.Driver");
            Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/data?useSSL=false","root","");
            Statement st=con.createStatement();
            
            String str="select * from Student";
            ResultSet rs=st.executeQuery(str);
            while(rs.next()){
                
      out.write("\n");
      out.write("                <tr>           \n");
      out.write("    <td>");
      out.print(rs.getString("FirstName"));
      out.write(" </td>\n");
      out.write("    <td>");
      out.print(rs.getString("LastName"));
      out.write(" </td>\n");
      out.write("    <td>");
      out.print(rs.getString("EmailID"));
      out.write(" </td>\n");
      out.write("    <td>");
      out.print(rs.getString("Mobile"));
      out.write(" </td>\n");
      out.write("    <td>");
      out.print(rs.getString("Gender"));
      out.write(" </td>\n");
      out.write("    <td>");
      out.print(rs.getString("dob"));
      out.write(" </td>\n");
      out.write("     <td>");
      out.print(rs.getString("position"));
      out.write(" </td>\n");
      out.write("    <td>");
      out.print(rs.getString("company"));
      out.write(" </td></tr>\n");
      out.write("   \n");
      out.write("    \n");
      out.write("    ");

            }
            
        }catch(Exception e){
            
}
      out.write("\n");
      out.write("   </table>   \n");
      out.write("        </div>\n");
      out.write("   \n");
      out.write("   <div class=\"div2\">\n");
      out.write("  \n");
      out.write("        <table border=\"1\" >\n");
      out.write("            <caption align=\"bottoom\">Company details</caption>\n");
      out.write("            <tr>\n");
      out.write("                <th> Company Name</th>\n");
      out.write("                <th> Email</th>\n");
      out.write("                <th> Mobile</th>\n");
      out.write("                <th>Position</th>\n");
      out.write("                <th>Quantity</th>\n");
      out.write("                 \n");
      out.write("            </tr> \n");
      out.write("        \n");
      out.write("        ");

        try{
           
                   

            Class.forName("com.mysql.jdbc.Driver");
            Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/data?useSSL=false","root","");
            Statement st=con.createStatement();
            
            String str="select * from company";
            ResultSet rs=st.executeQuery(str);
            while(rs.next()){
                
      out.write("\n");
      out.write("                <tr>           \n");
      out.write("    \n");
      out.write("    <td>");
      out.print(rs.getString("company"));
      out.write(" </td>\n");
      out.write("    <td>");
      out.print(rs.getString("EmailID"));
      out.write(" </td>\n");
      out.write("    <td>");
      out.print(rs.getString("Mobile"));
      out.write(" </td>\n");
      out.write("    <td>");
      out.print(rs.getString("position"));
      out.write(" </td>\n");
      out.write("    <td>");
      out.print(rs.getString("quantity"));
      out.write(" </td>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    ");

            }
            
        }catch(Exception e){
            
}
      out.write("\n");
      out.write("   </table>   \n");
      out.write("   </div>  \n");
      out.write("   <br>\n");
      out.write("   <br>\n");
      out.write("   <center>\n");
      out.write("   <div>\n");
      out.write("   <h3>Match Student</h3>\n");
      out.write("   <form action=\"JOB\" method=\"post\">\n");
      out.write("<table align=\"center\" cellpadding = \"10\">\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("<td>ID</td>\n");
      out.write("<td><input type=\"text\" name=\"ID\" maxlength=\"100\" placeholder=\"GAM..\"/></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("<td>Student</td>\n");
      out.write("<td><input type=\"text\" name=\"FirstName\" maxlength=\"100\" placeholder=\"Isuru\"/></td>\n");
      out.write("</tr>\n");
      out.write("<!------------------------ Last Name --------------------------------------->\n");
      out.write("<tr>\n");
      out.write("<td>Company</td>\n");
      out.write("<td><select name=\"company\" id=\"Company\">\n");
      out.write("<option value=\"-1\">Company:</option>\n");
      out.write("<option value=\"OpenArc\">Open Arc</option>\n");
      out.write("<option value=\"EpicLanka\">Epic Lanka</option>\n");
      out.write("<option value=\"Millenium\">Millenium IT software (Private) Limited</option>\n");
      out.write("<option value=\"Allion\">Allion Technologies</option>\n");
      out.write("<option value=\"Asoft\">Asoft(Pvt)Limited</option>\n");
      out.write("<option value=\"Virtusa\">Virtusa Pvt Ltd</option>\n");
      out.write("<option value=\"IFS\">IFS R & D International PVT LTD</option>\n");
      out.write("</select></td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("<td>Position</td>\n");
      out.write("<td><select name=\"position\" id=\"position\">\n");
      out.write("<option value=\"-1\">Job Position:</option>\n");
      out.write("<option value=\"QA\">Quality Assurance</option>\n");
      out.write("<option value=\"BA\">Business Analyst</option>\n");
      out.write("<option value=\"PM\">Project Management</option>\n");
      out.write("<option value=\"SD\">Software Developer</option>\n");
      out.write("<option value=\"WD\">Web Developer</option>\n");
      out.write("<option value=\"SA\">Software Architect</option>\n");
      out.write("<option value=\"DA\">Database Administer</option>\n");
      out.write("<option value=\"FD\">Front-end Developer</option>\n");
      out.write("</select></td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("<td>Mobile</td>\n");
      out.write("<td><input type=\"mobile\" id=\"quantity\" name=\"mobile\" min=\"1\" max=\"100\">\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("<!----------------------- Submit and Reset ------------------------------->\n");
      out.write("<tr>\n");
      out.write("<td colspan=\"2\" align=\"center\">\n");
      out.write("<input type=\"submit\" value=\"Save\">\n");
      out.write("<input type=\"reset\" value=\"Cancel\">\n");
      out.write("</td>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</form>\n");
      out.write("   <a href=\"StudentSelect.jsp\"> View Selected </a>\n");
      out.write("\n");
      out.write("    </center>   \n");
      out.write("    </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
