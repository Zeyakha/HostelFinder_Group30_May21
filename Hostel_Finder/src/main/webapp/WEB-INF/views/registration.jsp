<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<c:url value="/resources/css/lucknow.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/sample.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/Singup.css" />">
<title>Registration Page</title>
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
	<form action="http://localhost:8080/Hostel_Finder/registrationModel"
		style="border: 1px solid #ccc" method="Post">
		<div class="container">
			<h1>Sign Up</h1>
			<p>Please fill in this form to create an account.</p>
			<hr>

			<label for="email"><b>Email</b></label> <input type="text"
				placeholder=" Enter Email" name="email" id="emm"
				onblur="formvalidator('emm','et')" /><span id="et"></span> <label
				for="psw"><b>Password</b></label> <input type="password" id="pass"
				name="password" placeholder=" Enter Password"
				onblur="formvalidatr('pass','e')" /><span id="e"></span> <label
				for="first-name"><b>First Name</b></label> <input type="text"
				name="firstname" placeholder="Enter First Name" /> <label
				for="last-name"><b>Last Name</b></label> <input type="text"
				name="lastname" placeholder=" Enter Last Name" /> <label
				for="mobile-number"><b>Mobile Number</b></label> <input type="text"
				name="phone" placeholder="Enter Mobile Number" /> <label
				for="gender"><b>Gender</b></label> <input type="radio" value="1"
				name="gender" /><span>Male</span> <input type="radio" value="0"
				name="gender" /><span>Female</span><br> <label
				for="date-of-birth"><b>Date-Of-Birth</b></label><input type="date"
				name="dob"> </select><br> <label for="UserType"><b>UserType</b></label>
			<input type="radio" value="1" name="usertype" /><span>Customer</span>
			<input type="radio" value="2" name="usertype" /><span>Hostel
				Owner</span><br> <label> <label> <input
					type="checkbox" checked="checked" name="remember"
					style="margin-bottom: 15px"> Remember me<br>
			</label>

				<p>
					By creating an account you agree to our <a href="#"
						style="color: dodgerblue">Terms & Privacy</a>.
				</p>

				<div class="clearfix">
					<a href="http://localhost:8080/Hostel_Finder/home"
						class="button cancelbtn text-center"
						style="color: black; text-decoration: none">Cancel</a>
					<!--<button type="button"  class="cancelbtn">Cancel</button>-->
					<button type="submit" class="signupbtn" style="color: black">Sign
						Up</button>
				</div>
		</div>
	</form>
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
	<script src="<c:url value="/resources/js/frontpage.js" />"></script>
</body>
</html>
