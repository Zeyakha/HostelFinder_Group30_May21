<%-- 
    Document   : frontpage
    Created on : 6 Oct, 2018, 1:41:06 AM
    Author     : zeya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <title>Andaze-E-Lucknow</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../CSS/lucknow.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="Z fixed-bg">
           <div class="text">SHAN-E-LUCKNOW</div>
        <nav class="navbar navbar-inverse" id="nav">
                <div id="nagivation" class="navbar-collapse collapse">
                    <div class="nevbar-header">
                        <a href="#" class="navbar-brand"></a>
                    </div>
                    <ul class="nav nav-pills navbar-right">
                        <li class="dropdown use ymm ymm-fw open">
                            <a href="#" class="dropdown-toggle">Home</a>
                        </li>
                        <li class="dropdown use ymm ymm-fw">
                            <a href="#" class="dropdown-toggle">Hotels<span class="caret"></span></a>
                        </li>
                        <li class="dropdown use ymm ymm-fw">
                            <a href="#" class="dropdown-toggle">Malls<span class="caret"></span></a>
                        </li>
                        <li class="dropdown use ymm ymm-fw">
                            <a href="#" class="dropdown-toggle">Foods<span class="caret"></span></a>
                        </li>
                        <li class="dropdown use ymm ymm-fw">
                            <a href="#" class="dropdown-toggle">Monuments<span class="caret"></span></a>
                        </li>
                        <li class="dropdown use ymm ymm-fw">
                            <a href="#" class="dropdown-toggle">Culture<span class="caret"></span></a>
                        </li>
                        <li>
                            <input type="text" placeholder="Search..">
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Login</a>
                        </li>
                    </ul>
                </div>
        </nav>
        </div>
        <div class="container-fluid" id="gt">
            
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
      <img src="../Images/1.jpg" style="width:100%">
    </div>

    <div class="item">
        <img src="../Images/2.jpg" style="width:100%">
    </div>

    <div class="item">
      <img src="../Images/4.jpg" style="width:100%">
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
    </body>
</html>