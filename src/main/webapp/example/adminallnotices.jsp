<%-- 
    Document   : Studentmanager
    Created on : Apr 2, 2016, 11:08:19 AM
    Author     : JANGU
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@taglib  uri="/WEB-INF/struts-tiles.tld" prefix="tiles"%>
<%@taglib  uri="/struts-tags"   prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
Connection con;
PreparedStatement ps,ps1,ps2;
ResultSet rs,rs1,rs2;
String uname1;
int id;
String cgpa;
String att;
%>

<%
    
   
     Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://127.13.149.2:3306/department","adminRkEuhBn","b5u43VY_XpzV");
     
  






String q2="select  * from notice";

ps2=con.prepareStatement(q2);

rs2=ps2.executeQuery();





%>
  
             
    
    
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LayoutStudent</title>
    </head>
    <body>
 
  
      
        <tiles:insert definition="welcome"/>
        
       
          
           
           <div>
            <h1>All Notices</h1>
            <% 
            while(rs2.next())
            {
            %>
            <div style="border:1px;border-style: ridge;border-color:green;background-color: azure;width:950px;border-radius:10px;">
                <center>SRM UNIVERSITY</center>
                                                          
Date:<%=rs2.getString("date")%>
                             
<center><h3>Subject:<%=rs2.getString("subject")%></h3></center>
                  <p>
                      <%=rs2.getString("body")%></p>
                  <%=rs2.getString("author")%></br>
(Faculty)            
</div>
            <% 
            }
            %>
        </div>
        <a href="Admin.jsp">go Back</a>
      
    </body>
</html>
