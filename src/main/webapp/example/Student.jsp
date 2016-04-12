<%-- 
    Document   : Student
    Created on : Apr 2, 2016, 8:13:33 AM
    Author     : JANGU
--%>
<%@taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student</title>
        <style>
                  body{
    width:95%;
    height:100%;
    background-color:white;
    background-image: url('../Image/bg3.jpg');
    background-repeat: no-repeat;
    background-size: 1500px 700px;
    background-attachment: fixed;
}
        </style>
    </head>
    <body>
       
        <tiles:insert definition="studentdef"/>
                 
    </body>
</html>
