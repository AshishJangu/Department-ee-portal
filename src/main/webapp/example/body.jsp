 <%@taglib prefix="s"  uri="/struts-tags"%>
<div style="border-width:2px;border-style:groove;margin-top:100px;margin-left:450px;height:250px; width:400px;border-color:green;border-radius:10px;">
            <s:form action="#" cssClass="login">
                LOGIN
                <s:textfield name="username" label="Username"></s:textfield>
                <s:password name="password" label="Password"></s:password>
         

                <s:submit/>
            </s:form> 
    </div>
