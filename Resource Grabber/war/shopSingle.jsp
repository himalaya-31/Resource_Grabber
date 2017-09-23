<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  %>
<%@ page import="com.resourcegrabber.entity.*" %>
<%@ page import="com.google.appengine.api.blobstore.BlobKey" %> 
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>  
<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %> 
<%@ page import="com.google.appengine.api.images.*" %>  
<%@ page import="com.resourcegrabber.entity.RegisterDetailsEntity" %>
<%@ page import="static com.resourcegrabber.service.OfyService.ofy" %>   
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

	<link rel="stylesheet" href="css/responsive.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<!-- Document Title
	============================================= -->
	<title>Shop | Resource Grabber</title>

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
					<div id="logo">
						<a href="/home" class="standard-logo"><img src="images/rg.png"  alt="Resource Grabber"></a>
						<a href="/home" class="retina-logo" ><img src="images/rg.png" alt="Resource Grabber"></a>
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
							<li><a href="/uploads"><div>Upload Items</div></a>
							</li> 
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
							   else{%>
							<li><a href="/loginregister"><div>Login/Register</div></a>
							</li>
							<%} %>
								<ul>

									<li><a href="contact.html"><div><i class="icon-envelope-alt"></i>Contact Pages</div></a>
										<ul>
											<li><a href="contact.html">Contact 1</a></li>
											<li><a href="contact-2.html">Contact 2</a></li>

										</ul>
									</li>


									<li><a href="profile.html"><div><i class="icon-user"></i>User Profile</div></a></li>
								</ul>
							</li>


							 


					</nav><!-- #primary-menu end -->

				</div>

			</div>

		</header><!-- #header end -->
		
		<!-- Page Title
		============================================= -->
		<section id="page-title">

			<div class="container clearfix">
				<h1>Product</h1>
		    </div>

		</section>
		<!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">
		
		<% String blobKey = request.getParameter("blob-key");
		  
		  System.out.println(blobKey);
			
		
		  
		  ProductDetailsEntity pd=ofy().load().type(ProductDetailsEntity.class).id(blobKey).now();
		  
		  BlobKey bk = new BlobKey(pd.blobKeyPic);


		  ImagesService imagesService = ImagesServiceFactory.getImagesService();
		 
		  ServingUrlOptions servingOptions = ServingUrlOptions.Builder.withBlobKey(bk);
		 
		  
		  String servingUrl = imagesService.getServingUrl(servingOptions);
		  
		  System.out.println(servingUrl);
		  
		  System.out.println(pd.email);
		  System.out.println(pd.itemName);
		  
		%>

			<div class="content-wrap">

				<div class="container clearfix">

					<div class="single-product">

						<div class="product">

							<div class="col_two_fifth">

								<!-- Product Single - Gallery
								============================================= -->
		                       <div class="product-image">
									<div class="fslider" data-pagi="false" data-arrows="false" data-thumbs="true">
										<div class="flexslider">
											<div class="slider-wrap" data-lightbox="gallery">
												<div class="slide" data-thumb="images/shop/thumbs/dress/1.jpg"><img style="width: 353px; height: 474.22px" src="<%=servingUrl%>" alt="<%=pd.itemName %>"></div>
										</div>
										</div>
										
									</div>
									
								</div><!-- Product Single - Gallery End -->

							</div>
							
							

							<div class="col_two_fifth product-desc">

								<!-- Product Single - Price
								============================================= -->
								<div><h1><%=pd.itemName%></h1></div>
								<div class="product-price">Price: &#8377;<%=pd.price %></div><!-- Product Single - Price End -->
		                       <!-- Product Single - Short Description
								============================================= -->
								<br>
								<br>
								<br>
								<h3>Description:</h3>
								<p><%=pd.description %></p>
								<h3>Seller Details:</h3>
								<div><strong>Name:</strong> <%=pd.name %></div>
								<div><strong>Email-Id:</strong> <%=pd.email %></div>
								<div><strong>Phone Number:</strong> <%=pd.phone%></div>
								<div><strong>Address:</strong> <%=pd.address%></div>
								<br>
								<br>
								<br>								
								
								
					</div>
						</div>
						</div>
						</div>
						</div>
						
						
						
						

						
				</section><!-- #content end -->				
								
								
									<!-- Footer
		============================================= -->
		<!-- #footer end -->

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

	<script>
		jQuery(document).ready( function($){
			$('#shop').isotope({
				transitionDuration: '0.65s',
				getSortData: {
					name: '.product-title',
					price_lh: function( itemElem ) {
						if( $(itemElem).find('.product-price').find('ins').length > 0 ) {
							var price = $(itemElem).find('.product-price ins').text();
						} else {
							var price = $(itemElem).find('.product-price').text();
						}

						priceNum = price.split("$");

						return parseFloat( priceNum[1] );
					},
					price_hl: function( itemElem ) {
						if( $(itemElem).find('.product-price').find('ins').length > 0 ) {
							var price = $(itemElem).find('.product-price ins').text();
						} else {
							var price = $(itemElem).find('.product-price').text();
						}

						priceNum = price.split("$");

						return parseFloat( priceNum[1] );
					}
				},
				sortAscending: {
					name: true,
					price_lh: true,
					price_hl: false
				}
			});

			$('.custom-filter:not(.no-count)').children('li:not(.widget-filter-reset)').each( function(){
				var element = $(this),
					elementFilter = element.children('a').attr('data-filter'),
					elementFilterContainer = element.parents('.custom-filter').attr('data-container');

				elementFilterCount = Number( jQuery(elementFilterContainer).find( elementFilter ).length );

				element.append('<span>'+ elementFilterCount +'</span>');

			});

			$('.shop-sorting li').click( function() {
				$('.shop-sorting').find('li').removeClass( 'active-filter' );
				$(this).addClass( 'active-filter' );
				var sortByValue = $(this).find('a').attr('data-sort-by');
				$('#shop').isotope({ sortBy: sortByValue });
				return false;
			});
		});
	</script>

</body>
</html>
								
								
		
		
		
		
		
