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
<form action="" method="post" width="50">




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

	<table>


<% ArrayList<Retdata> flightList = (ArrayList)request.getAttribute("return"); %>

<%
// Iterating through subjectList

if(request.getAttribute("return") != null)  // Null check for the object
{
 Iterator<Retdata> iterator = flightList.iterator();  // Iterator interface

 while(iterator.hasNext()) 
 {
 Retdata flightDetails = iterator.next();
 %>


		<th class="th-class">
<tr>
			<td>Flightid</td>
			<td>Departure</td>
			<td>Arrival</td>
			<td> Allowed baggages</td>
			<td>Price</td>
</tr>
		</th>





 <th>
<tr>
 <td><%=flightDetails.id%></td>
 <td><%=flightDetails.depttime%></td>
 <td><%=flightDetails.arrivaltime%></td>
 <td><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><%=flightDetails.bg%></td>
 <td><%=flightDetails.total%></td>
</tr>
 </th>
 <%
 }
}
%>
</table>









		</table>
<!--for total !-->
<div id="total" class="section">
	<div class="section-center">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="total-cta">
						<h1></h1>
						<p></p>
					</div>
				</div>
				<div class="col-md-7 col-md-offset-1">
					<div class="total-form">
						<form>
							<div class="form-group">

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="from">FROM:								</label>

										</div>
									</div>
							</div>


									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="to">TO:
												</label>
                                                                          
											</div>
										</div>
								</div>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="noofpasseger">NO OF PASSENGER:
											</label>

										</div>
									</div>
							</div>

							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="total">TOTAL:
										</label>

									</div>
								</div>
						</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>







</div>
<button type="submit">Next</button>
</form>

</body>
</html>
