<%@page import="javax.mail.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="static com.resourcegrabber.service.OfyService.ofy" %>
<%@ page import="com.resourcegrabber.entity.RegisterDetailsEntity" %> 
<%@ page import = "java.io.*,java.util.*" %>  
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
	<link rel="stylesheet" href="css/swiper.css" type="text/css" />
	<link rel="stylesheet" href="css/dark.css" type="text/css" />
	<link rel="stylesheet" href="css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="css/animate.css" type="text/css" />
	<link rel="stylesheet" href="css/magnific-popup.css" type="text/css" />

	<link rel="stylesheet" href="css/responsive.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<!-- Document Title
	============================================= -->
	<title>Resource Grabber | Home</title>

</head>

<body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Header
		============================================= -->
		<header id="header" class="transparent-header full-header" data-sticky-class="not-dark">

			<div id="header-wrap">

				<div class="container clearfix">

					<div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

					<!-- Logo
					============================================= -->


					<!-- Primary Navigation
					============================================= -->
					<nav id="primary-menu" class="dark">

						<ul class="sf-js-enabled" style="border-right-width:0px;">
							<li class="current"><a href="/home"><div>Home</div></a>
							</li>
							<li class="current"><a href="shop"><div>Shop</div></a>
							</li>
							<% HttpSession sess = request.getSession(false);
							   if(sess.getAttribute("sess") != null)
							   {
								   RegisterDetailsEntity rde = ofy().load().type(RegisterDetailsEntity.class).id((String)sess.getAttribute("sess")).now();
							%>	
							
							<li class="current"><a href="uploads"><div>Upload Items</div></a>
							</li> 
							 <li class="current"><a href="#"><div><%=rde.name %></div></a>
							 <ul>
							     <li><a href="uploadItems"><div>
							                 <i class="icon-user"></i>Uploaded Items
							              </div></a>
							         </li>
							     <li><a href="logOut"><div>
							                <i class="icon-line2-logout pull-left"></i>Log Out
							              </div></a>
							          </li>
							          
							       </ul></li>                    
							 		
 
							
							
							<%}
							   else{%>
							<li class="current"><a href="loginregister"><div>Login/Register</div></a>
							</li>
							<%} %>
						</ul>
						 
						<!-- Top Cart
						============================================= -->

						<!-- Top Search
						============================================= -->


					</nav><!-- #primary-menu end -->

				</div>

			</div>

		</header><!-- #header end -->

		<section id="slider" class="slider-parallax swiper_wrapper full-screen clearfix">
			<div class="slider-parallax-inner">

				<div class="swiper-container swiper-parent">
					<div class="swiper-wrapper">
						<div class="swiper-slide dark" style="background-image: url('images/slider/swiper/libraryarticle.jpg');">
							<div class="container clearfix">
								<div class="slider-caption slider-caption-center">
								  <h2 data-caption-animate="fadeInUp"  style="color:blue;font-size:150%;">Welcome To Resource Grabber</h2>
									
													<li class="list-group-item"  data-caption-animate="fadeInUp">
											
											<p data-caption-animate="fadeInUp" data-caption-delay="200" style="color:white"><strong>All you want for your bright future. Don't go here and there, just consult the resource grabber.</strong></p>
													</li>
									<!--<h2 data-caption-animate="fadeInUp"  style="color:#FF0000;font-size:150%;">Welcome To Resource Grabber</h2>-->
									
								</div>
							</div>
						</div>
						<div class="swiper-slide dark">
							<div class="container clearfix">
								<div class="slider-caption slider-caption-center">
									
											<h2 data-caption-animate="fadeInUp" style="color:#ff0000;">Beautifully Flexible</h2>
												<ul class="list-group">
													<li class="list-group-item"  data-caption-animate="fadeInUp">
											<p data-caption-animate="fadeInUp" data-caption-delay="200"><strong>All in one universe of study materials. All you can imagine and all that you can not.</strong></p>
													</li>
								</div>
							</div>
							<div class="video-wrap">
								<img src="images/slider/swiper/sm2.jpg"  style="width:1350px;height:650px;">
								<div class="video-overlay" style="background-color: rgba(0,0,0,0.55);"></div>
							</div>
						</div>
						<div class="swiper-slide dark" style="background-image: url('images/slider/swiper/sm3.jpg'); background-position: center top;">
							<div class="container clearfix">
								<div class="slider-caption slider-caption-left">
								<h2 data-caption-animate="fadeInUp" style="color:black" >Great Performance</h2>
									<ul class="list-group">
										<li class="list-group-item"  data-caption-animate="fadeInUp">
											
											<p data-caption-animate="fadeInUp"  data-caption-delay="200"><strong>Get the best study materials here at the buffer time. Don't wait for the exam time.</strong></p>
										</li>	
								</div>
							</div>
						</div>
					</div>
					<div id="slider-arrow-left"><i class="icon-angle-left"></i></div>
					<div id="slider-arrow-right"><i class="icon-angle-right"></i></div>
				</div>

				<a href="#" data-scrollto="#content" data-offset="100" class="dark one-page-arrow"><i class="icon-angle-down infinite animated fadeInDown"></i></a>

			</div>
		</section>

		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">
					<div class="row clearfix">

						<!--<h1  style="color:black;font-family:verdana;text-align:center">Welcome Students!!</h1>-->
						<div class="heading-block center">
							<h3>Welcome Students!!</h3>
						</div>
						<hr>
						<p  style="font-size:160%">Imagine a resource that will make  possible of daily basic needs of college students. Yes thats true,
							you imagined and here we are with the best resource grabber which will fulfill basic necessities of potential minds of college
							from cradle to grave we have every thing you can imagine. Don't be so mean and selfish by depositing your old/unused resources, this can include your drafters, old samples papers,refreshers or books of a random subjects straight into garbage dumps instead deposit them to this student friendly platform. This platform acts as an medium between potentials minds in search of valuable resources and those who want to make money out of nothing. You are just a step away from awailing this golden opportunity.
						</p>
						<hr>
					</div>
				</div>





				<div class="section topmargin nobottommargin nobottomborder">
					<div class="container clearfix">
						<div class="heading-block center nomargin">
							<h3>Our Mission</h3>
						</div>
						<div class="content-wrap">
							<div class="container clearfix">
								<div class="row clearfix">
									<p style="font-size:160%;">Our mission is to provide a platform for students to share their used resources to those who need them.
										Be a first choice for the students as always ready online resource that provides the best solution for the needs of future engineers of our country. and
										will strive hard towards the successful execution of education system of our country.</p>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="section parallax dark nobottommargin" style="background-image: url('images/services/books.jpg'); padding: 100px 0;" data-stellar-background-ratio="0.4">
					
					<div class="heading-block center">
						<h4><i>Inspirational Thoughts:</i></h4>
					</div>

					<div class="fslider testimonial testimonial-full" data-animation="fade" data-arrows="false">
						<div class="flexslider">
						  <ul class="list-group">
						   <li class="list-group-item">
							<div class="slider-wrap">
								<div class="slide">

									<div class="testi-content">
										<p  style="color:aqua">I have no special talent I'm only passionately curious</p>
										<div class="testi-meta">
											Albert Einstien
										</div>
									</div>
								</div>
								<div class="slide">
									<div class="testi-content">
										<p  style="color:aqua">More the simplicity of anything, larger will be its applicability</p>
										<div class="testi-meta">
											William Shakespeare
										</div>
									</div>
								</div>
								<div class="slide">
									<div class="testi-content">
										<p   style="color:aqua">If you can dream it, you can do it.</p>
										<div class="testi-meta">
											Walt Disney
										</div>
									</div>
								</div>
							</div>
						</div>
					  </li>
					</div>
					
				</div>

				<div class="section">
					<div class="container clearfix">

						<div class="row topmargin-sm">

							<div class="heading-block center">
								<h3>Meet Our Team</h3>
							</div>

							<div class="col-md-2 col-sm-6 bottommargin">

								<div class="team">
									<div class="team-image">
										<a target="_blank" href="http://2-dot-himalaya-msit.appspot.com"><img src="images/team/himalaya.jpg" alt"Himalaya"></a>
									</div>
									<div class="team-desc team-desc-bg">
										<div class="team-title"><a target="_blank" href="http://2-dot-himalaya-msit.appspot.com"><h4>Himalaya</h4></a><span>Front-end &amp Back-end Developer</span></div>
										<a target="_blank" href="https://www.facebook.com/himalaya.linkin" class="social-icon inline-block si-small si-light si-rounded si-facebook">
											<i class="icon-facebook"></i>
											<i class="icon-facebook"></i>
										</a>
										<a target="_blank" href="https://twitter.com/Himalay30827846" class="social-icon inline-block si-small si-light si-rounded si-twitter">
											<i class="icon-twitter"></i>
											<i class="icon-twitter"></i>
										</a>
										<a target="_blank" href="https://plus.google.com/107343176018685578604" class="social-icon inline-block si-small si-light si-rounded si-gplus">
											<i class="icon-gplus"></i>
											<i class="icon-gplus"></i>
										</a>
									</div>
								</div>

							</div>

							<div class="col-md-2 col-sm-6 bottommargin">

								<div class="team">
									<div class="team-image">
										<a target="_blank" href="http://1-dot-ashishdagar-msit.appspot.com"><img src="images/team/ashish.jpg" alt="Ashish Dagar"></a>
									</div>
									<div class="team-desc team-desc-bg">
										<div class="team-title"><a target="_blank" href="http://1-dot-ashishdagar-msit.appspot.com"><h4>Ashish Dagar</h4></a><span>Front-end &amp Back-end Developer</span></div>
										<a target="_blank" href="https://www.facebook.com/ashish.dagar.961" class="social-icon inline-block si-small si-light si-rounded si-facebook">
											<i class="icon-facebook"></i>
											<i class="icon-facebook"></i>
										</a>
										<a target="_blank" href="https://twitter.com/AshishDagar1998" class="social-icon inline-block si-small si-light si-rounded si-twitter">
											<i class="icon-twitter"></i>
											<i class="icon-twitter"></i>
										</a>
										<a target="_blank" href="https://plus.google.com/u/0/107611252813290256179" class="social-icon inline-block si-small si-light si-rounded si-gplus">
											<i class="icon-gplus"></i>
											<i class="icon-gplus"></i>
										</a>
									</div>
								</div>

							</div>

							<div class="col-md-2 col-sm-6 bottommargin">

								<div class="team">
									<div class="team-image">
										<img src="images/team/lalit.jpg" alt="Lalit Garg">
									</div>
									<div class="team-desc team-desc-bg">
										<div class="team-title"><h4>Lalit Garg</h4><span>Front-end &amp Back-end Developer</span></div>
										<a target="_blank" href="https://www.facebook.com/lalit.garg.5895834" class="social-icon inline-block si-small si-light si-rounded si-facebook">
											<i class="icon-facebook"></i>
											<i class="icon-facebook"></i>
										</a>
										<a target="_blank" href="https://twitter.com/amangarg281996" class="social-icon inline-block si-small si-light si-rounded si-twitter">
											<i class="icon-twitter"></i>
											<i class="icon-twitter"></i>
										</a>
										<a target="_blank" href="https://plus.google.com/u/0/114930088789381537133" class="social-icon inline-block si-small si-light si-rounded si-gplus">
											<i class="icon-gplus"></i>
											<i class="icon-gplus"></i>
										</a>
									</div>
								</div>

							</div>

							<div class="col-md-2 col-sm-6 bottommargin">

								<div class="team">
									<div class="team-image">
										<img src="images/team/rajat.jpg" alt="Rajat Mital">
									</div>
									<div class="team-desc team-desc-bg">
										<div class="team-title"><h4>Rajat Mital</h4><span>Front-end &amp Back-end Developer</span></div>
										<a target="_blank" href="https://www.facebook.com/rajat.mital.3" class="social-icon inline-block si-small si-light si-rounded si-facebook">
											<i class="icon-facebook"></i>
											<i class="icon-facebook"></i>
										</a>
										<a target="_blank" href="https://twitter.com/RajatMital97" class="social-icon inline-block si-small si-light si-rounded si-twitter">
											<i class="icon-twitter"></i>
											<i class="icon-twitter"></i>
										</a>
										<a target="_blank" href="https://plus.google.com/u/0/117341292604566647540" class="social-icon inline-block si-small si-light si-rounded si-gplus">
											<i class="icon-gplus"></i>
											<i class="icon-gplus"></i>
										</a>
									</div>
								</div>

							</div>

							<div class="col-md-2 col-sm-6 bottommargin">

								<div class="team">
									<div class="team-image">
										<a target="_blank" href="http://1-dot-sunilresume-173406.appspot.com"><img src="images/team/sunil1.jpg" alt="Sunil Mishra">
									</div>
									<div class="team-desc team-desc-bg">
										<div class="team-title"><a target="_blank" href="http://1-dot-sunilresume-173406.appspot.com"><h4>Sunil Mishra</h4></a><span>Content Writer</span></div>
										<br>
										<a href="#" class="social-icon inline-block si-small si-light si-rounded si-facebook">
											<i class="icon-facebook"></i>
											<i class="icon-facebook"></i>
										</a>
										<a target="_blank" href="https://twitter.com/SunilMi91450434" class="social-icon inline-block si-small si-light si-rounded si-twitter">
											<i class="icon-twitter"></i>
											<i class="icon-twitter"></i>
										</a>
										<a target="_blank" href="https://plus.google.com/u/0/118376847606108405992" class="social-icon inline-block si-small si-light si-rounded si-gplus">
											<i class="icon-gplus"></i>
											<i class="icon-gplus"></i>
										</a>
									</div>
								</div>

							</div>

						</div>

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
									<input type="email" id="widget-subscribe-form-email" placeholder="info@example.com" name="subscribe" class="form-control required email" >
									<span class="input-group-btn">
										<button class="btn btn-success" type="submit">Subscribe</button>
									</span>
								</div>
							</form>
						</div>

						<div class="widget clearfix" style="margin-bottom: -20px;">

							<div class="row"	style="margin-top:100px">

								<div class="col-md-6 clearfix bottommargin-sm" >
									<a target="_blank" href="https://www.facebook.com/Resource-Grabber-272109036602863/" class="social-icon si-dark si-colored si-facebook nobottommargin" style="margin-right: 10px;">
										<i class="icon-facebook"></i>
										<i class="icon-facebook"></i>
									</a>
									<a target="_blank" href="https://www.facebook.com/Resource-Grabber-272109036602863/"><small style="display: block; margin-top: 3px;"><strong>Like us</strong><br>on Facebook</small></a>
								</div>

								<div class="col-md-6 clearfix bottommarfin-sm">
									<a target="_blank" href="https://plus.google.com/u/0/communities/110553979335731893500" class="social-icon si-dark si-colored si-gplus nobottommargin" style="margin-right: 10px;">
										<i class="icon-gplus"></i>
										<i class="icon-gplus"></i>
									</a>
									<a target="_blank" href="https://plus.google.com/u/0/communities/110553979335731893500"><small style="display: block; margin-top: 3px;"><strong>Join us</strong><br>on Google plus</small></a>
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

</body>
</html>
