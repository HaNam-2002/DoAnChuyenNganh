<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/ChangePassword.css" rel="stylesheet" type="text/css" />
<title>Change Password</title>
</head>
<body>
	<link
		href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Fonts -->
<link rel="dns-prefetch" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600"
	rel="stylesheet" type="text/css">

<link rel="stylesheet" href="css/style.css">

<link rel="icon" href="Favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<title>Laravel</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light navbar-laravel">
		<div class="container">
			<a class="navbar-brand" href="#">ZENPHONE</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>


		</div>
	</nav>

	<main class="login-form">
		<div class="cotainer">
			<div class="row justify-content-center">
				<div class="col-md-8">
					<div class="card">
						<div class="card-header"></div>
						<div class="card-body">
							<form action="changePassword" method="post">
								<div class="form-group row">
									<label for="newPassword"
										class="col-md-4 col-form-label text-md-right">New PassWord</label>
									<div class="col-md-6">
										<input type="password" id="newPassword" class="form-control"
											name="newPassword" placeHolder="New password" required>
									</div>
								</div>

								<div class="form-group row">
									<label for="repeat_password"
										class="col-md-4 col-form-label text-md-right"> Repeat Password</label>
									<div class="col-md-6">
										<input type="password" id="repeatPassword"
											class="form-control" name="repeatPassword"
											placeHolder="Repeat password" required>
									</div>
								</div>

								<div class="form-group row">
									<div class="col-md-6 offset-md-4"></div>
								</div>

								<div class="col-md-6 offset-md-4">
  <button onclick="Login.jsp'; class="btn btn-primary">Submit</button>


                             </div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

	</main>
</body>
</html>
</body>
</html>