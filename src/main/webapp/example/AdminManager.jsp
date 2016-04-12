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
        </style>
    </head>
    <body>
      
        <tiles:insert attribute="head"/>
        <div>
        
            <div name="bas" style="float:left;margin-top:40px;border: black;border-radius:20px;height:500px;width:300px;border-style: inset;">
              <tiles:insert attribute="fbasic"/>
        </div>
        <!----------------------LOGOUT BUTTON------------->
       
                    <div class='btn'>
                         
                        <a  style="ine-height: 1em;
                            display:inline-block;
                            text-decoration: none;
                            padding:5px;
                             padding-left:20px;
                    margin:0px;"href="logout">Logout</a>
                    </div>
       
        
<h2 style='color:yellow;'>Course and Section Details:</h2>
 <table class='studentmngt'>
            <tr class='stutr'>
                <td class='stutd'>Id</td>
                <td class='stutd'> Qualification</td>
                <td class='stutd'>Courses</td>
                 <td class='stutd'>SectionGiven</td>
               
            </tr>
            <%  
            
            
while(rs1.next())
{
  
            %>
             <tr>
                <td class='stutd1'><%=rs1.getInt("Id")%></td>
                <td class='stutd1'><%=rs1.getString("qualification")%></td>
                <td class='stutd1'><%=rs1.getString("courses")%></td>
                <td class='stutd1'><%=rs1.getString("SectionGiven")%></td>
               <tr ><td colspan="4"><hr></td></tr>
                
            </tr>
            
            
            <%
}
            %>
            
        </table>
         







<h2 style='color:yellow;'>Student Management:</h2>

        <table class="studentmngt">
            <tr class="stutr">
                <td class="stutd">Id</td>
                <td class="stutd">Username</td>
                <td class="stutd">Operation</td>
                <td class="stutd">Deactivate/Delete Student</td>
            </tr>
            <%  
            
            
while(rs.next())
{
    id=rs.getInt("Id");
    nameStu=rs.getString("name");
     Type="1";
            %>
             <tr>
                <td class="stutd1"><%=id%></td>
                <td class="stutd1"><%=nameStu%></td>
                <td class="stutd1"><a  href="op.jsp?username=<%=nameStu%>&&rid=<%=id%>">Query</a></td>
               
                <td class="stutd1"> <a href="deactivate?Id=<%=id%>&&username=<%=nameStu%>&&Type=<%=Type%>" title="Services">Deactivate Student</a></td>
          
             </tr>
            <tr ><td colspan="4"><hr></td></tr>
            
            <%
}
            %>
            
        </table>
            <hr><hr>
       <a style='color:black;text-decoration: none;font-family: sans-serif; margin-left: 350px;width:150px; height:150px; background-color:red;border:2px solid white;font-size:50px;border-radius:12px; ' href="adminallnotices.jsp">View All Notices</a>
       <hr><hr>     
       <center>
       <div id="notice">
                <h1 style='color:yellow; border: 2px solid white;background-color:black;border-radius: 25px;'>
                    NOTICE POST
                </h1>
           <div class="noticeform">
                <s:form action="noticepost" >
                    <s:textfield name="subject" label="Subject" cssClass="sub"></s:textfield>
                    <s:textarea  name="body" rows="10" cols="90" label="Notice Message" cssClass="msg"></s:textarea>  
                    
                    <s:submit value="POST" cssClass="btn"/>
                </s:form>
             </div>   
        <hr>        
            </div>
       </center >
        </div>
    </body>
</html>
