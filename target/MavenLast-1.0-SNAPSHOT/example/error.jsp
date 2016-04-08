<%-- 
    Document   : error
    Created on : Apr 7, 2016, 10:25:30 AM
    Author     : JANGU
--%>
<%@taglib  uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <tiles:insert definition="welcome"/>
        
        <h1>Your account is not activated!!!Please wait for 24 hours or Contact Admin</h1>
    </body>
</html>
