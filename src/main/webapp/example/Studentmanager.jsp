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
<s:set scope="request" var="uname" value="#session.name"/>
<%
    
   
     Class.forName("com.mysql.jdbc.Driver");
      con=DriverManager.getConnection("jdbc:mysql://127.13.149.2:3306/department","adminRkEuhBn","b5u43VY_XpzV");
     
    
   String uname1=request.getAttribute("uname").toString();
  String q="select Id from nametoid where name=?";  
ps=con.prepareStatement(q);
ps.setString(1,uname1);
rs=ps.executeQuery();

while(rs.next())
{
    id=rs.getInt(1);
    System.out.println(id);
}





String q1="select * from score where Id=?";  
ps1=con.prepareStatement(q1);
ps1.setInt(1,id);
rs1=ps1.executeQuery();

String q2="select  * from notice order by id desc LIMIT 1";

ps2=con.prepareStatement(q2);

rs2=ps2.executeQuery();





%>
  
             
    
    
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LayoutStudent</title>
        <style>
            .btn
{
    border:2px solid; 
    color:white;
    background-color:black;
    border-radius:12px;
    font-family: sans-serif;
    font-size: 20px;
}
        </style>
    </head>
    <body>
        <tiles:insert attribute="head"/>
        <div>
            <div class='btn'>
                         
                        <a  style="ine-height: 1em;
                            display:inline-block;
                            text-decoration: none;
                            padding:5px;
                             padding-left:20px;
                    margin:0px;"href="logout">Logout</a>
                    </div>
            
        
            <div name="bas" style="float:left;margin-top:40px;border: black;border-radius:20px;height:500px;width:300px;border-style: inset;">
              <tiles:insert attribute="basic"/>
        </div>
        
      
        <div>
            <h1>Notice</h1>
            <% 
            while(rs2.next())
            {
            %>
            <div >
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
        <a href="allnotices.jsp">view all notices</a>
        <div>
             <table border="1" style="border-radius:10px;margin-left:0px;margin-top:40px;border: black;border-style: solid;height:50px;width:950px;">
            <tr style="width:10px;height:10px;" >
                <th >SUBJECT</th>
                <th>CT1</th>
                 <th>CT2</th>
                  <th>MODEL</th>
                  
                    <th>ATTENDENCE</th>
                     <th>STEST</th>
                     <th>SEMESTER</th>
                     <th>TOTAL</th>
            </tr> 
            <%
            
            while(rs1.next())
{
    
          

            %>
                <tr  style="width:20px;height:10px;">
                    <td>
                          <%=rs1.getString("subject")%>
                    </td>
                     
                    <td>
                       <%=rs1.getString("ct1")%>
                    </td>
                    <td>
                        <%=rs1.getString("ct2")%>
                    </td> 
                    <td>
                         <%=rs1.getString("model")%>
                    </td>
                    <td>
                      <%=rs1.getString("attendence")%>
                    </td>
                    <td>
                         <%=rs1.getString("stest")%>
                    </td>
                    <td>
                         <%=rs1.getString("semester")%>
                    </td>
                    <td>
                        <%=rs1.getString("total")%>
                    </td>
            </tr>    
             
            <%
}
            %>  
        </table>
        </div>
    </body>
</html>
