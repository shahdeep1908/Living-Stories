<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
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
	<link rel="stylesheet" href="css/magnific-popup.css"/>
	<link rel="stylesheet" href="css/slicknav.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="css/style.css"/>


	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>

<body>
<%
	String imagename = (String)session.getAttribute("imagename");
	int timeout = 60 * 60;
	session.setMaxInactiveInterval(timeout);
	
	String url = "jdbc:mysql://localhost:3307/project",
				username = "root", 
				password = "mysql";
	
	Cookie c[] = request.getCookies();
	String user = c[0].getValue();
	String pass = c[1].getValue();
	System.out.println(user);
	System.out.println(pass);
	String image = "a";
	String propertyname = "b";
	String money = "c";
	String desc = "d";
	String detail = "e";
	String ac = "f";
	String gey = "g";
	String park = "h";
	String Food = "i";
	String time = "j";

	try
	{
		 Class.forName("com.mysql.jdbc.Driver"); // Defining JDBC Driver
		 Connection conn = DriverManager.getConnection(url, username, password);
		 
		String fetch_image = "select imagename from images where username = ?";
		PreparedStatement ps1 = conn.prepareStatement(fetch_image);
		ps1.setString(1, user);
		ResultSet rs1 = ps1.executeQuery();
		rs1.next();
		image = rs1.getString(1);
		
		String property_name = "select propertyname from seller_details where username = ?";
		PreparedStatement ps2 = conn.prepareStatement(property_name);
		ps2.setString(1, user);
		ResultSet rs2 = ps2.executeQuery();
		rs2.next();
		propertyname = rs2.getString(1);
		
		String price = "select price from seller_details where username = ?";
		PreparedStatement ps3 = conn.prepareStatement(price);
		ps3.setString(1, user);
		ResultSet rs3 = ps3.executeQuery();
		rs3.next();
		money = rs3.getString(1);
		
		String description = "select description from seller_details where username = ?";
		PreparedStatement ps4 = conn.prepareStatement(description);
		ps4.setString(1, user);
		ResultSet rs4 = ps4.executeQuery();
		rs4.next();
		desc = rs4.getString(1);
		
		String details = "select details from seller_details where username = ?";
		PreparedStatement ps5 = conn.prepareStatement(details);
		ps5.setString(1, user);
		ResultSet rs5 = ps5.executeQuery();
		rs5.next();
		detail = rs5.getString(1);
		
		String AC = "select AC from seller_details where username = ?";
		PreparedStatement ps6 = conn.prepareStatement(AC);
		ps6.setString(1, user);
		ResultSet rs6 = ps6.executeQuery();
		rs6.next();
		ac = rs6.getString(1);
		
		String geyser = "select geyser from seller_details where username = ?";
		PreparedStatement ps7 = conn.prepareStatement(geyser);
		ps7.setString(1, user);
		ResultSet rs7 = ps7.executeQuery();
		rs7.next();
		gey = rs7.getString(1);
		
		String parking = "select parking from seller_details where username = ?";
		PreparedStatement ps8 = conn.prepareStatement(parking);
		ps8.setString(1, user);
		ResultSet rs8 = ps8.executeQuery();
		rs8.next();
		park = rs8.getString(1);
		
		String food = "select food from seller_details where username = ?";
		PreparedStatement ps9 = conn.prepareStatement(food);
		ps9.setString(1, user);
		ResultSet rs9 = ps9.executeQuery();
		rs9.next();
		Food = rs9.getString(1);
		
		String timing = "select timing from seller_details where username = ?";
		PreparedStatement ps10 = conn.prepareStatement(timing);			
		ps10.setString(1, user);
		ResultSet rs10 = ps10.executeQuery();
		rs10.next();
		time = rs10.getString(1);		
	}
	catch(Exception e)
	{
		System.out.println(e.getMessage());
	}
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
				<li><a href="index.jsp" class="active">Home</a></li>
				<li><a href="enquiries.jsp">Enquiries</a></li>
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

	<!-- Single Property Section end -->
	<section class="single-property-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="single-property">
						<div class="sp-image">
							<img src="E:/SEM 5 PRACTICALS/WAD/Project/WebContent/img/property/<%=image %>" alt="">
						</div>
						<div class="row">
							<div class="col-lg-8">
								<div class="property-header">
									<h3><%=propertyname%></h3>
								</div>
							</div>
							<div class="col-lg-4 text-left text-lg-right">
								<div class="property-header">
									<h3>
										<%=money %>
									</h3>
								</div>
							</div>
						</div>
						<div class="property-info-bar">
							<div class="row">
								<div class="col-lg-3">
									<!--<div class="pi-metas">
										<div class="pi-meta">3 Bed </div>
										<div class="pi-meta">2 Baths</div>
										<div class="pi-meta">1 Garage</div>
										<div class="pi-meta">2849 SF</div>
									</div>-->
								</div>
								<div class="col-lg-5 text-left text-lg-right">
									<a href="enquiries.jsp" class="offer-btn">See Enquiries</a>
								</div>
							</div>
						</div>
						<div class="property-text">
							<h4>Locality</h4>
							<p>
								<%=desc %>
							</p>
							<h4>Details</h4>
							<p>
								<%=detail %>
							</p>
						</div>
						<div class="property-feature">
							<div class="row">
								<div class="col-6 col-sm-4 col-md-3 col-lg-3">
									<div class="pf-box">
										<h6>AC</h6>
										<p><%=ac %></p>
									</div>
								</div>
								<div class="col-6 col-sm-4 col-md-3 col-lg-3">
									<div class="pf-box">
										<h6>GEYSER</h6>
										<p>
											<%=gey %>
										</p>
									</div>
								</div>
								<div class="col-6 col-sm-4 col-md-3 col-lg-3">
									<div class="pf-box">
										<h6>PARKING</h6>
										<p>
											<%=park %>
										</p>
									</div>
								</div>
								<div class="col-6 col-sm-4 col-md-3 col-lg-3">
									<div class="pf-box">
										<h6>Food served ?</h6>
										<p>
											<%=Food %>
										</p>
									</div>
								</div>
								<div class="col-6 col-sm-4 col-md-3 col-lg-3">
									<div class="pf-box">
										<h6>FIXED TIMINGS ?</h6>
										<p>
											<%=time %>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-8 sidebar">
					<div class="map-widget">
						<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14376.077865872314!2d-73.879277264103!3d40.757667781624285!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1546528920522" style="border:0" allowfullscreen></iframe>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--  Section end -->

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
