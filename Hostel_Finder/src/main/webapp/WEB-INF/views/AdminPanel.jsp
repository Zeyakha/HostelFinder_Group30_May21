<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
HttpSession sess = request.getSession(false);
if (sess == null) {
	response.sendRedirect("http:/localhost:8080/Hostel_Finder/home");
}
%>
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
	<form action="http://localhost:8080/Hostel_Finder/addhostelModel" enctype="multipart/form-data" method="post">
		<!-- enctype="multipart/form-data" -->
		<div>
			<label for="hostelname">Hostel Name</label><input type="text"
				placeholder="Hostel Name" name="hostelname" />
		</div>
		<div>
			<label for="hostelname">Near College</label><input type="text"
				placeholder="Near College" name="nearcollege" />
		</div>
		<label>Type</label><select name="hosteltype">
			<option value="">Hostel Type</option>
			<option value="B">Boys Hostel</option>
			<option value="G">Girls Hostel</option>
		</select><br>
		<label>Image</label><input type="file" accept="image/" alt="upload" name="image" />
		</label><textarea rows="20" cols="80" placeholder="Hostel Description"
			name="hosteldes"></textarea><br>
	<label>City</label><select id="input" name="city" onchange="random_function()">
			<option>Select City</option>
			<option>PUNE</option>
		</select>
		<div>
			<label>Area</label><select id="output" name="area" onchange="random_function1()">
		</div>

		<input type="submit" value="Next" />
		</li>
		</ul>
	</form>
	<script>
		function random_function() {
			var a = document.getElementById("input").value;
			if (a === "PUNE") {
				var arr = ["Chimbali","Dhankawadi Police Station Road","Mohammed wadi","New Sangavi","Tungarli","Vanpuri","Varale","Varsoli","Yashwantrao Chavan Nagar","Ambegaon 1","Anand Nagar","Bopkhel"];
			}

			var string = "";

			for (i = 0; i < arr.length; i++) {
				string = string + "<option value="+arr[i]+">" + arr[i]
						+ "</option>";
			}
			document.getElementById("output").innerHTML = string;
		}
	</script>
</body>
</html>