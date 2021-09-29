<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="<c:url value="/resources/css/client.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/lucknow.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/sample.css" />">
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Client</title>
</head>
<body>
<%
	String firstname=(String)request.getAttribute("firstname");
	String lastname=(String)request.getAttribute("lastname");
	String phone=(String)request.getAttribute("phone");
	String email=(String)request.getAttribute("email");
	String dob=(String)request.getAttribute("dob");
%>
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
	<div class="container emp-profile">
		<form method="get">
			<div class="row">
				<div class="col-md-4">
					<div class="profile-img">
						<img
							 src="https://toppng.com/uploads/preview/instagram-default-profile-picture-11562973083brycehrmyv.png"
							alt="" />
						<div class="file btn btn-lg btn-primary">
							Change Photo <input type="file" name="file" />
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="profile-head">
						<h5><%= firstname+" "+lastname %></h5>
						<h6>Web Developer and Designer</h6>
						<p class="proile-rating">
							RANKINGS : <span>8/10</span>
						</p>
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								id="home-tab" data-toggle="tab" href="#home" role="tab"
								aria-controls="home" aria-selected="true">About</a></li>
							<li class="nav-item"><a class="nav-link" id="profile-tab"
								data-toggle="tab" href="#profile" role="tab"
								aria-controls="profile" aria-selected="false">Timeline</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-2">
					<input type="submit" class="profile-edit-btn" name="btnAddMore"
						value="Edit Profile" />
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="profile-work">
						<!-- <p>WORK LINK</p>
						<a href="">Website Link</a><br /> <a href="">Bootsnipp
							Profile</a><br /> <a href="">Bootply Profile</a>
						<p>SKILLS</p>
						<a href="">Web Designer</a><br /> <a href="">Web Developer</a><br />
						<a href="">WordPress</a><br /> <a href="">WooCommerce</a><br />
						<a href="">PHP, .Net</a><br /> -->
					</div>
				</div> 
				<div class="col-md-8">
					<div class="tab-content profile-tab" id="myTabContent">
						<div class="tab-pane fade show active" id="home" role="tabpanel"
							aria-labelledby="home-tab">
							<div class="row">
								<div class="col-md-6">
									<label>User Id</label>
								</div>
								<div class="col-md-6">
									<p>Kshiti123</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Name</label>
								</div>
								<div class="col-md-6">
									<p><%=firstname+" "+lastname %></p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Email</label>
								</div>
								<div class="col-md-6">
									<p><%=email %></p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Phone</label>
								</div>
								<div class="col-md-6">
									<p><%=phone %></p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Date-Of-Birth</label>
								</div>
								<div class="col-md-6">
									<p><%=dob %></p>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="profile" role="tabpanel"
							aria-labelledby="profile-tab">
							<div class="row">
								<div class="col-md-6">
									<label>Experience</label>
								</div>
								<div class="col-md-6">
									<p>Expert</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Hourly Rate</label>
								</div>
								<div class="col-md-6">
									<p>10$/hr</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Total Projects</label>
								</div>
								<div class="col-md-6">
									<p>230</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>English Level</label>
								</div>
								<div class="col-md-6">
									<p>Expert</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Availability</label>
								</div>
								<div class="col-md-6">
									<p>6 months</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<label>Your Bio</label><br />
									<p>Your detail description</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>