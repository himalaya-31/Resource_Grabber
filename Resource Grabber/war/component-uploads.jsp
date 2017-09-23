<%@page import="com.resourcegrabber.entity.RegisterDetailsEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page
	import="com.google.appengine.api.blobstore.BlobstoreServiceFactory"%>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService"%>
<%@ page import="com.resourcegrabber.controller.ProductDetailsController" %>
<%@ page import="com.resourcegrabber.service.RegisterDetailsService" %>
<%@ page import="static com.resourcegrabber.service.OfyService.ofy" %>
<%@ page import="com.resourcegrabber.entity.RegisterDetailsEntity" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html dir="ltr" lang="en-US">
<head>
	<link rel="shortcut icon" type="image/x-icon" href="images\booklogo.png"/>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />

	<!-- Stylesheets
	============================================= -->
	<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic|Play+Fair:700" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="style.css" type="text/css" />
	<link rel="stylesheet" href="css/dark.css" type="text/css" />
	<link rel="stylesheet" href="css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="css/animate.css" type="text/css" />
	<link rel="stylesheet" href="css/magnific-popup.css" type="text/css" />
	<link rel="stylesheet" href="css/custom.css"/>
	<!-- Bootstrap File Upload CSS -->
	<link rel="stylesheet" href="css/components/bs-filestyle.css" type="text/css" />

	<link rel="stylesheet" href="css/responsive.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />


	<!-- Document Title
	============================================= -->
	<title>User Uploads | Resource Grabber</title>

</head>

