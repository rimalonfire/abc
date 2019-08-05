package com.example.web;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import com.example.model.Database;
import java.sql.*;
import com.example.model.Retdata;
import java.util.ArrayList;
import java.io.PrintWriter;

public class Getstatus extends HttpServlet{

public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{


HttpSession session=request.getSession();


session.invalidate();

session=request.getSession();



session.setMaxInactiveInterval(120);


String SOURCE=request.getParameter("source");
String DESTINATION=request.getParameter("destination");
String DEPT_TIME=request.getParameter("depttime");
String ARRIVAL_TIME=request.getParameter("arrivaltime");
String ISROUND=request.getParameter("isround");
String CATEGORY=request.getParameter("category");
int number=Integer.parseInt(request.getParameter("seat"));

ArrayList<Retdata> ret=new ArrayList<Retdata>();

boolean isround=false;

if(ISROUND.equals("true")){
isround=true;
}else{
isround=false;
}


try{
Database dobj=new Database();
Connection cobj=dobj.getConnection();

PreparedStatement pstmt=cobj.prepareStatement("SELECT l.SOURCE,l.DESTINATION,f.DEPT_TIME,f.ARRIVAL_TIME,p.CATEGORY,f.FNO,p.PRICE from flight_schedule as f inner join link as l on f.LID=l.LID inner join price as p on f.LID=p.LID where l.SOURCE=? and l.DESTINATION=? and f.DEPT_TIME=?  and f.ARRIVAL_TIME=? and f.ISROUND=? and p.CATEGORY=? and f.REMSEAT>=?");
          
pstmt.setString(1,SOURCE);
pstmt.setString(2,DESTINATION);
pstmt.setString(3,DEPT_TIME);
pstmt.setString(4,ARRIVAL_TIME);
pstmt.setBoolean(5,isround);
pstmt.setString(6,CATEGORY);
pstmt.setInt(7,number);


ResultSet rst=pstmt.executeQuery();



Retdata temp=null;

while(rst.next()){



temp=new Retdata();

temp.depttime=rst.getString(3);
temp.arrivaltime=rst.getString(4);
temp.source=rst.getString(1);
temp.destination=rst.getString(2);
temp.category=rst.getString(5);
temp.id=Integer.parseInt(rst.getString(6));
temp.price=rst.getInt(7);
temp.qty=number;
temp.bg=20*temp.qty;

if(isround){
temp.total=2*temp.qty*temp.price;
}else{
temp.total=temp.qty*temp.price;
}

ret.add(temp);

}
}catch(SQLException e){


//catch 
}

session.setAttribute("result",ret);

request.setAttribute("return",ret);

PrintWriter out=response.getWriter();

request.getRequestDispatcher("searchresult.jsp").forward(request,response);



}
}