<%-- 
    Document   : StudentSelect
    Created on : Jun 29, 2023, 10:57:30 PM
    Author     : User
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Selected students</title>
    </head>
    <body>
        <a href="Dataview.jsp"> Back </a>
     <center>
        <br>
        <center><h2>HOD MAINTANCE</h2></center><br>
        <div class="div1">
        <table border="1"  >
            <caption align="bottoom">Matched Student Details</caption><br>
            <tr>
                <th> ID</th>
                <th> StudentName</th>
                <th> Company</th>
                <th> Position</th>
                <th>mobile</th>
                
            </tr> 
        
        <%
        try{
           
                   

            Class.forName("com.mysql.jdbc.Driver");
            Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/data?useSSL=false","root","");
            Statement st=con.createStatement();
            
            String str="select * from selected";
            ResultSet rs=st.executeQuery(str);
            while(rs.next()){
                %>
                <tr>           
    <td><%=rs.getString("ID")%> </td>
    <td><%=rs.getString("FirstName")%> </td>
    <td><%=rs.getString("company")%> </td>
    <td><%=rs.getString("position")%> </td>
    <td><%=rs.getString("mobile")%> </td>
    <td><a href=" ">Edit </a></td>
                 <td><a href="">Delete</a> </td>
    
    
    <%
            }
            
        }catch(Exception e){
            
}%>
   </table>   
        </body>
</html>