<body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Header
		============================================= -->
		<header id="header" class="full-header transparent-header">

			<div id="header-wrap">

				<div class="container clearfix">

					<div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

					<!-- Logo
					============================================= -->
					<div id="logo">
						<a href="/home" class="standard-logo" data-dark-logo="images/logo-dark.png"><img src="images/rg.png" alt="Canvas Logo"></a>
						<a href="/home" class="retina-logo" data-dark-logo="images/logo-dark@2x.png"><img src="images/logo@2x.png" alt="Canvas Logo"></a>
					</div><!-- #logo end -->

					<!-- Primary Navigation
					============================================= -->
					<nav id="primary-menu">
					<ul class="sf-js-enabled" style="border-right-width:0px;">
							<li><a href="/home"><div>Home</div></a>
							</li>
							<li><a href="/shop"><div>Shop</div></a>
							</li>
							<% HttpSession sess = request.getSession(false);
							   if(sess.getAttribute("sess") != null)
							   {
								   RegisterDetailsEntity rde = ofy().load().type(RegisterDetailsEntity.class).id((String)sess.getAttribute("sess")).now();
							%>
							
							 <li><a href="#"><div><%=rde.name %></div></a>
						
							 	<ul>
							     <li><a href="/uploadItems"><div>
							                 <i class="icon-user"></i>Uploaded Items
							              </div></a>
							         </li>
							     <li><a href="logOut"><div>
							                <i class="icon-line2-logout pull-left"></i>Log Out
							              </div></a>
							          </li>
							          
							       </ul></li>
								  
							
							<%}
							   else{
							   response.sendRedirect("/error");
							} %>

						</ul>
						</nav>
						
						</div>
						</div>
						


						<!-- Top Cart
						============================================= -->
												<!-- Top Search
						============================================= -->
						<!-- <div id="top-search">
							<a href="#" id="top-search-trigger"><i class="icon-search3"></i><i class="icon-line-cross"></i></a>
							<form action="search.html" method="get">
								<input type="text" name="q" class="form-control" value="" placeholder="Type &amp; Hit Enter..">
							</form>
						</div> --><!-- #top-search end -->

					</nav><!-- #primary-menu end -->



		</header><!-- #header end -->

		<!-- Page Title
		============================================= -->
		<section id="page-title">

			<div class="container clearfix">
				<h1>USER UPLOADS</h1>

			</div>

		</section><!-- #page-title end -->
		 <%
 	BlobstoreService blobstoreService = BlobstoreServiceFactory
 			.getBlobstoreService();
 %>
		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

					<!-- Post Content
					============================================= -->
					<form method="post" action="<%= blobstoreService.createUploadUrl("/productDetailsController") %>" method="post" enctype="multipart/form-data">
					<div class="postcontent nobottommargin clearfix">

						<div class="row">
						<h1 style="margin-left: 10px"> Product Details:</h1>

							<div class="col-md-12 bottommargin">
								<label>Item Name:</label><br>
								<input id="text" name="itemName" style="width:100%;" data-show-preview="false" required>
							</div>
							<div class="col-md-12 bottommargin">
								<label>Select an Image of your Item:</label><br>
								<input id="input-1" name="myFile" type="file" class="file" data-show-upload="false" required>
							</div>
							
							
							<div class="col-md-12 bottommargin">
									
										<label for="register-form-semester" >Select category of your item:</label>
										<select class="form-control" name="category"  required>
											<option value="" disabled selected>Please Select Category</option>
											<option>Notes</option>
											<option>Drafters</option>
											<option>Books</option>
											<option>Other</option>
										</select>

									
								</div>
								
								<div class="col-md-12 bottommargin">
								<label>Price:</label><br>
								<input id="text" style="width:100%;" name="price" data-show-preview="false" required>
							</div>
							

							
				            <div class="col-md-12 bottommargin">
								<label>About item (description):(minimum 25 characters..)</label><br>
								<!-- <input type="text" id="ankush" data-show-preview="false"> -->
								<textarea name="description" id="ankush" required></textarea>
							</div>
							
							<h1 style="margin-left: 10px">Contact Details: </h1>

							<div class="col-md-12 bottommargin">
								<label>Name:</label><br>
								<input id="text" name="name" style="width:100%;" data-show-preview="false"  required>
							</div>
							
							<div class="col-md-12 bottommargin">
								<label>Email-Id:</label><br>
								<input id="email" name="email" style="width:100%;" data-show-preview="false" type="email" placeholder="Please Enter Registered Email-Id" required>
							</div>
							
							<div class="col-md-12 bottommargin">
								<label>Phone Number:</label><br>
								<input id="text" name="phone" style="width:100%;" data-show-preview="false"  required>
							</div>
							
							<div class="col-md-12 bottommargin">
								<label>Address:</label><br>
								<!-- <input type="text" id="ankush" data-show-preview="false"> -->
								<textarea name="address" id="ankush" required></textarea>
							</div>

							<div class="bottommargin hidden-lg hidden-md"></div>

						</div>
						<div class="col_full nobottommargin">
							<button type="submit" class="button button-3d button-black nomargin" id="login-form-submit" name="login-form-submit" value="login">Submit</button>
						</div>

					</div><!-- .postcontent end -->
					</form>

					<!-- Sidebar
					============================================= -->
					<div class="sidebar nobottommargin col_last clearfix">
						<div class="sidebar-widgets-wrap">

							<div class="widget widget_links clearfix">


							</div>

						</div>
					</div><!-- .sidebar end -->

				</div>

			</div>

		</section><!-- #content end -->

		<!-- Footer
		============================================= -->
		
	</div><!-- #wrapper end -->

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- External JavaScripts
	============================================= -->
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/plugins.js"></script>

	<!-- Bootstrap File Upload Plugin -->
	<script type="text/javascript" src="js/components/bs-filestyle.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script type="text/javascript" src="js/functions.js"></script>

	<script  type="text/javascript">
		$(document).on('ready', function() {
			$("#input-5").fileinput({showCaption: false});

			$("#input-6").fileinput({
				showUpload: false,
				maxFileCount: 10,
				mainClass: "input-group-lg",
				showCaption: true
			});

			$("#input-8").fileinput({
				mainClass: "input-group-md",
				showUpload: true,
				previewFileType: "image",
				browseClass: "btn btn-success",
				browseLabel: "Pick Image",
				browseIcon: "<i class=\"icon-picture\"></i> ",
				removeClass: "btn btn-danger",
				removeLabel: "Delete",
				removeIcon: "<i class=\"icon-trash\"></i> ",
				uploadClass: "btn btn-info",
				uploadLabel: "Upload",
				uploadIcon: "<i class=\"icon-upload\"></i> "
			});

			$("#input-9").fileinput({
				previewFileType: "text",
				allowedFileExtensions: ["txt", "md", "ini", "text"],
				previewClass: "bg-warning",
				browseClass: "btn btn-primary",
				removeClass: "btn btn-default",
				uploadClass: "btn btn-default",
			});

			$("#input-10").fileinput({
				showUpload: false,
				layoutTemplates: {
					main1: "{preview}\n" +
					"<div class=\'input-group {class}\'>\n" +
					"   <div class=\'input-group-btn\'>\n" +
					"       {browse}\n" +
					"       {upload}\n" +
					"       {remove}\n" +
					"   </div>\n" +
					"   {caption}\n" +
					"</div>"
				}
			});

			$("#input-11").fileinput({
				maxFileCount: 10,
				allowedFileTypes: ["image", "video"]
			});

			$("#input-12").fileinput({
				showPreview: false,
				allowedFileExtensions: ["zip", "rar", "gz", "tgz"],
				elErrorContainer: "#errorBlock"
			});
		});

	</script>
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
