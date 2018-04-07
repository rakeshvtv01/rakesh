package com.rakeshkp.spring;
import java.sql.*; 
import java.util.Scanner; 

public class Database {
	
	
	public  Connection con; 
     
     public void connectdb() 
     { 
         //static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
        // static final String DB_URL = "jdbc:mysql://localhost:3306/mysql";

         try { 
             Class.forName("com.mysql.jdbc.Driver"); 
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/witty","root",""); 
    } 
         catch(Exception e) 
          { 
              e.printStackTrace(); 
               
          } 
     }
     
     
     
     public void insert(String name,String pass,int mob,String email,String add,String gender,String dob,String s_que,String s_ans) 
     { 
            try { 
              connectdb(); 
              PreparedStatement pre = con.prepareStatement("INSERT INTO `users`(`id`, `name`, `passwords`, `email`, `mobile`, `address`, `gender`, `dob`, `security_question`, `security_ans`) VALUES(?,?,?,?,?,?,?,?,?,?)");
              
              pre.setInt(1,0); 
               pre.setString(2,name); 
               pre.setString(3,pass); 
               pre.setString(4,email); 
               pre.setInt(5,mob); 
               pre.setString(6,add); 
               pre.setString(7,gender); 
               pre.setString(8,dob); 
               pre.setString(9,s_que); 
               pre.setString(10,s_ans); 
               int rs =pre.executeUpdate(); 
               if(rs==1) 
               { 
                   System.out.println("RESULT UPDATED"); 
                   con.close(); 
                } 
               else 
               { 
                     System.out.println("UPDATION FAILED");     
                     con.close(); 
               } 
           } 
          catch(Exception e) 
           { 
                       e.printStackTrace(); 
           } 
    }


     
     public void update(int id,String name,int mob,String add,String gender,String dob) 
     { 
            try { 
              connectdb(); 
              PreparedStatement pre = con.prepareStatement("UPDATE `users` SET `name`=?, `mobile`=?, `address`=?, `gender`=?, `dob`=? WHERE id=?");
              
             
               pre.setString(1,name); 
            
              
               pre.setInt(2,mob); 
               pre.setString(3,add); 
               pre.setString(4,gender); 
               pre.setString(5,dob); 
               pre.setInt(6,id); 

               
               int rs =pre.executeUpdate(); 
               if(rs==1) 
               { 
                   System.out.println("RESULT EDITED"); 
                   con.close(); 
                } 
               else 
               { 
                     System.out.println("EDIT FAILED");     
                     con.close(); 
               } 
           } 
          catch(Exception e) 
           { 
                       e.printStackTrace(); 
           } 
    }
     
     
     
     public int login_val (String email,String pass) 
     { 
           try { 
               connectdb(); 
               PreparedStatement pre = con.prepareStatement("select * from users where passwords =? and email=?");     
               pre.setString(1,pass); 
               pre.setString(2,email); 
               ResultSet rs = pre.executeQuery(); 
               if(rs.next()) 
                   { 
                       System.out.println("ID "+rs.getInt(1)); 
                       System.out.println("Name "+rs.getString(2)); 
                       int user_id=rs.getInt(1);
                       con.close(); 
                       return user_id;
                       
                } 
               else 
               { 
                     System.out.println("Login failed"); 
                     con.close(); 
                     return 0;
               } 
           } 

           catch(Exception e) 
           { 
               e.printStackTrace(); 
           }
		return 0; 
            
    } 

}
