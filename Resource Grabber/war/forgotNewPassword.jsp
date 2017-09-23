<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<title>Forgot Password | Resource Grabber</title>

</head>
<% HttpSession sess = request.getSession(false);
   
    if(sess.getAttribute("email") == (null)){
	response.sendRedirect("/Error.jsp");
}
	
%>

<body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap nopadding">

				<div class="section nopadding nomargin" style="width: 100%; height: 100%; position: absolute; left: 0; top: 0; background: #444;"></div>

				<div class="section nobg full-screen nopadding nomargin">
					<div class="container vertical-middle divcenter clearfix">

						<div class="row center">
							<a href="/home"><h2 style="color:white">Resource Grabber</h2></a>
						</div>

						<div class="panel panel-default divcenter noradius noborder" style="max-width: 400px;">
							<div class="panel-body" style="padding: 40px;">
								<form id="login-form" name="login-form" class="nobottommargin" action="/forgotPassword2Controller" method="post">
									<h3>Enter your new Password:</h3>

									<div class="col_full">
										<label for="login-form-username">New Password:</label>
										<input type="password" id="forgot-password" name="password" value="" class="form-control not-dark" />
									</div>

									<div class="col_full">
										<label for="login-form-username">Re-type New Password:</label>
										<input type="password" id="forgot-repassword" name="retype new password" value="" class="form-control not-dark" />
									</div>
									<div class="col_full nobottommargin">
										<button class="button button-3d button-black nomargin" id="login-form-submit" name="login-form-submit" value="login">Submit</button>
									</div>
									<script type="text/javascript">
									var password = document.getElementById("forgot-password")
																  , confirm_password = document.getElementById("forgot-repassword");

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

						<div class="row center dark"><small>Copyrights &copy; All Rights Reserved by Canvas Inc.</small></div>

					</div>
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

</body>
</html>
