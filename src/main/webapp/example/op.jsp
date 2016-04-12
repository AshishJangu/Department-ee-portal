<%-- 
    Document   : Student
    Created on : Apr 2, 2016, 8:13:33 AM
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
<!DOCTYPE html>
<%!
int rid;
Connection con;
PreparedStatement ps,ps1;
ResultSet rs,rs1;
Statement st;
String uname1;
int id;
float cgpa;
float att;
 String sub;
int ct1;
int ct2;
int model;
int attendence;
int stest;
int semester;
int total;

%>

<%
    
   
     Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://127.13.149.2:3306/department","adminRkEuhBn","b5u43VY_XpzV");
     
    
   String uname1=request.getParameter("username");
  rid=Integer.parseInt(request.getParameter("rid"));
  System.out.println(rid+"ridd");
   System.out.println(uname1);
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






%>
  
             
    
    
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LayoutStudent</title>
        <style>
            #menu8 {
                border-radius:10px;
                
	width: 150px;
        height:200px;
	margin-top: 10px;
        float:left;
       
}
	
#menu8 li a {
	text-decoration: none;
	height: 32px;
  	voice-family: "\"}\""; 
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
        <tiles:insert definition="welcome"/>
  

        
        <div >
        <div style="border-width:2px;border-style: ridge;border-radius:10px;padding-left:554px;font-family: sans-serif;font-weight: 900;font-size:larger;font-style:initial;border-color:black;width:780px;height:60px;background-color:greenyellow;">QUERY
        </div>
            </br>
            </br>
        <div id="menu8" >
  <ul>
      <div style="border:1px;border-style:ridge;border-color:black;border-radius:10px;background-color:greenyellow;">
      <li style=" "><a href="insertData.jsp?Id=<%=rid %>" title="Home">Add Subject</a></li>
      </div>
      <div style="border:1px;border-style:ridge;border-color:black;border-radius:10px;background-color:greenyellow;"> <li><a href="#2" title="About">Activate Student</a></li>
    </div>
      <div style="border:1px;border-style:ridge;border-color:black;border-radius:10px;background-color:greenyellow;"> 
          <li><a href="#3" title="Services">Deactivate Student</a></li></div>
    <li><a href="#4" title="Portfolio"></a></li>
    <li><a href="#5" title="Store"></a></li>
    <li><a href="#6" title="Download"></a></li>
  </ul>
</div>
           
        
      <div>   
        <table border="1" style="float:right;border-radius:10px;margin-right:150px;margin-top:40px;border: black;border-style: solid;height:100px;width:950px;">
            <tr style="width:10px;height:10px;" >
                <th >SUBJECT</th>
                <th>CT1</th>
                 <th>CT2</th>
                  <th>MODEL</th>
                  <th>STEST</th>
                    <th>ATTENDENCE MARKS</th>
                    
                    <th>SEMESTER</th>
                     <th>TOTAL</th>
                      <th>ATTENDENCE</th>
                       <th>UPDATE/DELETE</th>
            </tr> 
         
            <% 
            while(rs1.next())
            {
                sub=rs1.getString("subject");
                ct1=rs1.getInt("ct1");
                 ct2=rs1.getInt("ct2");
                  model=rs1.getInt("model");
                   stest=rs1.getInt("stest");
                    attendence=rs1.getInt("attendence");
                     semester=rs1.getInt("semester"); 
                     total=rs1.getInt("total");
                      id=rs1.getInt("Id");
                      att=rs1.getFloat("att");
                      cgpa=rs1.getFloat("cgpa");
                     
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
                           <%=rs1.getString("stest")%>
                    </td>
                    <td>
                       <%=rs1.getString("attendence")%>
                    </td>
                    <td>
                         <%=rs1.getString("semester")%>
                    </td>
                    <td>
                         <%=rs1.getString("total")%>
                    </td>
                     <td>
                         <%=rs1.getString("att")%>
                    </td>
                    <td>
                         <a href="update?subject=<%=sub%>&&id=<%=id%>&&ct1=<%=ct1%>&&ct2=<%=ct2%>&&stest=<%=stest%>&&attendence=<%=attendence%>&&model=<%=model%>&&semester=<%=semester%>&&total=<%=total%>&&cgpa=<%=cgpa%>&&att=<%=att%>">Update</a></br>
                         <a href="delete?subject=<%=sub%>&&id=<%=id%>">delete</a></br>
                           
                    </td>
                    
            </tr>    
            <%
            }
                %>
           
        </table>
     
        </div>
                <div style="font-family:arial;margin-top:200px;margin-left:600px;font-style:ridge;font-weight:bolder;font-size:30px;"> <a href="Faculty.jsp">go back</a></div>
    </body>
</html>
