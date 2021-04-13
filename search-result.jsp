<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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


	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
<style>
	.col-xl-6 p-0, .col-md-6, .property-item {
		display: inline-block;
	}
.readmore-btn {
	float: right;
}
</style>
</head>
<body>
<%
String url = "jdbc:mysql://localhost:3307/project",
user = "root", 
pass = "mysql";

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection(url,user,pass);

String search = request.getParameter("search");
System.out.println(search);

String image = "select imagename from images where locality = ?";
PreparedStatement ps1 = conn.prepareStatement(image);
ps1.setString(1, search);
ResultSet rs1 = ps1.executeQuery();

String price = "select price from seller_details where description = ?";
PreparedStatement ps2 = conn.prepareStatement(price);
ps2.setString(1, search);
ResultSet rs2 = ps2.executeQuery();

String details = "select details from seller_details where description = ?";
PreparedStatement ps3 = conn.prepareStatement(details);
ps3.setString(1, search);
ResultSet rs3 = ps3.executeQuery();
%>
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
				<li><a href="index.html" class="active">Home</a></li>
				<li><a href="contact.html">Contact</a></li>
			</ul>
			<div class="header-right">
				<div class="user-panel">
					<a href="#" class="login">Sign in</a>
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

	<!-- Search Result Section end -->
	<section class="search-result-section ">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-6 p-0">
					<div class="search-result-map">
						<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d235013.70712670434!2d72.4396539!3d23.0204978!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e848aba5bd449%3A0x4fcedd11614f6516!2sAhmedabad%2C%20Gujarat!5e0!3m2!1sen!2sin!4v1603710565481!5m2!1sen!2sin"></iframe>
					</div>
				</div>
				<div class="col-xl-6 p-0">
					<div class="search-results">
						<div class="row">
							<div class="col-md-12">
								<div class="property-item">
									<form action="single-property.jsp" method="post">
								<%
									while(rs1.next() && rs2.next() && rs3.next())
									{
								%>
									<div class="pi-image">
										<img src="E:/SEM 5 PRACTICALS/WAD/Project/WebContent/img/property/<%=rs1.getString(1) %>" alt="">
									</div>
									<h3>
										<%=rs2.getString(1) %>
									</h3>
									<h5>
										<%=rs3.getString(1) %>
										<input type="hidden" name="imagename" value="<%=rs1.getString(1) %>">
										<%
										String images = rs1.getString(1);
										session.setAttribute("imagename", images); %>
										<button type="submit"class="readmore-btn">  Find out more</button>
									</h5>
									<br>
									<%
										}
									%>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Search Result Section end -->

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

	</body>
</html>
