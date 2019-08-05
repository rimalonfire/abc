<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Airline Reservation System</title>


	<link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">

	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />


	<link type="text/css" rel="stylesheet" href="css/style.css" />
	<link type="image/png" rel="icon"  href="img/favicon.png" />


</head>

<body>
	<div class="bgimg">
	<div class="container1">
	<div class="topnav">
	  <a  href="login.jsp">login</a>
	  <a href="register.jsp">register</a>
	  <a  class="active" href="index.jsp">Home</a>
	</div>
</div>
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="booking-cta">
							<h1></h1>
							<p></p>
						</div>
					</div>
					<div class="col-md-7 col-md-offset-1">
						<div class="booking-form">
							<form action="Getstatus" method="post">
								<div class="form-group">
									<div class="form-checkbox">
										<label for="roundtrip">
											<input type="radio" id="roundtrip" name="isround" value="true" onclick="myFunction1()">
											<span></span>Roundtrip
										</label>
										<label for="one-way">
											<input type="radio" id="one-way" name="isround" value="false" onclick="myFunction()">
											<span></span>One way
										</label>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<span class="form-label">Flying from</span>
											<input class="form-control" type="text" placeholder="City or airport" name="source">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<span class="form-label">Flyning to</span>
											<input class="form-control" type="text" placeholder="City or airport" name="destination">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<span class="form-label">Departing</span>
											<input class="form-control" type="date" name="depttime" required>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group" id="retdate">
											<span class="form-label">Returning</span>
											<input class="form-control" type="date" name="arrivaltime" required>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<span class="form-label">No of Passenger</span>
											<select class="form-control" name="seat">
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
											</select>
											<span class="select-arrow"></span>
										</div>
									</div>

									<div class="col-md-4">
										<div class="form-group">
											<span class="form-label">Travel class</span>
											<select class="form-control" name="category">
												<option value="economy">Economy class</option>
												<option value="business">Business class</option>
												<option value="first">First class</option>
											</select>
											<span class="select-arrow"></span>
										</div>
									</div>
								</div>
								<div class="form-btn">
									<button class="submit-btn">Show flights</button>
				<script>
function myFunction() {
  document.getElementById("retdate").style.visibility = "hidden";
}
function myFunction1(){
	  document.getElementById("retdate").style.visibility = "visible";
}
</script>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>

</html>
