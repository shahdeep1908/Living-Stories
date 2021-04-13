<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>Living Stories</title>
	<meta charset="UTF-8">
	<meta name="description" content="Real estate HTML Template">
	<meta name="keywords" content="real estate, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Lato:400,400i,700,700i,900%7cRoboto:400,400i,500,500i,700,700i&display=swap" rel="stylesheet">

 
	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/slicknav.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="css/style.css"/>

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section -->
	<header class="header-section">
		<a href="index.html" class="site-logo">
			<img src="img/logo.png" alt="">
		</a>
		<nav class="header-nav">
			<ul class="main-menu">
				<li><a href="index.jsp" class="active">Home</a></li>
                <li><a href="enquiries.jsp">Enquiries</a></li>
				<li><a href="contact.html">Contact</a></li>
			</ul>
			<div class="header-right">
				<div class="user-panel">
					<a href="LoginPage.jsp" class="login">Sign in</a>
					<a href="#" class="register">Join us</a>
				</div>
			</div>
		</nav>
	</header>
	<!-- Header Section end -->

	<!-- Page top Section end -->
	<section class="page-top-section-new set-bg" data-setbg="img/page-top-bg-new.jpg">
	</section>
	<!-- Page top Section end -->

	<!-- Contact Section end -->
	<section class="contact-section">
					<div class="section-title text-left">
						<center><h2>Upload the details here</h2></center>
					</div>
              <form class="contact-form" action="seller_property" method="post">
				<div class="row">
				<div class="col-lg-6">
					<h4>Property Holder Name :</h4><br><br><br>
					<h4>Property Name :</h4><br><br>
					<h4>Locality :</h4>
				</div>
				<div class="col-lg-6">
					<input type="text" name="holdername" placeholder="Enter Property Holder Name">
					<input type="text" name="propertyname" placeholder="Enter Property Name">
					<input type="text" name="description" placeholder="Enter Property Locality">
				</div>
                	<div class="col-lg-12">
                        <textarea placeholder="Details" name="details"></textarea>
                     </div>
					<div class="col-lg-2">
                    	<label>AC</label>
                    </div>
                    <div class="col-lg-1">
						<input type="radio" id="yes" name="AC" value="yes">
  						<label for="yes">Yes</label>
                    </div>
                    <div class="col-lg-1">
					  	<input type="radio" id="no" name="AC" value="no">
						<label for="no">No</label>
					</div> <br />
                    <div class="col-lg-2">
                    	<label>GEYSER</label>
                    </div>
                    <div class="col-lg-1">
						<input type="radio" id="yes" name="geyser" value="yes">
  						<label for="yes">Yes</label>
                    </div>
                    <div class="col-lg-1">
					  	<input type="radio" id="no" name="geyser" value="no">
						<label for="no">No</label>
					</div><br />
                    <div class="col-lg-2">
                    	<label>PARKING</label>
                    </div>
                    <div class="col-lg-1">
						<input type="radio" id="yes" name="parking" value="yes">
  						<label for="yes">Yes</label>
                    </div>
                    <div class="col-lg-1">
					  	<input type="radio" id="no" name="parking" value="no">
						<label for="no">No</label>
					</div> <br />
                    <div class="col-lg-2">
                    	<label>FOOD</label>
                    </div>
                    <div class="col-lg-1">
                    	<input type="checkbox" name="food" value="breakfast">
                        <label for="food">Breakfast</label><br>
                     </div>
                     <div class="col-lg-1">
                        <input type="checkbox" name="food" value="lunch">
                        <label for="food">Lunch</label><br><br>
				     </div>
                     <div class="col-lg-1">
                        <input type="checkbox" name="food" value="dinner" >
                        <label for="food">Dinner</label><br><br>
				     </div>
                     <div class="col-lg-1">
                        <input type="checkbox" name="food" value="no food available" >
                        <label for="food">No food available</label><br><br>
				     </div> <br />
                    <div class="col-lg-2">
                    	<label>ENTRY TIMINGS </label>
                    </div>
                    <div class="col-lg-2">
						<input type="text" placeholder="Timings" name="timing">
                    </div>
                    <div class="col-lg-1">
					  	<input type="radio" id="no" name="timing" value="no">
						<label for="no">No</label>
					</div>  <br />
					<div class="col-lg-12">
						<button class="site-btn sb-big" type="submit">SEND DETAILS</button>
					</div>
				</div>
			</form>
	</section>

	<!-- Footer Section -->
	<footer class="footer-section">
		<div class="container">
			<div class="row text-white">
				<div class="col-lg-4">
					<div class="footer-widger">
						<div class="about-widget">
							<div class="aw-text">
								<img src="img/footer-logo.png" alt="">
								<a href="#" class="site-btn">we are hiring</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-6">
					<div class="footer-widger">
						<h2>Company</h2>
						<ul>
							<li><a href="#">About us</a></li>
							<li><a href="#">Services</a></li>
							<li><a href="#">Clients</a></li>
							<li><a href="#">Testimonials</a></li>
							<li><a href="#">Carrers</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-6">
					<div class="footer-widger">
						<h2>For Buyers</h2>
						<ul>
							<li><a href="#">Buy with us</a></li>
							<li><a href="#">Papers</a></li>
							<li><a href="#">Clients</a></li>
							<li><a href="#">Testimonials</a></li>
							<li><a href="#">Homes</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-3 col-sm-6">
					<div class="footer-widger">
						<h2>For Renters</h2>
						<ul>
							<li><a href="#">Rent with us</a></li>
							<li><a href="#">Guidelines</a></li>
							<li><a href="#">Apartments</a></li>
							<li><a href="#">Flats</a></li>
							<li><a href="#">Houses</a></li>
						</ul>
					</div>
				</div>
			</div>
         </div>
	</footer>
	<!-- Footer Section end -->
	
	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/main.js"></script>
	<script>
		function upload()
		{
			window.location.href = "Upload.jsp";
		}
	</script>
	</body>
</html>
