<%-- 
    Document   : login
    Created on : Apr 1, 2016, 8:39:45 PM
    Author     : JANGU
--%>
<%@taglib  uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
 <%@taglib prefix="s"  uri="/struts-tags"%>
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
          a {
  text-decoration: inherit;
  font-style: inherit;
  color: inherit;
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
        
           
        </style>
          
   
    </head>
    <body >
        
         <tiles:insert definition="welcome"/>
         <div>
              <div id="s2"  style="background-color: bisque;float:left;border-width:2px;border-style:groove;margin-top:100px;margin-left:350px;height:250px; width:500px;border-color:green;border-radius:10px;">
            <s:form action="Authentication" cssClass="logform">
                <p style="padding-left:150px;"> LOGIN</p>
                <s:textfield name="username"   label="Username"></s:textfield>
              <s:password name="password"  label="Password" ></s:password>
                          <s:select  id="g1"
                    list="#{'1':'Admin', '2':'Student', '3':'Faculty'}"
                   label="Type" name="Type">
                    
                </s:select>
                <s:submit/>
            </s:form> 
    </div>  <p><font style="float:right;font-family: sans-serif;font-style: italic;font-weight: bolder;color: black;  margin-top:200px;margin-right: 200px; ">Not Registered?</font></p>
             <div style="float: right;margin-top:0px;margin-right:250px;border-radius:10px;">
                 
               
                
                 <a href="example/signup.jsp"><font style="font-family: sans-serif; font-size: x-large;">SignUp</font></a>
    
             </div>
         
         
         </div>
    </body>
</html>
