<%-- 
    Document   : activateuser
    Created on : Apr 6, 2016, 10:15:17 AM
    Author     : JANGU
--%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<%!
Connection con;
PreparedStatement ps,ps1;
ResultSet rs,rs1;
String uname1;
int id;
String nameStu;
String cgpa;
String att;
String  Type;
%>
<%
    
   
     Class.forName("com.mysql.jdbc.Driver");
      con=DriverManager.getConnection("jdbc:mysql://127.13.149.2:3306/department","adminRkEuhBn","b5u43VY_XpzV");
     
    
   
  String q="select username,activate from login where activate=? && Type=?";  
ps=con.prepareStatement(q);
ps.setString(1,"false");
ps.setInt(2,2);
rs=ps.executeQuery();
Type=request.getParameter("Type");
System.out.println(Type+"uuuuuuuuuuuuuuuuuu");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Department E-Portal</title>
        <style>
                       .studentmngt
            {
                margin-left:400px;
                border:3px solid; 
                border-radius: 12px;
                height:50px;
                width:800px;
                background-color:blue;
                color:white;
               
            }
            .stutr
            {
                border: 1px solid grey;
                border-radius: 12px;
                background-color:black;
                color:white;
                font-size: 20px;
            }
            .stutd
            {
                border: 1px solid grey;
                border-radius: 12px;
                background-color:black;
                color:white;
                font-size: 20px;
                text-align: center;
            }
            .stutd1
            {
                color:white;
                font-size: 20px;
                text-align: center;
            }
 
a:link {
    
    color: white;
}

/* visited link */
a:visited {
    color: green;
}


a:active {
    color: white;
}
.stutd1:hover {
    background-color: lightgreen;
}
.noticeform
{
    background-color:grey;
    margin-left: 50px;
    border: 1px solid;
    border-radius:12px;
    color:white;
    font-size: 30px;
}
.sub
{
    font-family: sans-serif;
    font-size: 30px;
    border:2px solid;
    height:30px;
    color:black;
    width:900px;
    background-color:white;
    border-radius:12px;
    
}
.msg
{
     border:2px solid;
    color:black;
    background-color:white;
    border-radius:12px;
    font-family: sans-serif;
    font-size: 20px;
}
.btn
{
    border:2px solid; 
    color:white;
    background-color:black;
    border-radius:12px;
    font-family: sans-serif;
    font-size: 20px;
}
    .box
    {
      border:2px solid; 
    
    border-radius:12px;
    font-family: sans-serif;
    font-size: 20px;  
    }
            
        </style>
    </head>
    <body>
        <tiles:insert definition="welcome"/>
           <table class="studentmngt">
            <tr class="stutr">
               
                <th class="stutd">Username</th>
              
                <th class="stutd">Active</th>
                <th class="stutd">operaion</th>
            </tr>
            <%  
            
            
while(rs.next())
{
   String username=rs.getString("username");

            %>
             <tr>
                  
                <td class="stutd1"><%=rs.getString("username")%></td>
                <td class="stutd1"><%=rs.getString("activate")%></td>
                <td class="stutd1">
                    
                    <s:form action="activate">
                        <s:textfield name="Id" label="enter id for new user" cssClass="box"></s:textfield>
                        <s:textfield name="username" label="enter name for new user" cssClass="box"></s:textfield>
                       
                          <s:submit value="activate" cssClass="btn"/>
             </s:form>
            </tr>
            
            
            <%
}
            %>
            
        </table>
    </body>
</html>
