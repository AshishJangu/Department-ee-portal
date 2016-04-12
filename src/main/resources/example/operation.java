/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package example;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.corba.se.spi.presentation.rmi.StubAdapter;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;
import javax.swing.JOptionPane;
import org.apache.struts.chain.contexts.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author JANGU
 */
public class operation extends ActionSupport {
  private String body;
   private String username;
    private String subject;
    private int id;
    private int ct1;
    private int ct2;
    private int model;
    private int semester;
    private int stest;
    private int attendence;
private int total;
private float cgpa;
private float att;
private String Type;
      Connection con;
PreparedStatement ps,ps1;
ResultSet rs,rs1;
String uname1;
    public operation() {

    }
    public String del()throws Exception{
    
     Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://127.13.149.2:3306/department","adminRkEuhBn","b5u43VY_XpzV");
    
  System.out.println(id+"adsadasd");
  String q="delete from score where subject=? && Id=?";  
ps=con.prepareStatement(q);
ps.setString(1,subject);
ps.setInt(2,id);
ps.executeUpdate();

        return SUCCESS;
}
    
    
      public String deactivate()throws Exception{
    
     Class.forName("com.mysql.jdbc.Driver");
      con=DriverManager.getConnection("jdbc:mysql://127.13.149.2:3306/department","adminRkEuhBn","b5u43VY_XpzV");
     
    
  System.out.println(id+"adsadasd");
   System.out.println(username+"adsadasd");
  String q="delete from nametoid where Id=?";  
ps=con.prepareStatement(q);

ps.setInt(1,id);
ps.executeUpdate();

String q1="update login set activate=? where username=?";  
 ps1=con.prepareStatement(q1);
 ps1.setString(1,"false");

ps1.setString(2,username);
ps1.executeUpdate();
System.out.println("Type issssssssss"+Type);
   if(Type.equals("3"))
        return SUCCESS;
   else if(Type.equals("1"))
        return "success1";
   else
         return SUCCESS;
      }
      
         public String deactivateFaculty()throws Exception{
    
     Class.forName("com.mysql.jdbc.Driver");
     con=DriverManager.getConnection("jdbc:mysql://127.13.149.2:3306/department","adminRkEuhBn","b5u43VY_XpzV");
     
    
  System.out.println(id+"adsadasd");
   System.out.println(username+"adsadasd");
  String q="delete from fnametoid where Id=?";  
ps=con.prepareStatement(q);

ps.setInt(1,id);
ps.executeUpdate();

String q1="update login set activate=? where username=?";  
 ps1=con.prepareStatement(q1);
 ps1.setString(1,"false");

ps1.setString(2,username);
ps1.executeUpdate();
        return SUCCESS;
}
          public String deactivateAdmin()throws Exception{
    
     Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://127.13.149.2:3306/department","adminRkEuhBn","b5u43VY_XpzV");
     
    
  System.out.println(id+"admin");
   System.out.println(username+"admin");
  String q="delete from anametoid where Id=?";  
ps=con.prepareStatement(q);

ps.setInt(1,id);
ps.executeUpdate();

String q1="update login set activate=? where username=?";  
 ps1=con.prepareStatement(q1);
 ps1.setString(1,"false");

ps1.setString(2,username);
ps1.executeUpdate();
        return SUCCESS;
}
      
      
      
    
    public String activate()throws Exception{
    
     Class.forName("com.mysql.jdbc.Driver");
      con=DriverManager.getConnection("jdbc:mysql://127.13.149.2:3306/department","adminRkEuhBn","b5u43VY_XpzV");
     
    String Type=ActionContext.getContext().getSession().get("Type").toString();
 
  String q="insert into nametoid values(?,?)";  
ps=con.prepareStatement(q);
ps.setString(1,username);

ps.setInt(2,id);
ps.executeUpdate();
 String q1="update login set activate=? where username=?";  
 ps1=con.prepareStatement(q1);
 ps1.setString(1,"true");

ps1.setString(2,username);
ps1.executeUpdate();

 if(Type.equals("3"))
        return SUCCESS;
   else if(Type.equals("1"))
        return "success1";
 else
return SUCCESS;
}   
    public String activateFaculty()throws Exception{
    
     Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://127.13.149.2:3306/department","adminRkEuhBn","b5u43VY_XpzV");
     
    
 
  String q="insert into fnametoid(name)values(?)";  
ps=con.prepareStatement(q);
ps.setString(1,username);


ps.executeUpdate();
 String q1="update login set activate=? where username=?";  
 ps1=con.prepareStatement(q1);
 ps1.setString(1,"true");

ps1.setString(2,username);
ps1.executeUpdate();
 return SUCCESS;
}   
    
