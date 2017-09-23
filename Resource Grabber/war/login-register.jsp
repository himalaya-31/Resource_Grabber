<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%> 
    <%-- <% HttpSession sess = request.getSession(false);
		
		   if(sess.getAttribute("sess") != null && sess.getAttribute("pass") != null){
			   response.sendRedirect("/error");
		   }
		%> --%>
       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html dir="ltr" lang="en-US">
<head>
	<link rel="shortcut icon" type="image/x-icon" href="images\booklogo.png"/>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />
	

	<!-- Stylesheets
	============================================= -->
	<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="style.css" type="text/css" />
	<link rel="stylesheet" href="css/dark.css" type="text/css" />
	<link rel="stylesheet" href="css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="css/animate.css" type="text/css" />
	<link rel="stylesheet" href="css/magnific-popup.css" type="text/css" />
	<link rel="stylesheet" href="css/addbar.css" type="text/css">

	<link rel="stylesheet" href="css/responsive.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />


		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="author" content="SemiColonWeb" />

		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<link rel="stylesheet" href="Forget/oxygen.css" type="text/css" />
	<link rel="stylesheet" href="Forget/form-gap.css" type="text/css" />
	<link rel="stylesheet" href="Forget/passion one.css" type="text/css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
 <!-- Stylesheets
	============================================= -->
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="Forget/oxygen.css" type="text/css" />
<link rel="stylesheet" href="Forget/form-gap.css" type="text/css" />
<link rel="stylesheet" href="Forget/passion one.css" type="text/css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

	<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="style.css" type="text/css" />
	<link rel="stylesheet" href="css/dark.css" type="text/css" />
	<link rel="stylesheet" href="css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="css/animate.css" type="text/css" />
	<link rel="stylesheet" href="css/magnific-popup.css" type="text/css" />

	<link rel="stylesheet" href="css/responsive.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	

	<!-- Document Title
	============================================= -->
	<title>Login/Register | Resource Grabber</title>

</head>

