<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.google.appengine.api.blobstore.BlobKey" %> 
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>  
<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %> 
<%@ page import="com.google.appengine.api.images.*" %>
<%@ page import="com.resourcegrabber.entity.ProductDetailsEntity" %>  
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
						<a href="/home" class="standard-logo"><img src="images/rg.png" alt="Resource Grabber"></a>
						<a href="/home" class="retina-logo" ><img src="images/rg.png" alt="Resource Grabber"></a>
					</div><!-- #logo end -->

					<!-- Primary Navigation
					============================================= -->
					<nav id="primary-menu">

						<ul>
							<li><a href="/home"><div>Home</div></a>
							</li>
							<% HttpSession sess = request.getSession(false);
							   if(sess.getAttribute("sess") != null)
							   {
								   RegisterDetailsEntity rde = ofy().load().type(RegisterDetailsEntity.class).id((String)sess.getAttribute("sess")).now();
							%>
							<li><a href="/shop"><div>Shop</div></a>
							</li> 
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
							   else{
								   response.sendRedirect("/error");
							   } %>
							
															
						</ul>							


					</nav><!-- #primary-menu end -->

				</div>

			</div>

		</header><!-- #header end -->

		<!-- Page Title
		============================================= -->
		<section id="page-title">

			<div class="container clearfix">
				<h1>Manage your Items</h1>
		    </div>

		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

					<!-- Post Content
					============================================= -->
					<div class="postcontent nobottommargin col_last">

						<!-- Shop
						============================================= -->
						<div id="shop" class="shop product-3 grid-container clearfix">
						
						
				 
				 <%      java.util.List<ProductDetailsEntity> li =ofy().load().type(ProductDetailsEntity.class).list();
					   
				         HttpSession sess1 = request.getSession(false);
				         
				         String mail = (String)sess1.getAttribute("sess");
                                
				
				           for (int i = 0; i < li.size(); i++){ 
				        	   
				        	   if(li.get(i).email.equals(mail)){
				        	   System.out.println(li.get(i).email);
				        	   
				        	   BlobKey bk = new BlobKey(li.get(i).blobKeyPic);


								  ImagesService imagesService = ImagesServiceFactory.getImagesService();
								 
								  ServingUrlOptions servingOptions = ServingUrlOptions.Builder.withBlobKey(bk);
								 
								  
								  String servingUrl = imagesService.getServingUrl(servingOptions);
				        	   
								  
				   %>

							<div class="product <%=li.get(i).category %> clearfix">
								<div class="product-image">
									<a href="<%="/shopSingle.jsp?blob-key="+li.get(i).blobKeyPic %>"><img src="<%= servingUrl %>" style="height: 270px; width: 270px"alt="Checked Short Dress"></a>
									
									<!-- <a href="dynamic.html"><img src="images/shop/dress/1.jpg"></a> -->
								</div>
								
								<div class="product-desc center">
									<div class="product-title"><a href="<%="/shopSingle.jsp?blob-key="+li.get(i).blobKeyPic %>"><h3><%= li.get(i).itemName%></h3></a></div>
									<div class="product-price">&#8377;<%= li.get(i).price %></div>
									
								</div>
									<form  role="form" action="<%="/productDeleteController?blob-key="+li.get(i).blobKeyPic %>" method="post">
							 			<div style="text-align: center"><button class="button button-3d button-red nomargin" type="submit">Delete your Item</button></div>
									 </form>
								
							</div>
							
							<%
				        	   }
				               }
							
							 %>

							<!-- <div class="product sf-pant clearfix">
								<div class="product-image">
									<a href="#"><img src="images/shop/pants/1-1.jpg" alt="Slim Fit Chinos"></a>
									<a href="#"><img src="images/shop/pants/1.jpg" alt="Slim Fit Chinos"></a>
									<div class="product-overlay">
										<a href="#" class="add-to-cart"><i class="icon-shopping-cart"></i><span> Add to Cart</span></a>
										<a href="include/ajax/shop-item.html" class="item-quick-view" data-lightbox="ajax"><i class="icon-zoom-in2"></i><span> Quick View</span></a>
									</div>
								</div>
								<div class="product-desc center">
									<div class="product-title"><h3><a href="#">Slim Fit Chinos</a></h3></div>
									<div class="product-price">$39.99</div>
								
								</div>
							</div>
 -->
																								


						</div><!-- #shop end -->

					</div><!-- .postcontent end -->

					<!-- Sidebar
					============================================= -->
					<div class="sidebar nobottommargin">
						<div class="sidebar-widgets-wrap">

							<div class="widget widget-filter-links clearfix">

								<h4>Select Category</h4>
								<ul class="custom-filter" data-container="#shop" data-active-class="active-filter">
									<li class="widget-filter-reset active-filter"><a href="#" data-filter="*">All Items</a></li>
									<li><a href="#" data-filter=".Notes">Notes</a></li>
									<li><a href="#" data-filter=".Drafters">Drafters</a></li>
									<li><a href="#" data-filter=".Books">Books</a></li>
									<li><a href="#" data-filter=".Other">other materials</a></li>

								</ul>

							</div>

							<div class="widget widget-filter-links clearfix">



							</div>

						</div>
					</div><!-- .sidebar end -->

				</div>

			</div>

		</section><!-- #content end -->
		
		
		
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
