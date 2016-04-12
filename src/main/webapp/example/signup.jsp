<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : signup
    Created on : Apr 1, 2016, 8:39:56 PM
    Author     : JANGU
--%>
<%@taglib  uri="/struts-tags"  prefix="s"%>
<%@taglib  uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <style>
             
            #s1,#s2{
  margin:40px auto;
  width:70px;
}
input{
  background-color: white;
  border: none;
  border-radius: 5px;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -webkit-box-shadow: 0px 2px 0px rgba(0, 0, 0, 0.5);
  -moz-box-shadow: 0px 2px 0px rgba(0, 0, 0, 0.5);
  box-shadow: 0px 2px 0px rgba(0, 0, 0, 0.5);
  color: black;
  cursor: pointer;
  font-family: 'Nobile',sans-serif;
  font-style: italic;
  font-weight: 900;
  margin:0px 0px;
  padding: 7px 20px;
  &:hover {
    background-color: lighten(#000, 20%);
  }
    &:active {
        -webkit-box-shadow: inset 0px 2px 2px rgba(0, 0, 0, 1);
  -moz-box-shadow: inset 0px 2px 2px rgba(0, 0, 0, 1);
  box-shadow: inset 0px 2px 2px rgba(0, 0, 0, 1);
        margin-top:2px;
    -webkit-transition: all 0.1s ease;
    -moz-transition:    all 0.1s ease;
    -ms-transition:     all 0.1s ease;
    -o-transition:      all 0.1s ease;
    }
}
               
               
               
               
           
            .loginf{
                  padding-top:0px;
                  padding-left:40px;
                  color: black;
                 
               
                  font-family: monospace;
                 font-weight: bolder;
                 font-size:20px;
                 letter-spacing:1px;
                
              
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

#g1{
    border:1px solid black;
    border-radius: 12px;
    font-family: serif;
    font-size: 18px;
    width:120px;
    font-family: 'Nobile',sans-serif;
    font-style: italic;
    font-weight: 900;
}           
            
            
            
            
 .logform{
    padding-top:0px;
    padding-left:40px;
    color: black;
    font-family: monospace;
    font-weight: bolder;
    font-size:20px;
    letter-spacing:1px;   
    }
.login{
    padding-top:30px;
    padding-left:40px;
    color: green;
    font-family:sans-serif;
    font-weight: bolder;
    font-size:20px;
    letter-spacing:0px;       
    }
.headertbl{
    background-color:blue;
    width:100%;
    height:100px;
    border:1px solid white;
    border-radius:60px ;
     background-image:url('Image/headbg4.jpg');
    background-repeat:no-repeat;
    background-size: 1500px 110px;
            }
.leftlogo{           
    height:100px;
    width:100px;
    border:1px solid white;
    background-image:url('Image/logo.png');
    background-repeat:no-repeat;
    background-size: 100px 100px;
    border-radius:60px;
}
.middlelogo{
    height:100px;
    width:600px;
    
    border-radius:60px;
    text-align: center;
    margin-left: 600px;
    height: 90px;
    line-height: 90px; 
}
.rightlogo{           
    height:100px;
    width:200px;
   
}
            
    </style> 
    </head>
     <body>
         <tiles:insert definition="welcome"/>
    <center>
        <div  >
            <s:form action="saveDb" cssClass="loginf" enctype="multipart/form-data" method="post">
                <p style="padding-left:165px; font-size:20px;"> Registration </p>
                <s:textfield name="username" label="Username"></s:textfield>
               
                <s:password name="password" label="Password"></s:password>
               
                <s:select list="#{'1':'Admin', '2':'Student', '3':'Faculty'}" label="Type" id="g1"    name="Type"></s:select>
                <s:textfield  name="email" label="Email"></s:textfield>
                  <s:textfield name="branch" label="Branch"></s:textfield>
                   <s:textfield name="section" label="Section"></s:textfield>
                   <s:file label="upload image" name="pic"/>
                   <s:submit cssStyle="margin-right:255px;margin-top:20px;"/>
            </s:form> 
                
    </div>
    </center>
    <a  style="ine-height: 1em;
    display:inline-block;
    text-decoration: none;
    padding:5px;
      padding-left:900px;
    margin:1px;" href="/Department-ee-portal/">Back To Login Page</a> 
    </body>
</html>
