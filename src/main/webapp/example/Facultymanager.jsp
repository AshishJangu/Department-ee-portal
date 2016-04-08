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
String uname1;
int id;
String nameStu;
String cgpa;
String att;
%>
<s:set scope="request" var="uname" value="#session.name"/>
<%
    
   
     Class.forName("com.mysql.jdbc.Driver");
      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/department","root","root");
     
    
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
        
    </head>
    <body>
      
        <tiles:insert attribute="head"/>
        <div>
        <div style="border-width:2px;border-style: ridge;border-radius:10px;padding-left:554px;font-family: sans-serif;font-weight: 900;font-size:larger;font-style:initial;border-color:black;width:780px;height:60px;background-color:greenyellow;">Faculty HOME
        </div>
            <div name="bas" style="float:left;margin-top:40px;border: black;border-radius:20px;height:500px;width:300px;border-style: inset;">
              <tiles:insert attribute="fbasic"/>
        </div>
        <div style="font-style: italic;font-weight: bold;font-family: sans-serif;padding-left:370px;">
            </br>
            </br>
           Designation:
        </br>
        </br>
        ATTENDENCE%: 
        </div>

 <table border="1px" style="margin-left:400px;margin-top:100px;border:1px;border-style: solid;height:50px;width:600px;border-color:black;">
            <tr style="border:1px;border-color:black;border-style:solid; ">
                <th>Id</th>
                <th>Qualification</th>
                <th>Courses</th>
                 <th>SectionGiven</th>
               
            </tr>
            <%  
            
            
while(rs1.next())
{
  
            %>
             <tr>
                <td><%=rs1.getInt("Id")%></td>
                <td><%=rs1.getString("qualification")%></td>
                
                <td><%=rs1.getString("courses")%></td>
                <td><%=rs1.getString("SectionGiven")%></td>
               
                
            </tr>
            
            
            <%
}
            %>
            
        </table>
         



















        <table border="1px" style="margin-left:400px;margin-top:100px;border:1px;border-style: solid;height:50px;width:600px;border-color:black;">
            <tr style="border:1px;border-color:black;border-style:solid; ">
                <th>Id</th>
                <th>Username</th>
                <th>Operation</th>
                <th>Deactivate/Delete Student</th>
            </tr>
            <%  
            
            
while(rs.next())
{
    id=rs.getInt("Id");
    nameStu=rs.getString("name");

            %>
             <tr>
                <td><%=id%></td>
                <td><%=nameStu%></td>
                <td><a href="op.jsp?username=<%=nameStu%>&&rid=<%=id%>">Query</a></td>
               
                <td><a href="deactivate?Id=<%=id%>&&username=<%=nameStu%>" title="Services">Deactivate Student</a></td>
            </tr>
            
            
            <%
}
            %>
            
        </table>
       <a href="adminallnotices.jsp">view all notices</a>
            <div id="notice">
                <h1>
                    NOTICE POST
                    
                </h1>
                <s:form action="noticepost">
                    <s:textfield name="subject" label="subject"></s:textfield>
                    <s:textarea  name="body" rows="20" cols="100"></s:textarea>  
                    
                    <s:submit value="POST"/>
                </s:form>
                
                
            </div>
       
        </div>
    </body>
</html>
