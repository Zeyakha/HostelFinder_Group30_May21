<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/lucknow.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/sample.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/contactus.css" />">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Contact us</title>
</head>
<body>

	<div>
		<%--<div class="text">HOSTEL FINDER</div>--%>
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

	<div class="container">
		<form
			action="http://localhost:8080/HostelFinder/hf/?action=model&page=ContactAdmin"
			method="Post">

			<label for="fname">First Name</label> <input type="text" id="fname"
				name="firstname" placeholder="Your name.."> <label
				for="lname">Last Name</label> <input type="text" id="lname"
				name="lastname" placeholder="Your last name.."> <label
				for="email">Email</label> <input type="text" id="fname" name="email"
				placeholder="Your Email.."> <label for="country">Country</label>
			<select id="country" name="country">
				<option value="India">India</option>
				<option value="canada">Canada</option>
				<option value="usa">USA</option>
			</select> <label for="subject">Subject</label>
			<textarea id="subject" name="subject" placeholder="Write something.."
				style="height: 200px"></textarea>

			<input type="submit" value="Submit">

		</form>
	</div>



	<footer class="container-fluid">
		<h3>Follow us on</h3>
		<h3>
			<a href="http://www.facebook.com" class="fa fa-facebook"></a> <a
				href="https://twitter.com/login" class="fa fa-twitter"></a> <a
				href="https://gmail.com" class="fa fa-google"></a> <a
				href="https://youtube.com" class="fa fa-youtube"></a> <a
				href="https://instagram.com" class="fa fa-instagram"></a>


		</h3>
	</footer>


</body>
</html>
