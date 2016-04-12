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
        <title>Department E Portal</title>
<style>
            
#s1,#s2{
  margin-left:800px;
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
            
            
body{
    width:95%;
    height:100%;
    background-color:white;
    background-image: url('Image/bg3.jpg');
    background-repeat: no-repeat;
    background-size: 1500px 700px;
    
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
         <div>
              <div id="s2"  >
                        <table>
                            <tr>
                                <td>
                                    <s:form action="Authentication" cssClass="logform" name="loginform">
                                    <s:textfield name="username"   label="Username"></s:textfield>
                                    <s:password name="password"  label="Password" ></s:password>
                                    <s:select  id="g1" list="#{'1':'Admin', '2':'Student', '3':'Faculty'}" label="Type" name="Type"></s:select>
                                    <s:submit value="Login"/>
                                    </s:form> 
                                </td>
                                
                            </tr>
                        </table>
              
               
                       
               <form method="POST"  action="example/signup.jsp" style="margin-left:190px;">
                   <table style="width:250px;"><tr>
                                      <td style="font-family: sans-serif; font-size: 18px;"> Haven't Register?</td><td> <input type="submit" value="SignUp"></td>
                       </tr>
         </table>
                                    </form>
                               
                  
             

 </div>
         </div>
    </body>
</html>
