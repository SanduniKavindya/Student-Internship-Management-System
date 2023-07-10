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
        <style>
            #backButton {
background-color: #ED0BB6;
color: white;
padding: 10px 20px;
border: none;
cursor: pointer;
font-size: 16px;
BACK TO DO}
            
            body{
                background: rgb(203,230,232);
background: linear-gradient(90deg, rgba(203,230,232,1) 0%, rgba(181,227,223,1) 54%, rgba(121,161,227,0.9248949579831933) 100%);
            }
        </style>
    </head>
    <body>
        <button id="backButton">
         <a href="Dataview.jsp" style="text-decoration:none;"> Go Back</a></button>
     <center>
        <br>
        <center><h2>HOD MAINTENANCE</h2></center><br>
        <div class="div1">
        <table border="1"  >
            <caption align="bottoom"><b>Matched Student Details</b></caption><br>
            <tr>
                <th> ID</th>
                <th> StudentName</th>
                <th> Company</th>
                <th> Position</th>
                <th>mobile</th>
                <th colspan="2">Action</th>
                
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
