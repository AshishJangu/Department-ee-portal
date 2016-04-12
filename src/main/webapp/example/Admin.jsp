<%-- 
    Document   : Faculty
    Created on : Apr 2, 2016, 8:13:42 AM
    Author     : JANGU29
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
<title>Department E Portal</title>
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
body{
    width:95%;
    height:100%;
    background-color:white;
    background-image: url('../Image/bg3.jpg');
    background-repeat: no-repeat;
    background-size: 1500px 700px;
    background-attachment: fixed;
}
   .studentmngt
            {
               
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
       

        </style>
    </head>
    <body>
      
         <tiles:insert definition="Admindef"/>
         <a style='color:black;text-decoration: none;font-family: sans-serif; margin-left: 350px;width:150px; height:150px; background-color:red;border:2px solid white;font-size:50px;border-radius:12px; ' href="adminallnotices.jsp">View All Notices</a>
         
         <center>
 <h1 style='color:yellow;'>Admin Management</h1>
         <table class='studentmngt'>
            <tr class='stutr'>
                <th class='stutd'>Id</th>
                <th class='stutd'>Name</th>
                
                <th class='stutd'>Deactivate/Delete Admin</th>
            </tr>
            <%  
            
            
while(rs1.next())
{
  id=rs1.getInt("Id");
    nameStu=rs1.getString("name");
            %>
             <tr >
                <td class='stutd1'><%=rs1.getInt("Id")%></td>
                <td class='stutd1'><%=rs1.getString("name")%></td>
                
              
               <td class='stutd1'><a href="deactivateAdmin?Id=<%=id%>&&username=<%=nameStu%>" title="Services">Deactivate Admin</a></td>
            </tr>
            
            
            <%
}
            %>
            
        </table>
         
 
         
         
 <hr>        
         
         <h1 style='color:yellow;'>Faculty Management</h1>
         
         
         
         <table class='studentmngt'>
            <tr class='stutr' ">
                <th class='stutd'>Id</th>
                <th class='stutd'>Name</th>
                
                <th class='stutd'>Deactivate/Delete Faculty</th>
            </tr>
            <%  
            
            
while(rs.next())
{
  id=rs.getInt("Id");
    nameStu=rs.getString("name");
            %>
             <tr>
                <td class='stutd1'><%=rs.getInt("Id")%></td>
                <td class='stutd1'><%=rs.getString("name")%></td>
                
              
               <td class='stutd1'><a href="deactivateFaculty?Id=<%=id%>&&username=<%=nameStu%>" title="Services">Deactivate Faculty</a></td>
            </tr>
            
            
            <%
}
            %>
            
        </table>
         
     </center>      
      <hr>   
         <div id="menu8" >
  
     <hr>
      <div style="border:1px;border-style:ridge;border-color:black;border-radius:10px;background-color:greenyellow;"> <li><a href="activateuser.jsp?Type=1" title="About">Activate Student</a></li>
    </div>
      <hr>
       <div style="border:1px;border-style:ridge;border-color:black;border-radius:10px;background-color:greenyellow;"> <li><a href="activatefaculty.jsp" title="About">Activate Faculty</a></li>
    </div>
       <hr>
        <div style="border:1px;border-style:ridge;border-color:black;border-radius:10px;background-color:greenyellow;"> <li><a href="activateAdmin.jsp" title="About">Activate Admin</a></li>
    </div>  
        <hr> 
    <ul>
    <li><a href="#4" title="Portfolio"></a></li>
    <li><a href="#5" title="Store"></a></li>
    <li><a href="#6" title="Download"></a></li>
  </ul>
</div>
    </body>
</html>
