<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from theme.crumina.net/html-olympus/01-LandingPage.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 17 Jun 2017 16:16:35 GMT -->
<head>

	<title>Innovative</title>

	<!-- Required meta tags always come first -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="x-ua-compatible" content="ie=edge">

	<!-- Main Font -->
	<script src="js/webfontloader.min.js"></script>
	<script>
		WebFont.load({
			google: {
				families: ['Roboto:300,400,500,700:latin']
			}
		});
	</script>

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" type="text/css" href="Bootstrap/dist/css/bootstrap-reboot.css">
	<link rel="stylesheet" type="text/css" href="Bootstrap/dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="Bootstrap/dist/css/bootstrap-grid.css">

	<!-- Theme Styles CSS -->
	<link rel="stylesheet" type="text/css" href="css/theme-styles.css">
	<link rel="stylesheet" type="text/css" href="css/blocks.css">
	<link rel="stylesheet" type="text/css" href="css/fonts.css">

	<!-- Styles for plugins -->
	<link rel="stylesheet" type="text/css" href="css/jquery.mCustomScrollbar.min.css">
	<link rel="stylesheet" type="text/css" href="css/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-select.css">


</head>

<body class="landing-page">

<div class="content-bg-wrap">
	<div class="content-bg"></div>
</div>


<!-- Landing Header -->

<div class="container">
	<div class="row">
		<div class="col-xl-12 col-lg-12 col-md-12">
			<div id="site-header-landing" class="header-landing">
				<a href="#" class="logo">
					<img src="img/logo.png" alt="Olympus">
					<h5 class="logo-title">Innovative</h5>
				</a>

				<ul class="profile-menu">
					<li>
						<a href="#">About Us</a>
					</li>
					<li>
						<a href="#">Careers</a>
					</li>
					<li>
						<a href="#">FAQS</a>
					</li>
					<li>
						<a href="#">Help & Support</a>
					</li>
					<li>
						<a href="#" class="js-expanded-menu">
					<!-- 		<svg class="olymp-menu-icon"><use xlink:href="icons/icons.svg#olymp-menu-icon"></use></svg> -->
							<svg class="olymp-close-icon"><use xlink:href="icons/icons.svg#olymp-close-icon"></use></svg>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>

<!-- ... end Landing Header -->

<!-- Login-Registration Form  -->

<div class="container">
	<div class="row display-flex">
		<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-xs-12">
			<div class="landing-content">
				<h1>Welcome to the Biggest Social Network in the World</h1>
				<p>We are the best and biggest social network with 5 billion active users all around the world. Share you
					thoughts, write blog posts, show your favourite music via Stopify, earn badges and much more!
				</p>
				<%
String success=(String)request.getAttribute("Success");
String firstname=(String)session.getAttribute("firstname");
String lastname=(String)session.getAttribute("lastname");
if(success != null){
out.print("<p style='background-color=white; font-size:24px; color:black'><b>"+success +", "+ firstname+ " "+ lastname+ "</b></p>");
} %>
<% 
String msg=(String)request.getAttribute("msg");
if(msg != null){
out.print("<p style='background-color=white; font-size:24px; color:black'><b>"+msg +"</b></p>");
} %>

