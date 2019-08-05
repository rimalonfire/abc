package com.example.web;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import com.example.model.Database;
import java.sql.*;
import java.io.PrintWriter;


public class SelectFlight extends HttpServlet{



public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException{


/* modify this send to customer_details

try{

Database dobj=new Database();
Connection cobj=dobj.getConnection();

          


pstmt=cobj.prepareStatement("insert into contact_info(NAME,AGE,ADDRESS,PHONE,EMAIL,COUNTRY,DOCUMENTNO,GENDER,DOCUMENTTYPE) values (?,?,?,?,?,?,?,?,?)");

          pstmt.setString(1,firstname+lastname);
	   pstmt.setInt(2, age);
          pstmt.setString(3, address);
          pstmt.setString(4, mobileno);
          pstmt.setString(5, email);
          pstmt.setString(6, country);
          pstmt.setString(7, documentno);
          pstmt.setString(8, gender);
          pstmt.setString(9, documentoption);
   
          
pstmt.execute();



}catch(SQLException sql){
sql.printStackTrace();
}

*/
}

}