<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- <%@page import="javax.servlet.http.HttpSession"%> --%>
<%-- <%@page session="false"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%
 HttpSession sess = request.getSession(false);
if (sess == null) {
	response.sendRedirect("http:/localhost:8080/Hostel_Finder/home");
}
%> --%>
<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "-1");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AdminPanel</title>
<script src="js/frontpage.js" type="text/javascript"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="<c:url value="/resources/css/lucknow.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/sample.css" />">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
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
	<h1>Hello Admin!</h1>
	<form action="http://localhost:8080/Hostel_Finder/addroomModel" method="post">
		<label>Room Type</label><select name="roomtype">
			<option value="">Room Type</option>
			<option value="single">Single</option>
			<option value="double">Double</option>
			<option value="triple">Triple</option>
			</select><br>
			<label>Availability</label><input type="text" placeholder="available" name="available"/><br>
			<label>Rent</label><input type="text" placeholder="rent" name="rent"/><br>
			<label>AC/NON-AC</label><select name="ac">
			<option value="">choice</option>
			<option value="ac">AC</option>
			<option value="nonac">NON-AC</option>
			</select><br>
			

		<input type="submit" value="Add Room" />
	</form>
	<a href="http://localhost:8080/Hostel_Finder/home">Logout</a>
</body>
</html>