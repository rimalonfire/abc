<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
	<title>flightsearch</title>
	<link type="text/css" rel="stylesheet" href="css/searchresult.css" />
	<link type="image/png" rel="icon"  href="img/favicon.png" />
</head>
<body background="img/searchresult.jpg">



<% ArrayList<Retdata> flightList = (ArrayList)request.getAttribute("return"); %>

<form name="myform" action="Retresult" method="post" width="50">




<%@page import="java.util.ArrayList"%>      <%--Importing all the dependent classes--%>
<%@page import="com.example.model.Retdata"%>
<%@page import="java.util.Iterator"%>

		<div class="topnav">
	  <a class="active" href="login.jsp">login</a>
	  <a href="register.jsp">register</a>
	  <a   href="index.jsp">Home</a>
	</div>
	<div class="header">
		<h3>Departure flight:</h3>
	</div>

	<div class="table">

	<table style="width:100%">
<tr>
			<th>Flightid</th>
			<th>Departure</th>
			<th>Arrival</th>
			<th> Allowed baggages</th>
			<th>Price</th>

</tr>

<% int i=0;
for(Retdata flightDetails:flightList)
{ i=i+1;
 %>

<tr>
 <th><%=flightDetails.id%></th>
 <th><%=flightDetails.depttime%></th>
 <th><%=flightDetails.arrivaltime%></th>
 <th><%=flightDetails.bg%></td>
 <th><%=flightDetails.total%></th>
<th><button name="btn" value=<%=i%> onclick="check()">Click</button>
</th>

</tr>


		
            <%
      }
        
      
      %>


</table>






</div>
</div>
</div>
</form>

</body>
</html>
