<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Living stories</title>
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<style>

body {
	margin:  0;
	background-image: url("sell-bg.jpg");
}
.page-content {
	width: 100%;
	margin:  0 auto;
	display: flex;
	display: -webkit-flex;
	justify-content: center;
	-o-justify-content: center;
	-ms-justify-content: center;
	-moz-justify-content: center;
	-webkit-justify-content: center;
	align-items: center;
	-o-align-items: center;
	-ms-align-items: center;
	-moz-align-items: center;
	-webkit-align-items: center;
}
.form-v8-content  {
	background: #fff;
	width: 600px;
	border-radius:15px;
	box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
	-o-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
	-ms-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
	-webkit-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
	margin: 177px 0;
	font-family: 'Source Sans Pro', sans-serif;
	color: #fff;
	position: relative;
	display: flex;
	display: -webkit-flex;
}

.form-v8-content .form-right {
    padding: 30px 0;
	position: relative;
	width: 100%;
	background: #000000;
	border-radius:15px;
}
.form-v8-content .tab {
	margin: 5px 0 48px;
	width: 100%;
    display: flex;
    display: -webkit-flex;
    justify-content: space-between;
    -o-justify-content: space-between;
    -ms-justify-content: space-between;
    -moz-justify-content: space-between;
    -webkit-justify-content: space-between;
}
.form-v8-content .tab .tab-inner {
	width: 100%;
}
.form-v8-content .tab .tablinks {
	background: transparent;
	border: none;
	outline: none;
	-o-outline: none;
	-ms-outline: none;
	-moz-outline: none;
	-webkit-outline: none;
	font-family: 'Source Sans Pro', sans-serif;
	font-size: 28px;
	font-weight: 400;
	color: #ccc;
	padding-bottom: 22px;
	border-bottom: 3px solid;
	border-bottom-color: rgba(255, 255, 255, 0.2);
	width: 100%;
}
.form-v8-content .tab .tablinks.active {
	font-weight: 700;
	color: #fff;
	border-bottom-color: #ff000a;
}
.form-v8-content .form-detail {
	padding:  0 40px;
}
.form-v8-content .form-row {
    width: 100%;
    position: relative;
}
.form-v8-content .form-row .form-row-inner {
	position: relative;
	width: 100%;
}
.form-v8-content .form-row .form-row-inner .label {
	position: absolute;
    top: -2px;
    left: 10px;
    font-size: 18px;
    color: #f2f2f2;
    font-weight: 400;
    transform-origin: 0 0;
    transition: all .2s ease;
    -moz-transition: all .2s ease;
    -webkit-transition: all .2s ease;
    -o-transition: all .2s ease;
    -ms-transition: all .2s ease;
}
.form-v8-content .form-row .form-row-inner .border {
	position: absolute;
    bottom: 31px;
    left: 0;
    height: 1px;
    width: 100%;
    background: #53c83c;
    transform: scaleX(0);
    -moz-transform: scaleX(0);
    -webkit-transform: scaleX(0);
    -o-transform: scaleX(0);
    -ms-transform: scaleX(0);
    transform-origin: 0 0;
    transition: all .15s ease;
    -moz-transition: all .15s ease;
    -webkit-transition: all .15s ease;
    -o-transition: all .15s ease;
    -ms-transition: all .15s ease;
}
.form-v8-content .form-detail .input-text {
	margin-bottom: 31px;
}
.form-v8-content .form-detail input {
	width: 100%;
    padding: 0px 10px 15px 10px;
    border: 1px solid transparent;
    border-bottom: 1px solid;
    border-bottom-color: rgba(255, 255, 255, 0.2);
    background: transparent;
    appearance: unset;
    -moz-appearance: unset;
    -webkit-appearance: unset;
    -o-appearance: unset;
    -ms-appearance: unset;
    outline: none;
    -moz-outline: none;
    -webkit-outline: none;
    -o-outline: none;
    -ms-outline: none;
    font-size: 18px;
    color: #fff;
    font-weight: 300;
    box-sizing: border-box;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -o-box-sizing: border-box;
    -ms-box-sizing: border-box;
}
.form-v8-content .form-detail .form-row .input-text:focus{
	border-bottom: 1px solid #53c83c;
	background: transparent;
}
.form-v8-content .form-detail .form-row .input-text:focus + .label, 
.form-v8-content .form-detail .form-row .input-text:valid + .label {
	transform: translateY(-26px) scale(1);
	-moz-transform: translateY(-26px) scale(1);
    -webkit-transform: translateY(-26px) scale(1);
    -o-transform: translateY(-26px) scale(1);
    -ms-transform: translateY(-26px) scale(1);

}
.form-v8-content .form-detail .form-row .input-text:focus  + .border, 
.form-v8-content .form-detail .form-row .input-text:valid  + .border {
	transform: scaleX(1);
	-moz-transform: scaleX(1);
    -webkit-transform: scaleX(1);
    -o-transform: scaleX(1);
    -ms-transform: scaleX(1);

}
.form-v8-content .form-detail .register {
	background: #ff000a;
	border-radius: 5px;
	-o-border-radius: 5px;
	-ms-border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	width: 160px;
	border: none;
	margin: 15px 0 50px 0px;
	cursor: pointer;
	font-family: 'Source Sans Pro', sans-serif;
	color: #fff;
	font-weight: 700;
	font-size: 18px;
}
.form-v8-content .form-detail .register:hover {
	background: #7a0907;
}
.form-v8-content .form-detail .form-row-last input {
	padding: 11px;
}
/* Responsive */
@media screen and (max-width: 991px) {
	.form-v8-content {
		margin: 180px 20px;
		flex-direction:  column;
		-o-flex-direction:  column;
		-ms-flex-direction:  column;
		-moz-flex-direction:  column;
		-webkit-flex-direction:  column;
	}
	.form-v8-content .form-left {
		width: 100%;
	}
	.form-v8-content .form-left img {
		width: 100%;
		border-bottom-left-radius: 0px;
	    border-top-right-radius: 8px;
	}
	.form-v8-content .form-right {
		width: auto;
		border-top-right-radius: 0;
		border-bottom-left-radius: 8px;
	}
	.form-v8-content .tab {
		margin-top: 45px;
	}
	.form-v8-content .form-detail .register {
		margin-bottom: 80px;
	}
}

