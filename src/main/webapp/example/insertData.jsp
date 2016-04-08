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
<%!
int id;
%>
<% 
id=Integer.parseInt(request.getParameter("Id"));
%>
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
            #g1{
                 letter-spacing:1px;
                 margin-left:0px;
                 padding-left:95px;
                 
            }
           
    </style> 
    </head>
     <body>
         <tiles:insert definition="welcome"/>
         
        <div id="s1" style="background-color: bisque;border-width:2px;border-style:groove;margin-top:50px;margin-left:450px;height:550px; width:500px;border-radius:10px;">
            <s:form action="scoreSave" cssClass="logform" >
               <p style="padding-left:150px;"> ADD SUBJECT</p>
             
               <s:textfield name="subject" label="Subject"></s:textfield>
               <s:textfield name="ct1" label="Ct1"></s:textfield>
               <s:textfield name="ct2" label="Ct2"></s:textfield>
               <s:textfield name="model" label="Model"></s:textfield>
               <s:textfield name="total" label="Total"></s:textfield>
               <s:textfield name="attendence" label="Attendence"></s:textfield>
               <s:textfield name="stest" label="Stest"></s:textfield>
               <s:textfield name="cgpa" label="Cgpa"></s:textfield>
               <s:textfield name="att" label="Att"></s:textfield>
                 <s:textfield value="%{Id}" name="Id" label="Id"></s:textfield>
               <s:textfield name="semester" label="Semester"></s:textfield>
              
            
               
                  <s:submit/>
            </s:form> 
    </div>

    </body>
</html>
