package com.example.web;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import com.example.model.*;
import java.sql.*; 

public class Authenticate extends HttpServlet {

public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{

PrintWriter out=response.getWriter();    //just for testing till integration is done

Database dobj=new Database();   
Connection cobj=null;
PreparedStatement pstmt=null;
Boolean authentication=null;

try{
cobj=dobj.getConnection();

pstmt=cobj.prepareStatement("Select COUNT(*) from customer_details where (EMAIL=? AND PASSWORD=UNHEX(SHA1(?)))", ResultSet.FETCH_FORWARD, ResultSet.CONCUR_READ_ONLY);          



pstmt.setString(1,request.getParameter("email"));
pstmt.setString(2,"'"+request.getParameter("password")+"'");


ResultSet rs=pstmt.executeQuery();
rs.next();
          
if ( rs.getInt(1)==1){
out.println("Auth successful");

//create a session and dispatch to the home jsp

request.getSession();

//dispatch to the logged in jsp

//RequestDispatcher tohome=request.getRequestDispatcher("");
//tohome.forward(request,response);


}else{

out.println("auth unsuccessful");
//dispatch to the error jsp lock all the pages and resources using the xml file

//RequestDispatcher toerror=request.getRequestDispatcher("login.jsp");
//toerror.forward(request,response);
response.sendRedirect("login.jsp");


}
 
          


}catch(SQLException ex){
out.println("exception occured");
}
   
dobj.Close();


}

}