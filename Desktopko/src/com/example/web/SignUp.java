package com.example.web;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import com.example.model.Database;
import java.sql.*;
import java.io.PrintWriter;


public class SignUp extends HttpServlet{



public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException{


String email=request.getParameter("email");
String password=request.getParameter("password");

//String cpassword=request.getParameter("confirmpassword");
/*
if(password!=cpassword){
response.sendRedirect("register.jsp");
}
*/

try{

Database dobj=new Database();
Connection cobj=dobj.getConnection();
PreparedStatement pstmt=cobj.prepareStatement("Select COUNT(*) from customer_details where EMAIL=?");
          
pstmt.setString(1,email);

ResultSet rs=pstmt.executeQuery();


   rs.next();       
if ( rs.getInt(1)>=1){

//already the user exists

//RequestDispatcher tosignfail=request.getRequestDispatcher(".html");
//tosignfail.forward(request,response);

}else{
//create a new user
 
          String name=request.getParameter("firstname")+request.getParameter("middlename")+request.getParameter("lastname");
          int age=Integer.parseInt(request.getParameter("age"));
          String address=request.getParameter("address");
          String phone=request.getParameter("phone");
          String country=request.getParameter("country");
          


pstmt=cobj.prepareStatement("insert into customer_details(NAME,AGE,ADDRESS,PHONE,EMAIL,PASSWORD,COUNTRY) values (?,?,?,?,?,UNHEX(SHA1(?)),?)");
          pstmt.setString(1,name);
	   pstmt.setInt(2, age);
          pstmt.setString(3, address);
          pstmt.setString(4, phone);
          pstmt.setString(5, email);
String nps="'"+password+"'";
      
pstmt.setString(6, nps);
          pstmt.setString(7, country);
          
  PrintWriter out=response.getWriter();
out.println("check");
   
          
         pstmt.execute();

//	response.sendRedirect("index.jsp");
}



}catch(SQLException sql){
sql.printStackTrace();
}


}

}