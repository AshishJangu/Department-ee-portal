/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package example;

import com.opensymphony.xwork2.ActionSupport;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 *
 * @author JANGU
 */
public class scoreSave extends ActionSupport {
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
                  
              
              
              
    public scoreSave() {
    }
    
    @Override
    public String execute() throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
      Connection  con=DriverManager.getConnection("jdbc:mysql://127.13.149.2:3306/department","adminRkEuhBn","b5u43VY_XpzV");
  
  
     String q="insert into score values(?,?,?,?,?,?,?,?,?,?,?)";  
     PreparedStatement ps=con.prepareStatement(q);
   
   ps.setString(1,subject);
  
   ps.setInt(2,ct1);
         ps.setInt(3,ct2);
           ps.setInt(4,model);
             ps.setInt(5,attendence);
               ps.setInt(6,stest);
                 ps.setInt(7,total);
                   ps.setFloat(8,cgpa);
                     ps.setFloat(9,att);
                       ps.setInt(10,semester);
                         ps.setInt(11,id);
    
       ps.executeUpdate();
        
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


}
