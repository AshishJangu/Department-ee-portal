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
%>
<%
    
   
     Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://127.13.149.2:3306/department","adminRkEuhBn","b5u43VY_XpzV");
   
  String q="select username,activate from login where activate=? && Type=?";  
ps=con.prepareStatement(q);
ps.setString(1,"false");
ps.setInt(2,3);
rs=ps.executeQuery();

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <tiles:insert definition="welcome"/>
           <table border="1px" style="margin-left:400px;margin-top:100px;border:1px;border-style: solid;height:50px;width:600px;border-color:black;">
            <tr style="border:1px;border-color:black;border-style:solid; ">
               
                <th>Username</th>
              
                <th>Active</th>
                <th>operaion</th>
            </tr>
            <%  
            
            
while(rs.next())
{
   String username=rs.getString("username");

            %>
             <tr>
                  
                <td><%=rs.getString("username")%></td>
                <td><%=rs.getString("activate")%></td>
                <td>
                    
                    <s:form action="activateFaculty">
                      
                          <s:textfield name="username" label="enter name for new user"></s:textfield>
                        <s:submit value="activate"/>
             </s:form>
            </tr>
            
            
            <%
}
            %>
            
        </table>
    </body>
</html>