<% 
String error=(String)request.getAttribute("error");
if(error != null){
out.print("<p style='background-color=white; font-size:24px; color:black'><b>"+error +"</b></p>");
} %>
							
			</div>
		</div>

		<div class="col-xl-5 col-lg-6 col-md-12 col-sm-12 col-xs-12">
			<div class="registration-login-form">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item">
						<a class="nav-link active" data-toggle="tab" href="#home" role="tab">
							<b>
							R<br>
							E<br>
							G<br>
							I<br>
							S<br>
							T<br>
							E<br>
							R<br>
							</b>
							
					<!-- 		<svg class="olymp-login-icon"><use xlink:href="icons/icons.svg#olymp-login-icon"></use></svg> -->
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" data-toggle="tab" href="#profile" role="tab">
						 <b>
						 L<br>
						 O<br>
						 G<br>
						 I<br>
						 N<br>
						 
						 </b>
						</a>
					</li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div class="tab-pane active" id="home" role="tabpanel" data-mh="log-tab">
						<div class="title h6">Register to Innovative</div>
						<form class="content" action="${pageContext.request.contextPath}/RegistrationController" method="post">
							<div class="row">
								<div class="col-lg-6 col-md-6">
									<div class="form-group label-floating">
									
										<label class="control-label">First Name</label>
										<input class="form-control" placeholder="" type="text" name="fn">
									</div>
								</div>
								<div class="col-lg-6 col-md-6">
									<div class="form-group label-floating">
										<label class="control-label">Last Name</label>
										<input class="form-control" placeholder="" type="text" name="ln">
									</div>
								</div>
								<div class="col-xl-12 col-lg-12 col-md-12">
									<div class="form-group label-floating">
										<label class="control-label">Your Email</label>
										<input class="form-control" placeholder="" type="email" name="email">
									</div>
									<div class="form-group label-floating">
										<label class="control-label">Your Password</label>
										<input class="form-control" placeholder="" type="password" name="password">
									</div>

									<div class="form-group date-time-picker label-floating">
										<label class="control-label">Your Birthday</label>
										<input type= "date" name="birthdate"/>
										<span class="input-group-addon">
										<!-- 	<svg class="olymp-calendar-icon"><use xlink:href="icons/icons.svg#olymp-calendar-icon"></use></svg> -->
										</span>
									</div>

									<div class="form-group label-floating is-select">
										<label class="control-label">Your Gender</label>
										<select class="selectpicker form-control" name=gender>
											<option value="MALE">Male</option>
											<option value="FEMALE">Female</option>
										</select>
										
									</div>

									<div class="remember">
										<div class="checkbox">
											<!-- <label>
												<input name="optionsCheckboxes" type="checkbox">
												I accept the <a href="#">Terms and Conditions</a> of the website
											</label> -->
										</div>
									</div>

									
									
								</div>
							</div>
							<input class="btn btn-purple btn-lg full-width" type="submit" value="Complete Registration!">
						</form>
					</div>

					<div class="tab-pane" id="profile" role="tabpanel" data-mh="log-tab">
						<div class="title h6">Login to your Account</div>
						<form class="content">
							<div class="row">
								<div class="col-xl-12 col-lg-12 col-md-12">
									<div class="form-group label-floating">
										<label class="control-label">Your Email</label>
										<input class="form-control" placeholder="" type="email">
									</div>
									<div class="form-group label-floating">
										<label class="control-label">Your Password</label>
										<input class="form-control" placeholder="" type="password">
									</div>

									<div class="remember">

										<div class="checkbox">
											<label>
												<input name="optionsCheckboxes" type="checkbox">
												Remember Me
											</label>
										</div>
										<a href="#" class="forgot">Forgot my Password</a>
									</div>

									<a href="#" class="btn btn-lg btn-primary full-width">Login</a>

									<div class="or"></div>

									<a href="#" class="btn btn-lg bg-facebook full-width btn-icon-left"><i class="fa fa-facebook" aria-hidden="true"></i>Login with Facebook</a>

									<a href="#" class="btn btn-lg bg-twitter full-width btn-icon-left"><i class="fa fa-twitter" aria-hidden="true"></i>Login with Twitter</a>


									<p>Don’t you have an account? <a href="#">Register Now!</a> it’s really simple and you can start enjoing all the benefits!</p>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- ... end Login-Registration Form  -->





<!-- jQuery first, then Other JS. -->
<script src="js/jquery-3.2.0.min.js"></script>
<!-- Js effects for material design. + Tooltips -->
<script src="js/material.min.js"></script>
<!-- Helper scripts (Tabs, Equal height, Scrollbar, etc) -->
<script src="js/theme-plugins.js"></script>
<!-- Init functions -->
<!--<script src="js/main.js"></script> -->

<!-- Select / Sorting script -->
<script src="js/selectize.min.js"></script>

<!-- Swiper / Sliders -->
<script src="js/swiper.jquery.min.js"></script>

<!-- Datepicker input field script-->
<script src="js/moment.min.js"></script>
<script src="js/daterangepicker.min.js"></script>

<script src="js/mediaelement-and-player.min.js"></script>
<script src="js/mediaelement-playlist-plugin.min.js"></script>




</body>

<!-- Mirrored from theme.crumina.net/html-olympus/01-LandingPage.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 17 Jun 2017 16:16:40 GMT -->
</html>