<%-- 
    Document   : Dataview
    Created on : Jun 29, 2023, 7:32:26 PM
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
        <title>HOD</title>
        <style>
            .div1{
                width: 50%;
                float: left;
            }
            .div{
                width: 50%;
                float: right;
            }
        </style>
    </head>
    <body>
         <a href="index.html"> Back </a>
    <center>
        <br>
        <center><h2>HOD MAINTAINANCE</h2></center><br>
        <div class="div1">
        <table border="1"  >
            <caption align="bottoom">Student Details</caption>
            <tr>
                <th> ID</th>
                <th> StudentName</th>
                <th> EmailID</th>
                <th> Mobile</th>
                <th>Gender</th>
                <th>dob</th>
                 <th>company</th>
            </tr> 
        
        <%
        try{
           
                   

            Class.forName("com.mysql.jdbc.Driver");
            Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/data?useSSL=false","root","");
            Statement st=con.createStatement();
            
            String str="select * from Student";
            ResultSet rs=st.executeQuery(str);
            while(rs.next()){
                %>
                <tr>           
    <td><%=rs.getString("FirstName")%> </td>
    <td><%=rs.getString("LastName")%> </td>
    <td><%=rs.getString("EmailID")%> </td>
    <td><%=rs.getString("Mobile")%> </td>
    <td><%=rs.getString("Gender")%> </td>
    <td><%=rs.getString("dob")%> </td>
     <td><%=rs.getString("position")%> </td>
    <td><%=rs.getString("company")%> </td></tr>
   
    
    <%
            }
            
        }catch(Exception e){
            
}%>
   </table>   
        </div>
   
   <div class="div2">
  
        <table border="1" >
            <caption align="bottoom">Company details</caption>
            <tr>
                <th> Company Name</th>
                <th> Email</th>
                <th> Mobile</th>
                <th>Position</th>
                <th>Quantity</th>
                 
            </tr> 
        
        <%
        try{
           
                   

            Class.forName("com.mysql.jdbc.Driver");
            Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/data?useSSL=false","root","");
            Statement st=con.createStatement();
            
            String str="select * from company";
            ResultSet rs=st.executeQuery(str);
            while(rs.next()){
                %>
                <tr>           
    
    <td><%=rs.getString("company")%> </td>
    <td><%=rs.getString("EmailID")%> </td>
    <td><%=rs.getString("Mobile")%> </td>
    <td><%=rs.getString("position")%> </td>
    <td><%=rs.getString("quantity")%> </td>
    
    
    <%
            }
            
        }catch(Exception e){
            
}%>
   </table>   
   </div>  
   <br>
   <br>
   <center>
   <div>
   <h3>Match Student</h3>
   <form action="JOB" method="post">
<table align="center" cellpadding = "10">

<tr>
<td>ID</td>
<td><input type="text" name="ID" maxlength="100" placeholder="GAM.."/></td>
</tr>
<tr>
<td>Student</td>
<td><input type="text" name="FirstName" maxlength="100" placeholder="Isuru"/></td>
</tr>
<!------------------------ Last Name --------------------------------------->
<tr>
<td>Company</td>
<td><select name="company" id="Company">
<option value="-1">Company:</option>
<option value="OpenArc">Open Arc</option>
<option value="EpicLanka">Epic Lanka</option>
<option value="Millenium">Millenium IT software (Private) Limited</option>
<option value="Allion">Allion Technologies</option>
<option value="Asoft">Asoft(Pvt)Limited</option>
<option value="Virtusa">Virtusa Pvt Ltd</option>
<option value="IFS">IFS R & D International PVT LTD</option>
</select></td>
</tr>


<tr>
<td>Position</td>
<td><select name="position" id="position">
<option value="-1">Job Position:</option>
<option value="QA">Quality Assurance</option>
<option value="BA">Business Analyst</option>
<option value="PM">Project Management</option>
<option value="SD">Software Developer</option>
<option value="WD">Web Developer</option>
<option value="SA">Software Architect</option>
<option value="DA">Database Administer</option>
<option value="FD">Front-end Developer</option>
</select></td>
</tr>

<tr>
<td>Mobile</td>
<td><input type="mobile" id="quantity" name="mobile" min="1" max="100">
</td>
</tr>

<!----------------------- Submit and Reset ------------------------------->
<tr>
<td colspan="2" align="center">
<input type="submit" value="Save">
<input type="reset" value="Cancel">
</td>

</tr>
</table>
</form>
   <a href="StudentSelect.jsp"> View Selected </a>

    </center>   
    </div>
    </body>
</html>