@media screen and (max-width: 325px) {
	.form-v8-content .tab {
		flex-direction: column;
		-o-flex-direction: column;
		-ms-flex-direction: column;
		-moz-flex-direction: column;
		-webkit-flex-direction: column;
	}
}

</style>
</head>
<body class="form-v8">
<%
	try 
	{
		int timeout = 0;
		Cookie c[] = request.getCookies();
		String user = c[0].getValue();
		String pass = c[1].getValue();
		System.out.println(user);
		System.out.println(pass);
		response.setHeader("Refresh", timeout+"; url = seller_image.jsp");	
	}
	catch(Exception e)
	{
		System.out.println("Error Message :"+e.getMessage());
		int timeout = 120;
		System.out.println(timeout);
		response.setHeader("Refresh", timeout+"; url = LoginPage.jsp");
	}
%>
	<div class="page-content">
		<div class="form-v8-content">
			<div class="form-right">
				<div class="tab">
					<div class="tab-inner">
						<button class="tablinks" onclick="openCity(event, 'sign-up')" id="defaultOpen">Sign Up</button>
					</div>
					<div class="tab-inner">
						<button class="tablinks" onclick="openCity(event, 'sign-in')">Sign In</button>
					</div>
							</div>
				<form class="form-detail" action="register" method="post">
<div class="tabcontent" id="sign-up">
						<div class="form-row">
							<label class="form-row-inner">
								<input type="text" required="true" name="email" id="full_name" class="input-text">
								<span class="label">Email</span>
								<span class="border"></span>
							</label>
						</div>	
						<div class="form-row">
							<label class="form-row-inner">
								<input type="text" required="true" name="username" id="full_name" class="input-text">
								<span class="label">Username</span>
								<span class="border"></span>
							</label>
						</div>
						<div class="form-row">
							<label class="form-row-inner">
								<input type="password" required="true" name="password" id="full_name" class="input-text">
								<span class="label">Password</span>
								<span class="border"></span>
							</label>
						</div>
						<div class="form-row">
							<label class="form-row-inner">
								<input type="text" required="true" name="location" id="full_name" class="input-text">
								<span class="label">Location</span>
								<span class="border"></span>
							</label>
						</div>
						<div class="form-row-last">
							<center>
							<input type="submit" name="Register" class="register" value="Register">
							</center>
						</div>
					</div>
				</form>
			
			
				<form class="form-detail" method="post" action="Login"> 
					<div class="tabcontent" id="sign-in">
						<div class="form-row">
							<label class="form-row-inner">
								<input type="text" required="true" name="l_username" id="full_name" class="input-text">
		  						<span class="label">Username</span>
								<span class="border"></span>
							</label>
						</div>
						<div class="form-row">
							<label class="form-row-inner">
								<input type="password" required="true" name="password" id="full_name" class="input-text">
								<span class="label">Password</span>
								<span class="border"></span>
							</label>
						</div>
						<div class="form-row">
							<label class="form-row-inner">
								<input type="password" required="true" name="cpassword" id="full_name" class="input-text">
								<span class="label">Confirm Password</span>
								<span class="border"></span>
							</label>
						</div>
						<div class="form-row-last">
							<center>
							<input type="submit" name="register" class="register" value="Sign In">
							</center>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function openCity(evt, cityName) {
		    var i, tabcontent, tablinks;
		    tabcontent = document.getElementsByClassName("tabcontent");
		    for (i = 0; i < tabcontent.length; i++) {
		        tabcontent[i].style.display = "none";
		    }
		    tablinks = document.getElementsByClassName("tablinks");
		    for (i = 0; i < tablinks.length; i++) {
		        tablinks[i].className = tablinks[i].className.replace(" active", "");
		    }
		    document.getElementById(cityName).style.display = "block";
		    evt.currentTarget.className += " active";
		}

		// Get the element with id="defaultOpen" and click on it
		document.getElementById("defaultOpen").click();
	</script>
</body>
</html>