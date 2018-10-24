<%@page import="model.bo.Utilisateur"%>
<%@page import="java.util.List"%>
<%@page import="model.dao.LoginDao"%>
<%@page import="java.util.Date"%>
<%@page import="model.bo.Utilisateur"%>
<%@page import="model.bo.Comment" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.4
Version: 4.0.1
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>AnimalsDar | Pages - User Account</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css" />
<link href="assets/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/global/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css" />
<link
	href="assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link
	href="assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css"
	rel="stylesheet" type="text/css" />
<link href="assets/admin/pages/css/profile.css" rel="stylesheet"
	type="text/css" />
<link href="assets/admin/pages/css/tasks.css" rel="stylesheet"
	type="text/css" />
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="assets/global/css/components.css" id="style_components"
	rel="stylesheet" type="text/css" />
<link href="assets/global/css/plugins.css" rel="stylesheet"
	type="text/css" />
<link href="assets/admin/layout/css/layout.css" rel="stylesheet"
	type="text/css" />
<link id="style_color"
	href="assets/admin/layout/css/themes/darkblue.css" rel="stylesheet"
	type="text/css" />
<link href="assets/admin/layout/css/custom.css" rel="stylesheet"
	type="text/css" />
<!-- END THEE STYLES -->
<link rel="shortcut icon" href="favicon.ico" />
</head>

	<%!Utilisateur user=null; %>
	<% user=(Utilisateur)request.getAttribute("user");%>
	
	
	<p><%=user%></p>
	<!-- END HEADER -->
	<div class="clearfix"></div>
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		
		<!-- END SIDEBAR -->
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
			
				<h3 class="page-title">User Account</h3>

				<!-- END PAGE HEADER-->
				<!-- BEGIN PAGE CONTENT-->
				<div class="row margin-top-20">
					<div class="col-md-12">
						<!-- BEGIN PROFILE SIDEBAR -->
						<div class="profile-sidebar">
							<!-- PORTLET MAIN -->
							<div class="portlet light profile-sidebar-portlet">
								<!-- SIDEBAR USERPIC -->
								<div class="profile-userpic">
								<!-- 
									<img src="data:image/jpg;base64,<%=user.getAvatar().getBase64Image()%>"
										class="img-responsive" alt="">
									 -->
								</div>
								<!-- END SIDEBAR USERPIC -->
								<!-- SIDEBAR USER TITLE -->
								<div class="profile-usertitle">
									<div class="profile-usertitle-name">
										<%=user.getName()%>
									</div>
									<div class="profile-usertitle-job"><%=user.getOccupation() %></div>
								</div>
							
								<div class="profile-usermenu">
									<ul class="nav">

										<li class="active"><a href="extra_profile_account.html">
												<i class="icon-settings"></i> Account Settings
										</a></li>

									</ul>
								</div>
								<!-- END MENU -->
							</div>
							<!-- END PORTLET MAIN -->
							<!-- PORTLET MAIN -->
							<div class="portlet light">
								<!-- STAT -->


								<!-- END STAT -->
								<div>
									<h4 class="profile-desc-title">
										About
										<%=user.getName()%></h4>
									<span class="profile-desc-text"> <%=user.getAbout() %> </span>
									<div class="margin-top-20 profile-desc-link">
										<i class="fa fa-globe"></i> <a
											href="http://www.keenthemes.com"><%=user.getEmail()%></a>
									</div>
									<div class="margin-top-20 profile-desc-link">
										<i class="fa fa-twitter"></i> <a
											href="http://www.twitter.com/keenthemes/"><%=user.getNumberphone()%></a>
									</div>

								</div>
							</div>
							<!-- END PORTLET MAIN -->
						</div>
						<!-- END BEGIN PROFILE SIDEBAR -->
						<!-- BEGIN PROFILE CONTENT -->
						<div class="profile-content">
							<div class="row">
								<div class="col-md-12">
									<div class="portlet light">
										<div class="portlet-title tabbable-line">
											<div class="caption caption-md">
												<i class="icon-globe theme-font hide"></i> <span
													class="caption-subject font-blue-madison bold uppercase">Profile
													Account</span>
											</div>
											<ul class="nav nav-tabs">
												<li class="active"><a href="#tab_1_1" data-toggle="tab">Personal
														Info</a></li>

												<li><a href="#tab_1_2" data-toggle="tab">Change
														Password</a></li>
												<li><a href="#tab_1_3" data-toggle="tab">Change
														Password</a></li>

											</ul>
										</div>
										<div class="portlet-body">
											<div class="tab-content">
												<!-- PERSONAL INFO TAB -->
												<div class="tab-pane active" id="tab_1_1">
													<form role="form" action="#">
														<div class="form-group">
															<label class="control-label"> First Name</label> <input
																type="text" placeholder="John" class="form-control" />
														</div>
														<div class="form-group">
															<label class="control-label">Last Name</label> <input
																type="text" placeholder="Doe" class="form-control" />
														</div>
														<div class="form-group">
															<label class="control-label">Mobile Number</label> <input
																type="text" placeholder="+1 646 580 DEMO (6284)"
																class="form-control" />
														</div>
														<div class="form-group">
															<label class="control-label">Interests</label> <input
																type="text" placeholder="Design, Web etc."
																class="form-control" />
														</div>
														<div class="form-group">
															<label class="control-label">Occupation</label> <input
																type="text" placeholder="Web Developer"
																class="form-control" />
														</div>
														<div class="form-group">
															<label class="control-label">About</label>
															<textarea class="form-control" rows="3"
																placeholder="We are KeenThemes!!!"></textarea>
														</div>

														<div class="margiv-top-10">
															<a href="javascript:;" class="btn green-haze"> Save
																Changes </a> <a href="javascript:;" class="btn default">
																Cancel </a>
														</div>
													</form>
												</div>
												<!-- END PERSONAL INFO TAB -->
												<!-- CHANGE AVATAR TAB -->

												<!-- END CHANGE AVATAR TAB -->
												<!-- CHANGE PASSWORD TAB -->
												<div class="tab-pane" id="tab_1_2">
													<form action="#">
														<div class="form-group">
															<label class="control-label">Current Password</label> <input
																type="password" class="form-control" />
														</div>
														<div class="form-group">
															<label class="control-label">New Password</label> <input
																type="password" class="form-control" />
														</div>
														<div class="form-group">
															<label class="control-label">Re-type New Password</label>
															<input type="password" class="form-control" />
														</div>
														<div class="margin-top-10">
															<a href="javascript:;" class="btn green-haze"> Change
																Password </a> <a href="javascript:;" class="btn default">
																Cancel </a>
														</div>
													</form>
													
													
												</div>
												<div class="tab-pane" id="tab_1_3">
													<form action="upload" method="POST" enctype="multipart/form-data" >
														<input type="hidden" id="actionId" name="actionId" value="saveAvatar">
													    <input type="file" name="file" />
													    <input type="submit" />
													</form>
												</div>
												<!-- END CHANGE PASSWORD TAB -->
												<!-- PRIVACY SETTINGS TAB -->

												<!-- END PRIVACY SETTINGS TAB -->
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- END PROFILE CONTENT -->
					</div>
				</div>
				<!-- END PAGE CONTENT-->
			</div>
		</div>
		<!-- END CONTENT -->
		<!-- BEGIN QUICK SIDEBAR -->
		
		
		<!-- END QUICK SIDEBAR -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	
	<!-- END FOOTER -->
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<!--[if lt IE 9]>
<script src="assets/global/plugins/respond.min.js"></script>
<script src="assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
	<script src="assets/global/plugins/jquery.min.js"
		type="text/javascript"></script>
	<script src="assets/global/plugins/jquery-migrate.min.js"
		type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script src="assets/global/plugins/jquery-ui/jquery-ui.min.js"
		type="text/javascript"></script>
	<script src="assets/global/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script
		src="assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
		type="text/javascript"></script>
	<script
		src="assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<script src="assets/global/plugins/jquery.blockui.min.js"
		type="text/javascript"></script>
	<script src="assets/global/plugins/jquery.cokie.min.js"
		type="text/javascript"></script>
	<script src="assets/global/plugins/uniform/jquery.uniform.min.js"
		type="text/javascript"></script>
	<script
		src="assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
		type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script
		src="assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js"
		type="text/javascript"></script>
	<script src="assets/global/plugins/jquery.sparkline.min.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="assets/global/scripts/metronic.js" type="text/javascript"></script>
	<script src="assets/admin/layout/scripts/layout.js"
		type="text/javascript"></script>
	<script src="assets/admin/layout/scripts/quick-sidebar.js"
		type="text/javascript"></script>
	<script src="assets/admin/layout/scripts/demo.js"
		type="text/javascript"></script>
	<script src="assets/admin/pages/scripts/profile.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<script>
		jQuery(document).ready(function() {
			// initiate layout and plugins
			Metronic.init(); // init metronic core components
			Layout.init(); // init current layout
			QuickSidebar.init(); // init quick sidebar
			Demo.init(); // init demo features
			Profile.init(); // init page demo
		});
	</script>
	<!-- END JAVASCRIPTS -->
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');
		ga('create', 'UA-37564768-1', 'keenthemes.com');
		ga('send', 'pageview');
	</script>
</body>
<!-- END BODY -->
</html>