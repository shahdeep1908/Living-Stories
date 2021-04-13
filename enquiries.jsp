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
</style>
</head>
<body>
<%
	Cookie c[] = request.getCookies();
	String user = c[1].getValue();
	System.out.println("password is"+ user); 
	
	String url = "jdbc:mysql://localhost:3307/project",
	username = "root", 
	password = "mysql";
	
	String price = "a";
	
		 Class.forName("com.mysql.jdbc.Driver"); // Defining JDBC Driver
		 Connection conn = DriverManager.getConnection(url, username, password);
		 
		 String money = "select price from seller_details where username = ?";
		 PreparedStatement ps1 = conn.prepareStatement(money);
		 ps1.setString(1, user);
		 ResultSet rs1 = ps1.executeQuery();
		 rs1.next();
		 price = rs1.getString(1);
		 System.out.println(price);
		 
		 String buyername = "select buyername from make_offer where price = ?";
		 PreparedStatement ps2 = conn.prepareStatement(buyername);
		 ps2.setString(1, price);
		 ResultSet rs2 = ps2.executeQuery();
		 
		 String mobile = "select mobile from make_offer where price = ?";
		 PreparedStatement ps3 = conn.prepareStatement(mobile);
		 ps3.setString(1, price);
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
				<li><a href="index.jsp">Home</a></li>
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
                            <th>Buyer name</th>
                            <th>Mobile Number</th>
                            <th>Offer</th>
                          </tr>
                          <%
                          	while(rs2.next() && rs3.next())
                          	{
                          %>
                          <tr>
                            <td><%=rs2.getString(1) %></td>
                            <td><%=rs3.getString(1) %></td>
                            <td><%=price %></td>
                          </tr>
                          <%
                          	} 
                          %>
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
