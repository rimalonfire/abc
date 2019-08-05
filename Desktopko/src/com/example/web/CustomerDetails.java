package com.example.web;
import com.example.model.Retdata;
import java.util.ArrayList;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import com.example.model.Database;
import java.sql.*;
import java.io.PrintWriter;
import javax.mail.*;
import java.util.Date;
import java.util.Properties;
import javax.mail.internet.*;
import java.util.Enumeration;

public class CustomerDetails extends HttpServlet{


public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException{


String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String gender=request.getParameter("gender");
String country=request.getParameter("country");
String mobileno=request.getParameter("mobileno");
String email=request.getParameter("email");
String documentoption=request.getParameter("document");
String documentno=request.getParameter("documentno");
int age=Integer.parseInt(request.getParameter("age"));
String address=request.getParameter("address");
 	
PrintWriter out=response.getWriter();

HttpSession sessn=request.getSession(false);  
ArrayList<Retdata> ret=(ArrayList<Retdata>)sessn.getAttribute("result");
int index=(int)sessn.getAttribute("btn");
  





try{

Database dobj=new Database();
Connection cobj=dobj.getConnection();

          


PreparedStatement pstmt=cobj.prepareStatement("insert into contact_info(NAME,AGE,ADDRESS,PHONE,EMAIL,COUNTRY,DOCUMENTNO,GENDER,DOCUMENTTYPE) values (?,?,?,?,?,?,?,?,?)");

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






//send mail to the customer


	final String username = "khatiparaspk@gmail.com";
        final String password = "p@r@s123";

        Properties prop = new Properties();
	
	prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true"); //TLS
        
        Session session = Session.getInstance(prop,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });




        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(email)
            );
            message.setSubject("Successful Confimation");

	if(ret==null){
	out.println("array not available");
	out.println(index+"is index");
	}

	index=index-1;

           
	String send="Dear Customer, Your ticket has been confirmed successfully. The flight details are as below:Check In Time:"+ret.get(index).depttime+"Arrival Time:"+ret.get(index).arrivaltime+"Total Price:"+ret.get(index).total+"Airline Reservation System";


	message.setText(send);

            Transport.send(message);

            System.out.println("Done sending mail");
		out.println("Successfull sent");


         } catch (MessagingException e) {
            e.printStackTrace();
        }





try{

Database dobj=new Database();
Connection cobj=dobj.getConnection();

          


PreparedStatement pstmt=cobj.prepareStatement("insert into payment(REFNO ,PRICE) values ((SELECT REFNO from contact_info where PHONE=?),?)");
	
	 pstmt.setString(1, mobileno);
          
          pstmt.setInt(2,ret.get(index).total);
	  
	pstmt.execute();



}catch(SQLException sql){
sql.printStackTrace();
}











}

}