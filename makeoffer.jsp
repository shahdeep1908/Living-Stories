<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
<style>
table, td, th {  
  border: 1px solid #000;
  text-align: center;
  padding: 10px;
}

td {
	 background-color: #fff;
	 opacity:90%;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th {
  background-color: #ff000a;
  color: white;
}
h3 {
	color: green;
}
</style>
</head>
<body>
<%
	Random rm = new Random();
	String buyername = (String)session.getAttribute("buyeruser");
	String imagename = (String)session.getAttribute("imagename");
	
	String url = "jdbc:mysql://localhost:3307/project",
	username = "root", 
	password = "mysql";
	
	String price = "a";
	int phone = rm.nextInt(1000000000);
	String mob = String.valueOf(phone); 
	
	try
	{
		 Class.forName("com.mysql.jdbc.Driver"); // Defining JDBC Driver
		 Connection conn = DriverManager.getConnection(url, username, password);
		 
		 String images = "select username from images where imagename = ?";
		 PreparedStatement ps1 = conn.prepareStatement(images);
		 ps1.setString(1, imagename);
		 ResultSet rs1 = ps1.executeQuery();
		 rs1.next();
		 String user = rs1.getString(1);
		 
		 String money = "select price from seller_details where username = ?";
		 PreparedStatement ps2 = conn.prepareStatement(money);
		 ps2.setString(1, user);
		 ResultSet rs2 = ps2.executeQuery();
		 rs2.next();
		 price = rs2.getString(1);
		 System.out.println(price);
		 
		 String insert = "insert into make_offer(buyername, imagename, mobile, price) values(?, ?, ?, ?)";
		 PreparedStatement ps3 = conn.prepareStatement(insert);
		 ps3.setString(1, buyername);
		 ps3.setString(2, imagename);
		 ps3.setString(3, mob);
		 ps3.setString(4, price);
		 ps3.executeUpdate();
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
				<li><a href="index.html">Home</a></li>
                <li><a href="show_inquiry.html" class="active">Enquiries</a></li>
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

	<!-- Hero Section end -->
	<section class="hero-section set-bg" data-setbg="img/sell-bg.jpg">
		<div class="container">
			<div class="hero-warp">
				<form class="main-search-form" action ="search-result.html">
					<div class="search-type">	
                        <table>
                         <tr>
                         	<h3>Hurray...</h3>
                         	<h3>Appointment has been Booked Successfully!!!</h3>
                         	<h3>Owner will contact you within Short Time...</h3>
                         </tr>
                         <tr></tr>
                         <tr>
                         	<br><br>
                         	<p>You will be redirected soon...</p>
                         	<%
                         		int timeout = 10;
                         		response.setHeader("Refresh", timeout+"; url = index.jsp");
                         	%>
                         </tr>
                        </table>	
                    </div>
				</form>
			</div>
		</div>
	</section>
    
    
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
