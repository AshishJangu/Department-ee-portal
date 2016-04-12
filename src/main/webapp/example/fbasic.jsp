<%-- 
    Document   : basic
    Created on : Apr 2, 2016, 11:10:01 AM
    Author     : JANGU
--%>

<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.Toolkit"%>
<%@page import="java.awt.Image"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="org.apache.commons.io.FileUtils"%>
<%@page import="java.io.File"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
Connection con;
PreparedStatement ps,ps1;
ResultSet rs,rs1;
String uname1;
int id;
String pd;
String email;
String branch;
String section;
String cgpa;
String att;
Blob b;
ByteArrayOutputStream baos;
FileOutputStream fout;
InputStream is;
byte h[];
%>
<s:set scope="request" var="uname" value="#session.name"/>
<%
    
   try{
    Class.forName("com.mysql.jdbc.Driver");
      con=DriverManager.getConnection("jdbc:mysql://127.13.149.2:3306/department","adminRkEuhBn","b5u43VY_XpzV");
    uname1=request.getAttribute("uname").toString();
    System.out.println(uname1);
    String q="select Id from nametoid where name=?";  
    ps=con.prepareStatement(q);
    ps.setString(1,uname1);
    rs=ps.executeQuery();
    while(rs.next())
    {
        id=rs.getInt(1);
    }
    String q1="select * from login where username=?";  
    ps1=con.prepareStatement(q1);
    ps1.setString(1,uname1);
    rs1=ps1.executeQuery();
    while(rs1.next())
    {
        email=rs1.getString("email");branch=rs1.getString("branch");
        section=rs1.getString("section");
        pd=rs1.getString("password");
        b=rs1.getBlob("pic");
    }
 //for getting image from db and store it to req folder
/*
baos = new ByteArrayOutputStream();
h= new byte[1024];
is= b.getBinaryStream();
int n = 0;
while ((n=is.read(h))>=0)
{
   baos.write(h,0, n);
}
is.close();
h = baos.toByteArray(); 
/*
is=b.getBinaryStream(1,b.length());
    
 
  
fout=new FileOutputStream("C:\\Users\\JANGU\\Documents\\NetBeansProjects\\Department-E-portals\\web\\images\\+'uname1'+'.jpg'");  
 
fout.write(h);  
fout.close();
 */ 
        
        
   }
catch(Exception e)
{
    
}

%>
  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <font style="color:black;size:10px;font-family: sans-serif;font-size: large;font-style: initial;font-weight: bolder;padding-left:100px;">BASIC INFO</font>
   <hr  style="color:red;margin-top:10px;"/>     
 <img src="<%=request.getContextPath() %>/images/<%=uname1+".jpg"%>"
      width="114" height="110" style="margin-left:100px;" >
       
        <hr  style="color:red;margin-top:10px;"/>
     
        </br>
        </br>
        
        <font style="padding-left:10px;font-family: serif;font-size: medium;font-style: italic;font-weight: bold;"> NAME:<%=uname1%></font>
        </br>
        </br>
      
        <font style="padding-left:10px;font-family: serif;font-size: medium;font-style: italic;font-weight: bold;">REGISTER NO:<%=id%></font>
        </br>
        </br>
       
      <font style="padding-left:10px;font-family: serif;font-size: medium;font-style: italic;font-weight: bold;"> BRANCH:<%=branch%></font>
        </br>
        </br>
        
       <font style="padding-left:10px;font-family: serif;font-size: medium;font-style: italic;font-weight: bold;"> DOB:<%=section%></font>
        </br>
        </br>
       
        <font style="padding-left:10px;font-family: serif;font-size: medium;font-style: italic;font-weight: bold;"> PASSWORD:<%=pd%></font>
        </br>
         </br>
        
        <font style="padding-left:10px;font-family: serif;font-size: medium;font-style: italic;font-weight: bold;"> SUBJECTS:<%=pd%></font>




    </body>
</html>
