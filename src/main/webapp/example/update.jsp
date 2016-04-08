<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : signup
    Created on : Apr 1, 2016, 8:39:56 PM
    Author     : JANGU
--%>
<%@taglib  uri="/struts-tags"  prefix="s"%>
<%@taglib  uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
String id;
String subject;
String ct1;
String ct2;
String attendence;
String stest;
String semester;
String total;
String cgpa;
String att;
String model;

%>
<%
id=request.getParameter("id");
ct1=request.getParameter("ct1");

ct2=request.getParameter("ct2");

model=request.getParameter("model");

stest=request.getParameter("stest");

attendence=request.getParameter("attendence");

semester=request.getParameter("semester");

total=request.getParameter("total");

cgpa=request.getParameter("cgpa");
att=request.getParameter("att");

subject=request.getParameter("subject");


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <style>
            .loginf{
                padding-top:0px;
                padding-left:40px;
                color:skyblue;
              
               font-size:20px;
                 font-family:arial;
                 font-weight: bolder;
                 font-size:15px;
                 letter-spacing:0px;
                
              
            }
                  
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
    </style> 
    </head>
     <body>
     
         <tiles:insert definition="welcome"/>
    
        <div id="s1"style="background-color: bisque;padding-left:100px;border-width:2px;border-style:groove;margin-top:100px;margin-left:400px;height:600px; width:500px;border-color:green;border-radius:10px;">
            <s:form action="saveDb" cssClass="loginf" enctype="multipart/form-data" method="post">
                <p style="padding-left:165px; font-size:20px;">Update Data</p>
                <s:textfield value="%{subject}" name="subject" label="subject"></s:textfield>
                <s:textfield value="%{id}" name="id" label="Id"></s:textfield>
                <s:textfield value="%{ct1}" name="ct1" label="ct1"></s:textfield>
               
               <s:textfield value="%{ct2}" name="ct2" label="ct2"></s:textfield>
               <s:textfield value="%{stest}" name="stest" label="stest"></s:textfield>
             
                 <s:textfield value="%{attendence}" name="attendence" label="attendence"></s:textfield>
                 <s:textfield value="%{model}" name="model" label="model"></s:textfield>
            <s:textfield value="%{semester}" name="semester" label="semester"></s:textfield>
                 <s:textfield value="%{total}" name="total" label="total"></s:textfield>
             
               
               <s:textfield value="%{cgpa}" name="cgpa" label="cgpa"></s:textfield>
               <s:textfield value="%{att}" name="att" label="att"></s:textfield>
               
              
               <s:submit/>
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