<body class="stretched">

		


	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">



		<!-- Header
		============================================= -->
		<header id="header" class="full-header">

			<div id="header-wrap">

				<div class="container clearfix">

					<div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

					<!-- Logo
					============================================= -->
					<div id="logo" >
						<a href="/home" class="standard-logo" data-dark-logo="images/logo-dark.png"><img src="images/rg.png" alt="Canvas Logo"></a>
						<a href="/home" class="retina-logo" data-dark-logo="images/logo-dark.png"><img src="images/rg.png" alt="Canvas Logo"></a>
					</div><!-- #logo end -->

					<!-- Primary Navigation
					============================================= -->
					<nav id="primary-menu">

						<ul class="sf-js-enabled" style="border-right-width:0px;">
							<li><a href="/home"><div>Home</div></a></li>
							<li><a href="/shop"><div>Shop</div></a></li>

						</ul>


					</nav><!-- #primary-menu end -->

				</div>

			</div>

		</header><!-- #header end -->

		<!-- Page Title
		============================================= -->
		<section id="page-title">

			<div class="container clearfix">
				<h1>My Account</h1>
			</div>

		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

					<div class="col_one_third nobottommargin">

						<div class="well well-lg nobottommargin">
							<form id="login-form" name="login-form" class="nobottommargin" action="/loginController" method="post">

								<h3>Login to your Account</h3>

								<div class="col_full">
									<label for="login-form-username">Email-Id:</label>
									<input type="email" id="login-form-username" name="login-form-email" value="" class="form-control" required>
								</div>

								<div class="col_full">
									<label for="login-form-password">Password:</label>
									<input type="password" id="login-form-password" name="login-form-password" value="" class="form-control" required>
								</div>
                            
								<div class="col_full nobottommargin">
									<button class="button button-3d nomargin" id="login-form-submit" name="login-form-submit" value="login">Login</button>
									</form>
									<a href="#" class="fright" data-toggle="modal" data-target=".bs-example-modal-lg">Forgot Password?</a>

                  <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">

										<div class="modal-dialog modal-md">
											<div class="modal-body">
												<div class="modal-content">

												<br>

													 <div class="row">
														 <div class="col-md-6 col-md-offset-0">

																			 <div class="panel-body" style=" width:210% ">
																				 <div class="text-center">
																					 <h3><i class="fa fa-lock fa-4x"></i></h3>
																					 <h2 class="text-center">Forgot Password?</h2>
																					 <p>You can reset your password here.</p>
																					 <div class="panel-body">

																						 <form id="register-form" role="form" action="/forgotPasswordController" autocomplete="off" class="form" method="post">

																							 <div class="form-group">
																								 <div class="input-group">
																									 <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
																									 <input id="email" name="email" placeholder="email address" class="form-control"  type="email" required>
																								 </div>
																							 </div>
																							

																							 <input  id="kuch" type="submit" class="btn btn-success"  <%-- data-notify-type="success" data-notify-msg="<i class=icon-ok-sign></i> Email has been sent Successfully!" onclick="SEMICOLON.widget.notifications(this); return true;" --%> class="hide" name="token" id="token" value="Submit">
																						 </form>

																					 </div>
																				 </div>
																			 </div>

																	 </div>
													 </div>



												</div>
											</div>
										</div>
									</div>


								</div>

							
						</div>

					</div>

					<div class="col_two_third col_last nobottommargin">


						<h3>Don't have an Account? Register Now.</h3>

						<p>You are just few steps away from exploring an unimaginative world of <strong>RESOURCE GRABBER</strong>. But before that we'd like you to register. </p>

						<form id="register-form" name="register-form" class="nobottommargin" action="/registerDetailsController" method="post">

							<div class="col_half">
								<label for="register-form-name">Name:</label>
								<input type="text" id="register-form-name" name="register-form-name" value="" class="form-control" required>
							</div>

							<div class="col_half col_last">
								<label for="register-form-email">Email-Id:</label>
								<input type="email" id="email" name="register-form-email" value="" class="form-control"  required><br>
							</div>
							

							<div class="clear"></div>





							<div class="col-half">
									
										<label for="register-form-semester" >semester:</label>
										<select class="form-control" name="register-form-semester" required>
											<option value="" disabled selected>Please Select Semester</option>
											<option>I</option>
											<option>II</option>
											<option>III</option>
											<option>IV</option>
											<option>V</option>
											<option>VI</option>
											<option>VII</option>
											<option>VIII</option>
										</select>

									
								</div>
								<br>
								
								<div class="col-half-col-last">
									
										<label for="register-form-branch" >BRANCH:</label>
										<select class="form-control" name="register-form-branch" required>
											<option value="" disabled selected>Please Select Branch</option>
											<option>CSE</option>
											<option>IT</option>
											<option>ECE</option>
											<option>EEE</option>
										</select>


									
								</div>
								<br>
							





							<div class="clear"></div>

							<div class="col_half">
								<label for="register-form-password">Choose Password:</label>
								<input type="password" id="register-form-password" name="register-form-password" value="" class="form-control" required>
							</div>

							<div class="col_half col_last">
								<label for="register-form-repassword">Re-enter Password:</label>
								<input type="password" id="register-form-repassword" name="register-form-repassword" value="" class="form-control" required>
							</div>

							<div class="clear"></div>

							<div class="col_full nobottommargin">
								<button type="submit" class="button button-3d button-black nomargin" id="register-form-submit" name="register-form-submit" value="register">Register Now</button>
							</div>
							<script type="text/javascript">
							var password = document.getElementById("register-form-password")
														  , confirm_password = document.getElementById("register-form-repassword");

							function validatePassword(){
  							if(password.value != confirm_password.value) {
    									confirm_password.setCustomValidity("Passwords Don't Match");
  							} else {
  										  confirm_password.setCustomValidity('');
									  }
							}

								password.onchange = validatePassword;
							confirm_password.onkeyup = validatePassword;
							</script>

						

						</form>

					</div>

				</div>

			</div>

		</section><!-- #content end -->

		<!-- Footer
		============================================= -->
		<footer id="footer" class="dark">

			<div class="container">

				<!-- Footer Widgets
				============================================= -->
				<div class="footer-widgets-wrap clearfix">

					<div class="col_two_third">

						<div class="col_one_third">

							<div class="widget clearfix">

								<p>We believe in providing a user friendly platform for healthy exchanges of resources among buyers and sellers</p>

								<div style="background: url('images/world-map.png') no-repeat center center; background-size: 100%;">
									<address>
										<strong>Headquarter:</strong><br>
										Maharaja Surajmal Institute of <br>
										Technology, C-4, Lal Sain Mandir Marg, Janak Puri,
										 New Delhi, Delhi - 110058
									</address>
									<abbr title="Phone Number"><strong>Phone:</strong></abbr> &nbsp +91 8447550607<br>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp+91 7532050362<br>
									&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp+91 8882826082<br>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp+91 7838258814<br>
									&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp+91 8510984226<br><br>
									<abbr title="Email Address"><strong>Email:</strong></abbr>  linkinparkhoney@gmail.com<br>&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  lalitgarg716@gmail.com<br> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  rajat.mital97@gmail.com
								</div>

							</div>

						</div>
						<div class="col_one_third_col_last">
							<div class="widget clearfix">
								<h3><strong>Map of our Headquarter:<strong></h3>

							<div id="map" style="height:270px;width:60%;"></div>

					    <script>
					      function initMap() {
					        var uluru = {lat: 28.620879, lng: 77.092451};
					        var map = new google.maps.Map(document.getElementById('map'), {
					          zoom: 17,
					          center: uluru
					        });
					        var marker = new google.maps.Marker({
					          position: uluru,
					          map: map
					        });
					      }
					    </script>
					    <script async defer
					    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyByqVROhqwiPrPgGIS5-NE3DBMHaySdTN4&callback=initMap">
					    </script>
						</div>
						</div>

					</div>

					<div class="col_one_third col_last">
						<h3><strong>Subscribe &amp follow us on:<strong></h3>

						<div class="widget subscribe-widget clearfix">


							<h5 style="margin-top:60px"><strong>Subscribe</strong> to Our Newsletter to get Important News, Amazing Offers &amp; Inside Scoops:</h5>
							<div class="widget-subscribe-form-result"></div>
							<form id="widget-subscribe-form" action="/subscribeController" role="form" method="post" class="nobottommargin">
								<div class="input-group divcenter">
									<span class="input-group-addon"><i class="icon-email2"></i></span>
									<input type="email" id="widget-subscribe-form-email" name="subscribe" class="form-control required email" placeholder="Enter your Email">
									<span class="input-group-btn">
										<button class="btn btn-success" type="submit">Subscribe</button>
									</span>
								</div>
							</form>
						</div>

						<div class="widget clearfix" style="margin-bottom: -20px;">

							<div class="row"	style="margin-top:100px">

								<div class="col-md-6 clearfix bottommargin-sm" >
									<a href="https://www.facebook.com/Resource-Grabber-272109036602863/" class="social-icon si-dark si-colored si-facebook nobottommargin" style="margin-right: 10px;">
										<i class="icon-facebook"></i>
										<i class="icon-facebook"></i>
									</a>
									<a href="https://www.facebook.com/Resource-Grabber-272109036602863/"><small style="display: block; margin-top: 3px;"><strong>Like us</strong><br>on Facebook</small></a>
								</div>

								<div class="col-md-6 clearfix bottommarfin-sm">
									<a href="https://plus.google.com/u/0/communities/110553979335731893500" class="social-icon si-dark si-colored si-gplus nobottommargin" style="margin-right: 10px;">
										<i class="icon-gplus"></i>
										<i class="icon-gplus"></i>
									</a>
									<a href="https://plus.google.com/u/0/communities/110553979335731893500"><small style="display: block; margin-top: 3px;"><strong>Join us</strong><br>on Google plus</small></a>
								</div>


							</div>

						</div>

					</div>

				</div><!-- .footer-widgets-wrap end -->

			</div>

			<!-- Copyrights
			============================================= -->
			<div id="copyrights">

				<div class="container clearfix">

					<div class="col_half">
						Copyrights &copy; 2014 All Rights Reserved by Canvas Inc.<br>

					</div>

					<div class="col_half col_last tright">

						<div class="clear"></div>

						<i class="icon-envelope2"></i> linkinparkhoney@gmail.com<span class="middot">&middot;</span> <i class="icon-headphones"></i> +91 8447550607 <span class="middot">&middot;</span> <i class="icon-skype2"></i> Himalaya Baddhan
					</div>

				</div>

			</div><!-- #copyrights end -->

		</footer><!-- #footer end -->

	</div><!-- #wrapper end -->

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- External JavaScripts
	============================================= -->
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/plugins.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script type="text/javascript" src="js/functions.js"></script>
	<script type="text/javascript">
	 var email=document.getElementById("email");
	 function validateEmail()
	 {   var atpos=email.indexOf("@");
	     var dotpos=email.lastIndexOf(".");
		 if(atpos<1 || dotpos<dotpos+2 ||dotpos+2>=email.length)
			 {
			      email.setCustomValidity("invalid");
			 }
		 else
			 {
			    email.setCustomValidity('');
			 }
	 }
	</script>
	
</body>
</html>
