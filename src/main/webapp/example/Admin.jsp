<%-- 
    Document   : Faculty
    Created on : Apr 2, 2016, 8:13:42 AM
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
      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/department","root","root");
     
    
   
  String q="select * from fnametoid";  
ps=con.prepareStatement(q);

rs=ps.executeQuery();

String q1="select * from anametoid";  
ps1=con.prepareStatement(q1);

rs1=ps1.executeQuery();

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
               <style>
            #menu8 {
                border-radius:10px;
                
	width: 150px;
        height:200px;
	margin-top: 0px;
        margin-left:600px;
        
       
}
	
#menu8 li a {
	text-decoration: none;
	height: 32px;
  	voice-family: "\"; 
  	voice-family: inherit;
  	height: 24px;
}
	
#menu8 li a:link, #menu8 li a:visited {
	color: #777;
	display: block;
	background: url(images/menu8.gif);
	padding: 8px 0 0 20px;
}
	
#menu8 li a:hover {
	color: #257EB7;
	background: url(images/menu8.gif) 0 -32px;
	padding: 8px 0 0 25px;
}
	
#menu8 li a:active {
	color: #fff;
	background: url(images/menu8.gif) 0 -64px;
	padding: 8px 0 0 25px;
}

#menu8 ul {
	list-style: none;
      
	margin: 0;
	padding: 0;
}

        </style>
    </head>
    <body>
      
         <tiles:insert definition="facultydef"/>
         <a href="adminallnotices.jsp">view all notices</a>
       
         <table border="1px" style="margin-left:400px;margin-top:100px;border:1px;border-style: solid;height:50px;width:600px;border-color:black;">
            <tr style="border:1px;border-color:black;border-style:solid; ">
                <th>Id</th>
                <th>Name</th>
                
                <th>Deactivate/Delete Admin</th>
            </tr>
            <%  
            
            
while(rs1.next())
{
  id=rs1.getInt("Id");
    nameStu=rs1.getString("name");
            %>
             <tr>
                <td><%=rs1.getInt("Id")%></td>
                <td><%=rs1.getString("name")%></td>
                
              
               <td><a href="deactivateAdmin?Id=<%=id%>&&username=<%=nameStu%>" title="Services">Deactivate Admin</a></td>
            </tr>
            
            
            <%
}
            %>
            
        </table>
         
 
         
         
         
         
         
         
         
         
         <table border="1px" style="margin-left:400px;margin-top:100px;border:1px;border-style: solid;height:50px;width:600px;border-color:black;">
            <tr style="border:1px;border-color:black;border-style:solid; ">
                <th>Id</th>
                <th>Name</th>
                
                <th>Deactivate/Delete Faculty</th>
            </tr>
            <%  
            
            
while(rs.next())
{
  id=rs.getInt("Id");
    nameStu=rs.getString("name");
            %>
             <tr>
                <td><%=rs.getInt("Id")%></td>
                <td><%=rs.getString("name")%></td>
                
              
               <td><a href="deactivateFaculty?Id=<%=id%>&&username=<%=nameStu%>" title="Services">Deactivate Faculty</a></td>
            </tr>
            
            
            <%
}
            %>
            
        </table>
         
           
         
         <div id="menu8" >
  <ul>
     
      <div style="border:1px;border-style:ridge;border-color:black;border-radius:10px;background-color:greenyellow;"> <li><a href="activateuser.jsp" title="About">Activate Student</a></li>
    </div>
       <div style="border:1px;border-style:ridge;border-color:black;border-radius:10px;background-color:greenyellow;"> <li><a href="activatefaculty.jsp" title="About">Activate Faculty</a></li>
    </div>
        <div style="border:1px;border-style:ridge;border-color:black;border-radius:10px;background-color:greenyellow;"> <li><a href="activateAdmin.jsp" title="About">Activate Admin</a></li>
    </div>  
    
    <li><a href="#4" title="Portfolio"></a></li>
    <li><a href="#5" title="Store"></a></li>
    <li><a href="#6" title="Download"></a></li>
  </ul>
</div>
    </body>
</html>
