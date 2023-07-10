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
                float:right
            }
            h2{
                margin-top: 2px;
            }
            
            body {
background: rgb(203,230,232);
background: linear-gradient(90deg, rgba(203,230,232,1) 0%, rgba(227,240,239,1) 60%, rgba(105,203,226,0.9248949579831933) 100%);
  background-size: 100% 100%;
}
input[type=submit] {
 padding: 5px 15px;
        background: #05F62A;
        border: 0 none;
        cursor: pointer;
        -webkit-border-radius: 5px;
        border-radius: 5px;
		font-weight: bold;
}
input[type=reset]{
padding: 5px 15px;
        background: #08F8F4;
        border: 0 none;
        cursor: pointer;
        -webkit-border-radius: 5px;
        border-radius: 5px;
		font-weight: bold;
		}
            
            #backButton {
background-color: #ED0BB6;
color: white;
padding: 10px 20px;
border: none;
cursor: pointer;
font-size: 16px;
BACK TO DO
           
           }
        </style>
    </head>
    <body>
        <button id="backButton">
         <a href="index.html" style="text-decoration:none;"> Go Back</a></button>
    <center>
        <br>
        <center><h2>HOD MAINTENANCE</h2></center><br>
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
<tr>
<td colspan="2" align="center">
<input type="submit" value="Save">
<input type="reset" value="Cancel">
</td>

</tr>
</table>
</form>
   <a href="StudentSelect.jsp"> View Selected </a>

     
    </div>

        <br> <br> <br>
        
        <div class="div1">
        <table border="1"  >
            <caption align="bottoom"><b>Student Details</b></caption>
            <tr>
                <th> ID</th>
                <th> StudentName</th>
                <th> Email</th>
                <th> Mobile</th>
                <th>Gender</th>
                <th>dob</th>
                 <th>position</th>
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
    <td><%=rs.getString("stuID")%> </td>
    <td><%=rs.getString("Name")%> </td>
    <td><%=rs.getString("Email")%> </td>
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
            <caption align="bottoom"><b>Company details<b></caption>
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
   
   
<!----------------------- Submit and Reset ------------------------------->

    </body>
</html>
