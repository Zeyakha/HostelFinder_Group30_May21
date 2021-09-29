<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hostel Data</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous" -->
<link rel="stylesheet"
	href="<c:url value="/resources/css/hosteldata.css" />">

</head>
<body onload="data('disp')">

	<div class="container-fluid" id="disp"></div>
	<!-- <footer class="container-fluid">
		<h3>Follow us on</h3>
		<h3>
			<a href="http://www.facebook.com" class="fa fa-facebook"></a> <a
				href="https://twitter.com/login" class="fa fa-twitter"></a> <a
				href="https://gmail.com" class="fa fa-google"></a> <a
				href="https://youtube.com" class="fa fa-youtube"></a> <a
				href="https://instagram.com" class="fa fa-instagram"></a>
		</h3>
	</footer> -->

	<script src="<c:url value="/resources/js/hosteldata.js" />"></script>
	<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script> -->
</body>
</html>