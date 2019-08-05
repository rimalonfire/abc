package com.example.web;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import com.example.model.Database;
import java.sql.*;
import com.example.model.Retdata;
import java.util.ArrayList;
import java.io.PrintWriter;

public class Retresult extends HttpServlet{

public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{



HttpSession session=request.getSession();


int btn=Integer.parseInt(request.getParameter("btn"));
session.setAttribute("btn",btn); 


request.getRequestDispatcher("contactinformation.jsp").forward(request,response);

}
}