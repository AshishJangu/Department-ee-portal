<%-- 
    Document   : Faculty
    Created on : Apr 2, 2016, 8:13:42 AM
    Author     : JANGU
--%>
<%@taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
       
         <tiles:insert definition="facultydef"/>
       
        <div id="menu8" >
  <ul>
     
      <div style="border:1px;border-style:ridge;border-color:black;border-radius:10px;background-color:greenyellow;"> <li><a href="activateuser.jsp?Type='3'" title="About">Activate Student</a></li>
    </div>
    
    <li><a href="#4" title="Portfolio"></a></li>
    <li><a href="#5" title="Store"></a></li>
    <li><a href="#6" title="Download"></a></li>
  </ul>
</div>
    </body>
</html>
