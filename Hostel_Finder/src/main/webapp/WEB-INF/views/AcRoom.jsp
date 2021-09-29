<%-- 
    Document   : frontpage
    Created on : 6 Oct, 2018, 1:41:06 AM
    Author     : zeya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <title>Hostel Finder</title>
        <script src="js/frontpage.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/lucknow.css">
<link rel="stylesheet" href="css/sample.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body onload="AcRoom('hostel_display')">
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
							<li><a
								href="http://localhost:8080/Hostel_Finder/NonAcRoom">NON-AC</a></li>
							<li><a href="#">AC/NON-AC</a></li>
						</ul></li>
					<li class="dropdown use ymm ymm-fw"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Filter<span
							class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a
								href="http://localhost:8080/Hostel_Finder/LowToHigh">LowToHigh</a></li>
							<li><a
								href="http://localhost:8080/Hostel_Finder/HighToLow">HighToLow</a></li>
						</ul></li>
					<li class="dropdown use ymm ymm-fw"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">City<span
							class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Lucknow</a></li>
						</ul></li>

					<li><a href="http://localhost:8080/Hostel_Finder/login">Login</a>
					</li>
					<li><a
						href="http://localhost:8080/Hostel_Finder/registration">Sing
							Up</a></li>
				</ul>
				<ul class="nav nav-pills navbar-right">
					<li><a
						href="http://localhost:8080/Hostel_Finder/ContactUs">Contact
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
        <div class="container-fluid" id="hostel_display" >
           <!-- <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                  <div class="row">
                    <div class="col-md-4">
                            <img src="./images/Girls.jpg" class="img-thumbnail" alt="Cinque Terre">
                    </div>
                    <div class="col-md-8" id="hos">
                        <h1>Integral Girls Hostel </h1>
                        <p>Common Room equipped with indoor game facilities.
    Playground and courts for outdoor games like Badminton, Volleyball, Cricket, Skating, Lawn Tennis, Basketball, etc.
    Gymnasium
    24 Hrs. wi-fi
    Water Purifier
    Parking
    Guest Rooms
    Reading Room</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                    <a href="http://localhost:8080/HostelFinder/hosteldata/Integralgirlshostel.jsp">Know More</a>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                  <div class="row">
                    <div class="col-md-4">
                       <img src="./images/Boys.JPG" class="img-thumbnail" alt="Cinque Terre">
                    </div>
                    <div class="col-md-8" id="hos">
                        <h1>Integral Boys Hostel</h1>
                        <p>
    Common Room equipped with indoor game facilities.
    Playground and courts for outdoor games like Badminton, Volleyball, Cricket, Skating, Lawn Tennis, Basketball, etc.
    Gymnasium
    24 Hrs. wi-fi
    Water Purifier
    Parking
    Guest Rooms
    Reading Room
</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                    <a href="http://localhost:8080/HostelFinder/hosteldata/Integralboyshostel.jsp">Know More</a>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-6">
                  <div class="row">
                    <div class="col-md-4">
                            <img src="./images/4.jpg" class="img-thumbnail" alt="Cinque Terre">
                    </div>
                    <div class="col-md-8" id="hos">
                        <h1>Awad Hostel</h1>
                        <p> Common Room equipped with indoor game facilities.
    Playground and courts for outdoor games like Badminton, Volleyball, Cricket, Skating, Lawn Tennis, Basketball, etc.
    Gymnasium
    24 Hrs. wi-fi
    Water Purifier
    Parking
    Guest Rooms
    Reading Room</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                    <a href="http://localhost:8080/HostelFinder/hosteldata/awadhostel.jsp">Know More</a>
                </div>
            </div>
            
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                  <div class="row">
                    <div class="col-md-4">
                            <img src="./images/2.jpg" class="img-thumbnail" alt="Cinque Terre">
                    </div>
                    <div class="col-md-8" id="hos">
                        <h1>Rajat Hostel</h1>
                        <p>Common Room equipped with indoor game facilities.
    Playground and courts for outdoor games like Badminton, Volleyball, Cricket, Skating, Lawn Tennis, Basketball, etc.
    Gymnasium
    24 Hrs. wi-fi
    Water Purifier
    Parking
    Guest Rooms
    Reading Room</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                    <a href="http://localhost:8080/HostelFinder/hosteldata/rajathostel.jsp">Know More</a>
                </div>
            </div>-->
            
        </div>
        <div class="container">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
 <div class="carousel-inner">
    <div class="item active">
      <img src="images/Boys.JPG" style="width:100%">
    </div>

    <div class="item">
        <img src="images/Girls.jpg" style="width:100%">
    </div>

    <div class="item">
      <img src="images/4.jpg" style="width:100%">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
            </div>
            </div>
        <footer class="container-fluid">
                <h3>Follow us on</h3>
                <h3>
                   <a href="http://www.facebook.com" class="fa fa-facebook"></a>
                    <a href="https://twitter.com/login" class="fa fa-twitter"></a>
                    <a href="https://gmail.com" class="fa fa-google"></a>
                    <a href="https://youtube.com" class="fa fa-youtube"></a>
                    <a href="https://instagram.com" class="fa fa-instagram"></a>
                    
                    
                </h3>
                <h3>
                    
                </h3>
            </footer>
    </body>
</html>