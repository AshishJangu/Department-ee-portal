/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package example;

import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
import org.apache.commons.io.FileUtils;

/**
 *
 * @author JANGU
 */
@MultipartConfig(maxFileSize=160000)
public class saveDb extends ActionSupport {
     private String username;
    private String password;
    private String Type;
    private String email;
    private String branch;
    private String section;
    private File pic;
    private String picFileName;
    private String picContentType;
    byte p1[];
    public saveDb() {
    }
    
    public String execute() throws Exception {
     Class.forName("com.mysql.jdbc.Driver");
    Connection  con=DriverManager.getConnection("jdbc:mysql://127.13.149.2:3306/department","adminRkEuhBn","b5u43VY_XpzV");
  
    FileInputStream fis =  new FileInputStream(pic);
     String q="insert into login values(?,?,?,?,?,?,?,?)";  
     PreparedStatement ps=con.prepareStatement(q);
     ps.setString(1,username);
      ps.setString(2,password);
       ps.setString(3,Type);
       ps.setString(4,email);
       ps.setString(5,branch);
        ps.setString(6,section);
        ps.setBinaryStream(7,fis, (int)pic.length());
       ps.setString(8,"false");
       
       int u=ps.executeUpdate();
       
      
       String dest="C:\\Users\\JANGU\\Documents\\NetBeansProjects\\Department-E-portals\\web\\images\\";
        
                System.out.println("Directory is created!");
             File a=new File(dest,""+username+".jpg");
                 FileUtils.copyFile(pic,a);
         
            
        
       
       
       
      
      
       
       
       
     return SUCCESS;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getSection() {
        return section;
    }

    public void setSection(String section) {
        this.section = section;
    }

    public File getPic() {
        return pic;
    }

    public void setPic(File pic) {
        this.pic = pic;
    }

    public String getPicFileName() {
        return picFileName;
    }

    public void setPicFileName(String picFileName) {
        this.picFileName = picFileName;
    }

    public String getPicContentType() {
        return picContentType;
    }

    public void setPicContentType(String picContentType) {
        this.picContentType = picContentType;
    }
 
    
}
