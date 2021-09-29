
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>LoginPage</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://localhost:8080/HostelFinder/js/frontpage.js"
	type="text/javascript"></script>
<link rel="stylesheet" href="css/lucknow.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/lucknow.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/sample.css" />">
<script src="http://localhost:8080/HostelFinder/js/frontpage.js"
	type="text/javascript"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div>
		<div class="text"></div>
		<nav class="navbar navbar-inverse" id="nav">
			<div id="nagivation" class="navbar-collapse collapse">
				<div class="nevbar-header">
					<a href="#" class="navbar-brand"></a>
				</div>
				<ul class="nav nav-pills navbar-left">
					<li class="dropdown use ymm ymm-fw open"><a
						href="http://localhost:8080/Hostel_Finder/home"
						class="dropdown-toggle">Home</a></li>
					<li class="dropdown use ymm ymm-fw"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Category<span
							class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="http://localhost:8080/Hostel_Finder/AcRoom">AC</a></li>
							<li><a href="http://localhost:8080/Hostel_Finder/NonAcRoom">NON-AC</a></li>
							<li><a href="#">AC/NON-AC</a></li>
						</ul></li>
					<li class="dropdown use ymm ymm-fw"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Filter<span
							class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="http://localhost:8080/Hostel_Finder/LowToHigh">LowToHigh</a></li>
							<li><a href="http://localhost:8080/Hostel_Finder/HighToLow">HighToLow</a></li>
						</ul></li>
					<li class="dropdown use ymm ymm-fw"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">City<span
							class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Lucknow</a></li>
						</ul></li>

					<li><a href="http://localhost:8080/Hostel_Finder/login">Login</a>
					</li>
					<li><a href="http://localhost:8080/Hostel_Finder/registration">Sing
							Up</a></li>
				</ul>
				<ul class="nav nav-pills navbar-right">
					<li><a href="http://localhost:8080/Hostel_Finder/ContactUs">Contact
							us</a></li>
					<li><a href="http://localhost:8080/Hostel_Finder/AboutUs">About
							us</a></li>
					<li><a href="#" class="fa fa-search"></a></li>
					<li><a href="http://www.facebook.com" class="fa fa-facebook"></a>
					</li>
					<li><a href="https://twitter.com/login" class="fa fa-twitter"></a>
					</li>
				</ul>
			</div>
		</nav>
	</div>
	<form
		action="http://localhost:8080/Hostel_Finder/loginModel"
		method="post">

		<div class="container">
			<h1>Login</h1>
			<label name="uname"><b>Email</b></label> <input type="text"
				placeholder="Enter Email" name="email" id="a"
				onblur="formvalidator('a','b')" required><span id="b"></span>

			<label for="psw"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="password" required>

			<button type="submit">Login</button>
			<label> <input type="checkbox" checked="checked"
				name="remember"> Remember me
			</label>
		</div>

		<div class="container" style="background-color: #f1f1f1">
			<button type="button" class="cancelbtn" formaction="">Cancel</button>
			<span class="psw">Forgot <a href="#">password?</a></span>
		</div>
	</form>
	<a
		href="http://localhost:8080/Hostel_Finder/registration">Register</a>
	<table id="spl"></table>
	<footer class="container-fluid">
		<h3>Follow us on</h3>
		<h3>
			<a href="http://www.facebook.com" class="fa fa-facebook"></a> <a
				href="https://twitter.com/login" class="fa fa-twitter"></a> <a
				href="https://gmail.com" class="fa fa-google"></a> <a
				href="https://youtube.com" class="fa fa-youtube"></a> <a
				href="https://instagram.com" class="fa fa-instagram"></a>


		</h3>
		<h3></h3>
	</footer>
</body>
</html>
