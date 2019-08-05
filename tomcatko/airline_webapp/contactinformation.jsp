<!DOCTYPE html>
<html>
<head>
	<title>contact information</title>
	<link type="text/css" rel="stylesheet" href="css/contactinformation.css" />
	<link type="image/png" rel="icon"  href="img/favicon.png" />
</head>
<body class="bgimg">

		<div class="topnav">
	  <a class="active" href="login.jsp">login</a>
	  <a href="register.jsp">register</a>
	  <a   href="index.jsp">Home</a>
	</div>

	<div class="header">
		<h3>&nbspContact information</h3>
	</div>






<!--for contactinformation !-->


<div id="contact" class="section">
	<div class="section-center">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="contact-cta">
						<h1></h1>
						<p></p>
					</div>
				</div>
				<div class="col-md-7 col-md-offset-1">
					<div class="contact-form">
						<form action="CustomerDetails" method="post">
							<div class="form-group">

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<input type="text" name="firstname" placeholder="firstname" required>
                      <input type="text" name="lastname" placeholder="lastname" required></br>
										</div>
									</div>
							</div>


              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <input type="text" name="email" placeholder="email" required>
                      <input type="text" name="age" placeholder="age">
                      <input type="text" name="mobileno" placeholder="mobilenumber" required>
                  </div>
                </div>
              </div>





									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
                        <span class="form-label">Gender:</span>
                        <select name="gender" placeholder="gender" class="form-group">
                          <option value="M">Male</option>
                          <option value="F">Female</option>
                          </select>
                        <span class="form-label">&nbsp;&nbsp;Document Type:</span>
                        <select  name="document" placeholder="document type" required>
                          <option value="passport">passport</option>
                          <option value="citizenship">citizenship</option>
                        </select>
                        <input type="text" name="documentno" placeholder="documentnumber" required>
											</div>
										</div>
								</div>






							</div>
              <button name="submit">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>











</div>
</div>
</body>
</html>
