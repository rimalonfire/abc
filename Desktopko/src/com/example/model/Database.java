package com.example.model;
import java.sql.*;

public class Database{
   static final String DB_URL = "jdbc:mysql://localhost/airline_db?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
   static final String USER="root";
   static final String PASS="";
   
   Connection dcon;
    
   public Database() {
        
        try{
	   Class.forName("com.mysql.jdbc.Driver");
           dcon=DriverManager.getConnection(DB_URL, USER, PASS);
           System.out.println("connected");
        } catch (Exception e){
            e.printStackTrace();
        }
        
        
    }
   public Connection getConnection(){
       return dcon;
   }
   public void Close(){

	if(dcon!=null){
try{
dcon.close();
     
}catch(SQLException se){
se.printStackTrace();
}
           
}



  }
     
} 