<%-- 
    Document   : Facultymanager
    Created on : Apr 4, 2016, 4:47:19 PM
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
String uname1,Type;
int id;
String nameStu;
String cgpa;
String att;
%>
<s:set scope="request" var="uname" value="#session.name"/>
<%
    
   
     Class.forName("com.mysql.jdbc.Driver");
      con=DriverManager.getConnection("jdbc:mysql://127.13.149.2:3306/department","adminRkEuhBn","b5u43VY_XpzV");
    
   String uname1=request.getAttribute("uname").toString();
  String q="select * from nametoid";  
ps=con.prepareStatement(q);

rs=ps.executeQuery();
String q1="select * from facultyinfo";  
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
      
        <tiles:insert attribute="head"/>
        <div class='btn'>
                         
                        <a  style="ine-height: 1em;
                            display:inline-block;
                            text-decoration: none;
                            padding:5px;
                             padding-left:20px;
                    margin:0px;"href="logout">Logout</a>
                    </div>
        <div>
        
            <div name="bas" style="float:left;margin-top:40px;border: black;border-radius:20px;height:500px;width:300px;border-style: inset;">
              <tiles:insert attribute="fbasic"/>
        </div>
         <h2 style='color:yellow;'>Course and Section Details</h2>
       


 <table class="studentmngt">
            <tr class="stutr">
                <th class="stutd">Id</th>
                <th class="stutd">Qualification</th>
                <th class="stutd">Courses</th>
                 <th class="stutd">SectionGiven</th>
               
            </tr>
            <%  
            
            
while(rs1.next())
{
  
            %>
             <tr >
                <td class="stutd1"><%=rs1.getInt("Id")%></td>
                <td class="stutd1"><%=rs1.getString("qualification")%></td>
                
                <td class="stutd1"><%=rs1.getString("courses")%></td>
                <td class="stutd1"><%=rs1.getString("SectionGiven")%></td>
               
                
            </tr>
            
            
            <%
}
            %>
            
        </table>
         

















<h2 style='color:yellow;'>Student Modification</h2>

        <table class="studentmngt">
            <tr class="stutr">
                <th class="stutd">Id</th>
                <th class="stutd">Username</th>
                <th class="stutd">Operation</th>
                <th class="stutd">Deactivate/Delete Student</th>
            </tr>
            <%  
            
            
while(rs.next())
{
    id=rs.getInt("Id");
    nameStu=rs.getString("name");
     Type="3";
            %>
             <tr>
                <td class="stutd1"><%=id%></td>
                <td class="stutd1"><%=nameStu%></td>
                <td class="stutd1"><a href="op.jsp?username=<%=nameStu%>&&rid=<%=id%>">Query</a></td>
               
                <td class="stutd1"><a href="deactivate?Id=<%=id%>&&username=<%=nameStu%>&&Type=<%=Type%>" title="Services">Deactivate Student</a></td>
            </tr>
            
            
            <%
}
            %>
            
        </table>
            
            <hr><hr><hr>
       <a style='color:black;text-decoration: none;font-family: sans-serif; margin-left: 350px;width:150px; height:150px; background-color:red;border:2px solid white;font-size:50px;border-radius:12px; ' href="adminallnotices.jsp">View All Notices</a>
           
       <hr><hr><hr>
       
       
       <div id="notice">
                <h1 style='color:yellow; border: 2px solid white;background-color:black;border-radius: 25px;'>
                    NOTICE POST
                    
                </h1>
                <div class="noticeform">
                <s:form action="noticepost">
                    <s:textfield name="subject" label="subject" cssClass="sub"></s:textfield>
                    <s:textarea  name="body" rows="10" cols="90" label="Message" cssClass="msg"></s:textarea>  
                    
                    <s:submit value="POST" cssClass="btn"/>
                </s:form>
               </div> 
                
            </div>
       
        </div>
    </body>
</html>
