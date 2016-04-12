/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package example;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author JANGU
 */
public class Authentication extends ActionSupport implements SessionAware {
    private String username;
    private String password;
    private String Type;
    
    boolean login=false;
    private SessionMap<String,Object> map;
    public Authentication() {
    }
    public String logoutuser(){
        if(map!=null)
        {
             map.clear();
            map.invalidate();
        
   

        }
            return "logoutsuccess";
    }
    public String execute() throws Exception {
          Class.forName("com.mysql.jdbc.Driver");
      Connection  con=DriverManager.getConnection("jdbc:mysql://127.13.149.2:3306/department","adminRkEuhBn","b5u43VY_XpzV");
       String q="select * from login where username=?";  
       PreparedStatement st=con.prepareStatement(q);
       st.setString(1,username);
       ResultSet rs=st.executeQuery();
       String   activate="";
       String u="",p="",t="";
       while(rs.next())
       {
           u=rs.getString("username");
             p=rs.getString("password");  
             t=rs.getString("Type");
              activate=rs.getString("activate");
          
       }
        if(username.equals(u) && password.equals(p)  && Type.equals(t))
        {
            if(t.equals("1"))
            {
                  map.put("name",username);
                   map.put("Type",Type);
                login=true;
                if(activate.equals("true"))
                return "admin";  
                else
                    return "error";
         
            }
             else if(t.equals("2"))
             {
                   map.put("name",username);
               map.put("Type",Type);
                   login=true;
                  if(activate.equals("true"))
                return "student";  
                else
                    return "error";
                
             }
                 else if(t.equals("3"))
                 {
                     map.put("name",username);
                    map.put("Type",Type);
                     login=true;
                    if(activate.equals("true"))
                return "faculty";  
                else
                    return "error";
                 }
           else
                 {
                     
                     login=false;
                     
                    
                    return   LOGIN; 
        }
        }
       else
        {
         login=false;
            return   LOGIN;
        }
 
      
         
          
     
    
    
    
    
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getType() {
        return Type;
    }

    public void setType(String Type) {
        this.Type = Type;
    }

    @Override
    public void setSession(Map<String, Object> map) {
     this.map=(SessionMap<String, Object>) map;
           }
    
}
