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
<link rel="stylesheet"
	href="<c:url value="/resources/css/lucknow.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/sample.css" />">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Hostel Finder</title>
</head>
<body onload="dataGetter('spl')">

	<div class="Z fixed-bg">
		<div class="text">HOSTEL FINDER</div>
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
		<h2>About Hostel Finder Team</h2>
		<p class="bg-danger">Hostel Finder Team consist of 2 members
			namely Mohd Zeya Iqbal khan and Vishal Pawar . They are students of
			Infoway technology. This team is a talented, ambitious and
			hardworking individual with broad skills in Coding and leading
			projects. Handling multiple tasks on a daily basis competently,
			working well under the pressure. One of his key strengths is
			communication, building strong relationships with people in order to
			deliver the best results. He is confident in his abilities to produce
			and while he prepare for the worst, he do the work necessary to tilt
			the odds that the best will happen. He want to be judged by
			individual performance and he want be rewarded for his efforts. He
			seek to work for a successful company that has strong leadership and
			vision and who recognizes and rewards performers. He is someone who
			is consistently growing himself and who takes the time to continue
			learning even though it's not a direct requirement of the job. He
			find that many times it's a combination of what you study both
			directly and indirectly related to work. He is someone who is mature,
			candid and who has integrity. Everyday he work to improve himself and
			his skills which is part of maturing and becoming better at what he
			do.</p>

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
		<h3></h3>
	</footer>

</body>
</html>
