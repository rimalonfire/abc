<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>login</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/login.css" />

</head>

<body>
<div class="bgimg">
	<div class="topnav">
	  <a class="active" href="login.html">login</a>
	  <a href="register.html">register</a>
	  <a   href="index.html">Home</a>
	</div>



	<div id="login" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="col-md-4">

					</div>
					<div class="col-md-7 col-md-offset-1">
						<div class="login-form">
							<form action="Authenticate" method="POST">
									<div class="h4"><h4>LOG IN<h4></div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<span class="form-label">User Name</span>
											<input class="form-control" type="text" placeholder="User Name" name="email" required>
										</div>
									</div>

								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<span class="form-label">Password</span>
											<input class="form-control" type="password" name="password" placeholder="Password" name="password" required>
										</div>
									</div>
								</div>

								<div class="row">
										<div class="form-btn">
									<button class="login-btn">login</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
