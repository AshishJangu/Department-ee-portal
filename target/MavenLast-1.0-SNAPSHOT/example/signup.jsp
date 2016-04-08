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
    </style> 
    </head>
     <body>
         <tiles:insert definition="welcome"/>
    
        <div id="s1" style="background-color: bisque;padding-left:100px;border-width:2px;border-style:groove;margin-top:100px;margin-left:400px;height:400px; width:600px;border-color:green;border-radius:10px;">
            <s:form action="saveDb" cssClass="loginf" enctype="multipart/form-data" method="post">
                <p style="padding-left:165px; font-size:20px;"> SignUp</p>
                <s:textfield name="username" label="Username"></s:textfield>
               
                <s:password name="password" label="Password"></s:password>
               
                <s:select 
                    list="#{'1':'Admin', '2':'Student', '3':'Faculty'}"
                    label="Type"     name="Type">
                    
                </s:select>
                <s:textfield  name="email" label="Email"></s:textfield>
                  <s:textfield name="branch" label="Branch"></s:textfield>
                   <s:textfield name="section" label="Section"></s:textfield>
                   <s:file label="upload image" name="pic"/>
                   <s:submit cssStyle="margin-right:255px;margin-top:20px;"/>
            </s:form> 
                
    </div>
    <a  style="ine-height: 1em;
    display:inline-block;
    text-decoration: none;
    padding:5px;
      padding-left:900px;
    margin:1px;"href="/Department-E-portals/">Back To Login Page</a> 
    </body>
</html>