      public String activateAdmin()throws Exception{
    
     Class.forName("com.mysql.jdbc.Driver");
     con=DriverManager.getConnection("jdbc:mysql://127.13.149.2:3306/department","adminRkEuhBn","b5u43VY_XpzV");
     
    
 
  String q="insert into anametoid(name)values(?)";  
ps=con.prepareStatement(q);
ps.setString(1,username);


ps.executeUpdate();
 String q1="update login set activate=? where username=?";  
 ps1=con.prepareStatement(q1);
 ps1.setString(1,"true");

ps1.setString(2,username);
ps1.executeUpdate();
 return SUCCESS;
}   
    
    
    
  public String noticepost() throws ClassNotFoundException, SQLException {
   
     Map m = ActionContext.getContext().getSession();
     String name=m.get("name").toString();
     System.out.println("---------------okkk----------------------"+subject);
     Class.forName("com.mysql.jdbc.Driver");
      Connection  con=DriverManager.getConnection("jdbc:mysql://127.13.149.2:3306/department","adminRkEuhBn","b5u43VY_XpzV");
  DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
Calendar cal = Calendar.getInstance();
String date=dateFormat.format(cal.getTime()); //2014/08/06 16:00:22
  
     String q="insert into notice(subject,date,body,author) values(?,?,?,?)";  
     PreparedStatement ps=con.prepareStatement(q);
     ps.setString(1,subject);
      ps.setString(2,date);
       ps.setString(3,body);
       ps.setString(4,name);
   
       
       int u=ps.executeUpdate();
       
 /*
  String q="delete from score where subject=? && Id=?";
 

ps=con.prepareStatement(q);
ps.setString(1,subject);
ps.setInt(2,id);
ps.executeUpdate();
   */
         return SUCCESS;
    }    
  
    
    
    
    
    
    
    public String execute() throws Exception {
    
      
 /*
  String q="delete from score where subject=? && Id=?";
 

ps=con.prepareStatement(q);
ps.setString(1,subject);
ps.setInt(2,id);
ps.executeUpdate();
   */
         return SUCCESS;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
     
        this.subject = subject;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCt1() {
        return ct1;
    }

    public void setCt1(int ct1) {
        this.ct1 = ct1;
    }

    public int getCt2() {
        return ct2;
    }

    public void setCt2(int ct2) {
        this.ct2 = ct2;
    }

    public int getModel() {
        return model;
    }

    public void setModel(int model) {
        this.model = model;
    }

    public int getSemester() {
        return semester;
    }

    public void setSemester(int semester) {
        this.semester = semester;
    }

    public int getStest() {
        return stest;
    }

    public void setStest(int stest) {
        this.stest = stest;
    }

    public int getAttendence() {
        return attendence;
    }

    public void setAttendence(int attendence) {
        this.attendence = attendence;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public float getCgpa() {
        return cgpa;
    }

    public void setCgpa(float cgpa) {
        this.cgpa = cgpa;
    }

    public float getAtt() {
        return att;
    }

    public void setAtt(float att) {
        this.att = att;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getType() {
        return Type;
    }

    public void setType(String Type) {
        this.Type = Type;
    }

   
}
