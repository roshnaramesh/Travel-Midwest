<!DOCTYPE html>
<head>
<title>Login Page</title>

<link href="css/main.css" rel="stylesheet" type="text/css">
</head>

<body class="Register-Image">
	<div class="container">
		<div class="col-md-12">
			<form class="form-horizontal FormDesign" role="form"
				action="/TravelMidwest/LoginServlet" method="post">
				<div>
					<div class="col-md-12">
						<h1>
							<b>Login To TravelMidwest</b>
						</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							<div class="col-md-12">
								<label for="username" class="control-label">USERNAME</label>
								<div class="Input_Icons">
									<i class="fa fa-user"></i> <input type="text"
										class="form-control" id="username" name="username"
										placeholder="">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<label for="password" class="control-label">PASSWORD</label>
								<div class="Input_Icons">
									<i class="fa fa-lock"></i> <input type="password"
										name="password" class="form-control" id="password"
										placeholder="">
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-12">
								<input type="submit" value="LOG IN" class="btn btn-warning">
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<a href="ForgotPassword.jsp" class="text-center">Forget
									Username/Password?</a>
							</div>
						</div>
				</div></div>
			</form>
		</div>
	</div>
</body>
</html>