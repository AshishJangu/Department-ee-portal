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

        </style>
    </head>
    <body>
       
         <tiles:insert definition="facultydef"/>
       
        <div id="menu8" >
  <ul>
     
      <div style="border:1px;border-style:ridge;border-color:black;border-radius:10px;background-color:greenyellow;"> <li><a href="activateuser.jsp" title="About">Activate Student</a></li>
    </div>
    
    <li><a href="#4" title="Portfolio"></a></li>
    <li><a href="#5" title="Store"></a></li>
    <li><a href="#6" title="Download"></a></li>
  </ul>
</div>
    </body>
</html>
