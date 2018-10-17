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
<title>Metronic | Pages - User Account</title>
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
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body
	class="page-header-fixed page-quick-sidebar-over-content page-sidebar-closed page-sidebar-closed-hide-logo page-container-bg-solid">
	<!-- BEGIN HEADER -->
	<div class="page-header navbar navbar-fixed-top">
		<!-- BEGIN HEADER INNER -->
		<div class="page-header-inner">
			<!-- BEGIN LOGO -->
			<div class="page-logo">
				<a href="index.html"> <img
					src="assets/admin/layout/img/logo.png" alt="logo"
					class="logo-default" />
				</a>
				<div class="menu-toggler sidebar-toggler">
					<!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
				</div>
			</div>
			<!-- END LOGO -->
			<!-- BEGIN RESPONSIVE MENU TOGGLER -->
			<a href="javascript:;" class="menu-toggler responsive-toggler"
				data-toggle="collapse" data-target=".navbar-collapse"> </a>
			<!-- END RESPONSIVE MENU TOGGLER -->
			<!-- BEGIN TOP NAVIGATION MENU -->
			<div class="top-menu">
				<ul class="nav navbar-nav pull-right">
					<!-- BEGIN NOTIFICATION DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-extended dropdown-notification"
						id="header_notification_bar"><a href="javascript:;"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-close-others="true"> <i
							class="icon-bell"></i> <span class="badge badge-default">
								7 </span>
					</a></li>
					<!-- END NOTIFICATION DROPDOWN -->
					<!-- BEGIN INBOX DROPDOWN -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
					<li class="dropdown dropdown-extended dropdown-inbox"
						id="header_inbox_bar"><a href="javascript:;"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-close-others="true"> <i
							class="icon-envelope-open"></i> <span class="badge badge-default">
								4 </span>
					</a>
						<ul class="dropdown-menu">
							<li class="external">
								<h3>
									You have <span class="bold">7 New</span> Messages
								</h3> <a href="page_inbox.html">view all</a>
							</li>
							<li>
								<ul class="dropdown-menu-list scroller" style="height: 275px;"
									data-handle-color="#637283">

									<li><a href="inbox.html?a=view"> <span class="photo">
												<img src="assets/admin/layout3/img/avatar3.jpg"
												class="img-circle" alt="">
										</span> <span class="subject"> <span class="from">
													Richard Doe </span> <span class="time">16 mins </span>
										</span> <span class="message"> Vivamus sed congue nibh auctor
												nibh congue nibh. auctor nibh auctor nibh... </span>
									</a></li>

								</ul>
							</li>
						</ul></li>

					<li class="dropdown dropdown-user"><a href="javascript:;"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-close-others="true"> <img alt=""
							class="img-circle"
							src="assets/admin/layout/img/avatar3_small.jpg" /> <span
							class="username username-hide-on-mobile"> Nick </span> <i
							class="fa fa-angle-down"></i>
					</a>
						<ul class="dropdown-menu dropdown-menu-default">
							<li><a href="extra_profile.html"> <i class="icon-user"></i>
									My Profile
							</a></li>

							<li><a href="login.jsp"> <i class="icon-key"></i> Log Out
									
							</a></li>
						</ul></li>
					<!-- END USER LOGIN DROPDOWN -->
					<!-- BEGIN QUICK SIDEBAR TOGGLER -->
					<!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->

					<!-- END QUICK SIDEBAR TOGGLER -->
				</ul>
			</div>
			<!-- END TOP NAVIGATION MENU -->
		</div>
		<!-- END HEADER INNER -->
	</div>
	<!-- END HEADER -->
	<div class="clearfix"></div>
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar-wrapper">
			<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
			<!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
			<div class="page-sidebar navbar-collapse collapse">

				<ul class="page-sidebar-menu" data-keep-expanded="false"
					data-auto-scroll="true" data-slide-speed="200">
					<!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->

					<!-- DOC: To remove the search box from the sidebar you just need to completely remove the below "sidebar-search-wrapper" LI element -->
					<li class="sidebar-search-wrapper">

						<form class="sidebar-search " action="extra_search.html"
							method="POST">
							<a href="javascript:;" class="remove"> <i class="icon-close"></i>
							</a>
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Search...">
								<span class="input-group-btn"> <a href="javascript:;"
									class="btn submit"><i class="icon-magnifier"></i></a>
								</span>
							</div>
						</form> <!-- END RESPONSIVE QUICK SEARCH FORM -->
					</li>
					<li class="start "><a href="acceuil.jsp"> <i
							class="icon-home" id="li_actualite"></i> <span class="title">Actualité</span>
							<span></span>
					</a></li>
					<li><a href="javascript:;"> <i class="icon-basket"
							id="li_events"></i> <span class="title">Events</span> <span
							class="arrow "></span>
					</a>
						<ul class="sub-menu">
							<li><a href="ecommerce_product.html"> <i
									class="icon-home"></i> Create Events
							</a></li>
							<li><a href="ecommerce_index.html"> <i class="icon-home"></i>
									All Events
							</a></li>
							<li><a href="ecommerce_orders.html"> <i
									class="icon-basket"></i> My Events
							</a></li>

						</ul></li>
					<li><a href="javascript:;"> <i class="icon-rocket"
							id="li_publications"></i> <span class="title">Mes
								Publications</span> <span></span>
					</a></li>
					<li><a href="javascript:;"> <i class="icon-diamond"
							id="li_accessoires"></i> <span class="title">Accessoires</span> <span></span>
					</a></li>
					<li><a href="tellus.jsp"> <i class="icon-puzzle"
							id="li_comment"></i> <span class="title">Tell Us about
								what do you think</span> <span></span>
					</a></li>
					<!-- BEGIN ANGULARJS LINK -->
					<li class="tooltips" data-container="body" id="li_aboutUs"><a
						href="aboutUs.jsp" target="_blank"> <i
							class="icon-paper-plane"></i> <span class="title"> About
								US</span>
					</a></li>

				</ul>
				<!-- END SIDEBAR MENU -->
			</div>
		</div>

		<!-- END SIDEBAR -->
		<!-- BEGIN CONTENT -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
				<div class="modal fade" id="portlet-config" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true"></button>
								<h4 class="modal-title">Modal title</h4>
							</div>
							<div class="modal-body">Widget settings form goes here</div>
							<div class="modal-footer">
								<button type="button" class="btn blue">Save changes</button>
								<button type="button" class="btn default" data-dismiss="modal">Close</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
				<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
				<!-- BEGIN STYLE CUSTOMIZER -->
				<div class="theme-panel hidden-xs hidden-sm hide">
					<div class="toggler"></div>
					<div class="toggler-close"></div>
					<div class="theme-options">
						<div class="theme-option theme-colors clearfix">
							<span> THEME COLOR </span>
							<ul>
								<li class="color-default current tooltips" data-style="default"
									data-container="body" data-original-title="Default"></li>
								<li class="color-darkblue tooltips" data-style="darkblue"
									data-container="body" data-original-title="Dark Blue"></li>
								<li class="color-blue tooltips" data-style="blue"
									data-container="body" data-original-title="Blue"></li>
								<li class="color-grey tooltips" data-style="grey"
									data-container="body" data-original-title="Grey"></li>
								<li class="color-light tooltips" data-style="light"
									data-container="body" data-original-title="Light"></li>
								<li class="color-light2 tooltips" data-style="light2"
									data-container="body" data-html="true"
									data-original-title="Light 2"></li>
							</ul>
						</div>
						<div class="theme-option">
							<span> Theme Style </span> <select
								class="layout-style-option form-control input-sm">
								<option value="square" selected="selected">Square
									corners</option>
								<option value="rounded">Rounded corners</option>
							</select>
						</div>
						<div class="theme-option">
							<span> Layout </span> <select
								class="layout-option form-control input-sm">
								<option value="fluid" selected="selected">Fluid</option>
								<option value="boxed">Boxed</option>
							</select>
						</div>
						<div class="theme-option">
							<span> Header </span> <select
								class="page-header-option form-control input-sm">
								<option value="fixed" selected="selected">Fixed</option>
								<option value="default">Default</option>
							</select>
						</div>
						<div class="theme-option">
							<span> Top Menu Dropdown</span> <select
								class="page-header-top-dropdown-style-option form-control input-sm">
								<option value="light" selected="selected">Light</option>
								<option value="dark">Dark</option>
							</select>
						</div>
						<div class="theme-option">
							<span> Sidebar Mode</span> <select
								class="sidebar-option form-control input-sm">
								<option value="fixed">Fixed</option>
								<option value="default" selected="selected">Default</option>
							</select>
						</div>
						<div class="theme-option">
							<span> Sidebar Menu </span> <select
								class="sidebar-menu-option form-control input-sm">
								<option value="accordion" selected="selected">Accordion</option>
								<option value="hover">Hover</option>
							</select>
						</div>
						<div class="theme-option">
							<span> Sidebar Style </span> <select
								class="sidebar-style-option form-control input-sm">
								<option value="default" selected="selected">Default</option>
								<option value="light">Light</option>
							</select>
						</div>
						<div class="theme-option">
							<span> Sidebar Position </span> <select
								class="sidebar-pos-option form-control input-sm">
								<option value="left" selected="selected">Left</option>
								<option value="right">Right</option>
							</select>
						</div>
						<div class="theme-option">
							<span> Footer </span> <select
								class="page-footer-option form-control input-sm">
								<option value="fixed">Fixed</option>
								<option value="default" selected="selected">Default</option>
							</select>
						</div>
					</div>
				</div>
				<!-- END STYLE CUSTOMIZER -->
				<!-- BEGIN PAGE HEADER-->
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
									<img src="assets/admin/pages/media/profile/profile_user.jpg"
										class="img-responsive" alt="">
								</div>
								<!-- END SIDEBAR USERPIC -->
								<!-- SIDEBAR USER TITLE -->
								<div class="profile-usertitle">
									<div class="profile-usertitle-name">
										<%!String name = null;%>
										<%
											name = (String) request.getAttribute("name");
										%>
										<%=name%>
									</div>
									<div class="profile-usertitle-job">Developer</div>
								</div>
								<!-- END SIDEBAR USER TITLE -->
								<!-- SIDEBAR BUTTONS -->
								<div class="profile-userbuttons">
									<button type="button" class="btn btn-circle green-haze btn-sm">Follow</button>
									<button type="button" class="btn btn-circle btn-danger btn-sm">Message</button>
								</div>
								<!-- END SIDEBAR BUTTONS -->
								<!-- SIDEBAR MENU -->
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
										<%=name%></h4>
									<span class="profile-desc-text"> Lorem ipsum dolor sit
										amet diam nonummy nibh dolore. </span>
									<div class="margin-top-20 profile-desc-link">
										<i class="fa fa-globe"></i> <a
											href="http://www.keenthemes.com">www.soukaina@gmail.com</a>
									</div>
									<div class="margin-top-20 profile-desc-link">
										<i class="fa fa-twitter"></i> <a
											href="http://www.twitter.com/keenthemes/">@email.com</a>
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
												<div class="tab-pane" id="tab_1_3">
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
		<a href="javascript:;" class="page-quick-sidebar-toggler"><i
			class="icon-close"></i></a>
		<div class="page-quick-sidebar-wrapper">
			<div class="page-quick-sidebar">
				<div class="nav-justified">
					<ul class="nav nav-tabs nav-justified">
						<li class="active"><a href="#quick_sidebar_tab_1"
							data-toggle="tab"> Users <span class="badge badge-danger">2</span>
						</a></li>
						<li><a href="#quick_sidebar_tab_2" data-toggle="tab">
								Alerts <span class="badge badge-success">7</span>
						</a></li>
						<li class="dropdown"><a href="javascript:;"
							class="dropdown-toggle" data-toggle="dropdown"> More<i
								class="fa fa-angle-down"></i>
						</a>
							<ul class="dropdown-menu pull-right" role="menu">
								<li><a href="#quick_sidebar_tab_3" data-toggle="tab"> <i
										class="icon-bell"></i> Alerts
								</a></li>
								<li><a href="#quick_sidebar_tab_3" data-toggle="tab"> <i
										class="icon-info"></i> Notifications
								</a></li>
								<li><a href="#quick_sidebar_tab_3" data-toggle="tab"> <i
										class="icon-speech"></i> Activities
								</a></li>
								<li class="divider"></li>
								<li><a href="#quick_sidebar_tab_3" data-toggle="tab"> <i
										class="icon-settings"></i> Settings
								</a></li>
							</ul></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active page-quick-sidebar-chat"
							id="quick_sidebar_tab_1">
							<div class="page-quick-sidebar-chat-users" data-rail-color="#ddd"
								data-wrapper-class="page-quick-sidebar-list">
								<h3 class="list-heading">Staff</h3>
								<ul class="media-list list-items">
									<li class="media">
										<div class="media-status">
											<span class="badge badge-success">8</span>
										</div> <img class="media-object"
										src="assets/admin/layout/img/avatar3.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Bob Nilson</h4>
											<div class="media-heading-sub">Project Manager</div>
										</div>
									</li>
									<li class="media"><img class="media-object"
										src="assets/admin/layout/img/avatar1.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Nick Larson</h4>
											<div class="media-heading-sub">Art Director</div>
										</div></li>
									<li class="media">
										<div class="media-status">
											<span class="badge badge-danger">3</span>
										</div> <img class="media-object"
										src="assets/admin/layout/img/avatar4.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Deon Hubert</h4>
											<div class="media-heading-sub">CTO</div>
										</div>
									</li>
									<li class="media"><img class="media-object"
										src="assets/admin/layout/img/avatar2.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Ella Wong</h4>
											<div class="media-heading-sub">CEO</div>
										</div></li>
								</ul>
								<h3 class="list-heading">Customers</h3>
								<ul class="media-list list-items">
									<li class="media">
										<div class="media-status">
											<span class="badge badge-warning">2</span>
										</div> <img class="media-object"
										src="assets/admin/layout/img/avatar6.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Lara Kunis</h4>
											<div class="media-heading-sub">CEO, Loop Inc</div>
											<div class="media-heading-small">Last seen 03:10 AM</div>
										</div>
									</li>
									<li class="media">
										<div class="media-status">
											<span class="label label-sm label-success">new</span>
										</div> <img class="media-object"
										src="assets/admin/layout/img/avatar7.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Ernie Kyllonen</h4>
											<div class="media-heading-sub">
												Project Manager,<br> SmartBizz PTL
											</div>
										</div>
									</li>
									<li class="media"><img class="media-object"
										src="assets/admin/layout/img/avatar8.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Lisa Stone</h4>
											<div class="media-heading-sub">CTO, Keort Inc</div>
											<div class="media-heading-small">Last seen 13:10 PM</div>
										</div></li>
									<li class="media">
										<div class="media-status">
											<span class="badge badge-success">7</span>
										</div> <img class="media-object"
										src="assets/admin/layout/img/avatar9.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Deon Portalatin</h4>
											<div class="media-heading-sub">CFO, H&D LTD</div>
										</div>
									</li>
									<li class="media"><img class="media-object"
										src="assets/admin/layout/img/avatar10.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Irina Savikova</h4>
											<div class="media-heading-sub">CEO, Tizda Motors Inc</div>
										</div></li>
									<li class="media">
										<div class="media-status">
											<span class="badge badge-danger">4</span>
										</div> <img class="media-object"
										src="assets/admin/layout/img/avatar11.jpg" alt="...">
										<div class="media-body">
											<h4 class="media-heading">Maria Gomez</h4>
											<div class="media-heading-sub">Manager, Infomatic Inc</div>
											<div class="media-heading-small">Last seen 03:10 AM</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="page-quick-sidebar-item">
								<div class="page-quick-sidebar-chat-user">
									<div class="page-quick-sidebar-nav">
										<a href="javascript:;" class="page-quick-sidebar-back-to-list"><i
											class="icon-arrow-left"></i>Back</a>
									</div>
									<div class="page-quick-sidebar-chat-user-messages">
										<div class="post out">
											<img class="avatar" alt=""
												src="assets/admin/layout/img/avatar3.jpg" />
											<div class="message">
												<span class="arrow"></span> <a href="javascript:;"
													class="name">Bob Nilson</a> <span class="datetime">20:15</span>
												<span class="body"> When could you send me the report
													? </span>
											</div>
										</div>
										<div class="post in">
											<img class="avatar" alt=""
												src="assets/admin/layout/img/avatar2.jpg" />
											<div class="message">
												<span class="arrow"></span> <a href="javascript:;"
													class="name">Ella Wong</a> <span class="datetime">20:15</span>
												<span class="body"> Its almost done. I will be
													sending it shortly </span>
											</div>
										</div>
										<div class="post out">
											<img class="avatar" alt=""
												src="assets/admin/layout/img/avatar3.jpg" />
											<div class="message">
												<span class="arrow"></span> <a href="javascript:;"
													class="name">Bob Nilson</a> <span class="datetime">20:15</span>
												<span class="body"> Alright. Thanks! :) </span>
											</div>
										</div>
										<div class="post in">
											<img class="avatar" alt=""
												src="assets/admin/layout/img/avatar2.jpg" />
											<div class="message">
												<span class="arrow"></span> <a href="javascript:;"
													class="name">Ella Wong</a> <span class="datetime">20:16</span>
												<span class="body"> You are most welcome. Sorry for
													the delay. </span>
											</div>
										</div>
										<div class="post out">
											<img class="avatar" alt=""
												src="assets/admin/layout/img/avatar3.jpg" />
											<div class="message">
												<span class="arrow"></span> <a href="javascript:;"
													class="name">Bob Nilson</a> <span class="datetime">20:17</span>
												<span class="body"> No probs. Just take your time :)
												</span>
											</div>
										</div>
										<div class="post in">
											<img class="avatar" alt=""
												src="assets/admin/layout/img/avatar2.jpg" />
											<div class="message">
												<span class="arrow"></span> <a href="javascript:;"
													class="name">Ella Wong</a> <span class="datetime">20:40</span>
												<span class="body"> Alright. I just emailed it to
													you. </span>
											</div>
										</div>
										<div class="post out">
											<img class="avatar" alt=""
												src="assets/admin/layout/img/avatar3.jpg" />
											<div class="message">
												<span class="arrow"></span> <a href="javascript:;"
													class="name">Bob Nilson</a> <span class="datetime">20:17</span>
												<span class="body"> Great! Thanks. Will check it
													right away. </span>
											</div>
										</div>
										<div class="post in">
											<img class="avatar" alt=""
												src="assets/admin/layout/img/avatar2.jpg" />
											<div class="message">
												<span class="arrow"></span> <a href="javascript:;"
													class="name">Ella Wong</a> <span class="datetime">20:40</span>
												<span class="body"> Please let me know if you have
													any comment. </span>
											</div>
										</div>
										<div class="post out">
											<img class="avatar" alt=""
												src="assets/admin/layout/img/avatar3.jpg" />
											<div class="message">
												<span class="arrow"></span> <a href="javascript:;"
													class="name">Bob Nilson</a> <span class="datetime">20:17</span>
												<span class="body"> Sure. I will check and buzz you
													if anything needs to be corrected. </span>
											</div>
										</div>
									</div>
									<div class="page-quick-sidebar-chat-user-form">
										<div class="input-group">
											<input type="text" class="form-control"
												placeholder="Type a message here...">
											<div class="input-group-btn">
												<button type="button" class="btn blue">
													<i class="icon-paper-clip"></i>
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane page-quick-sidebar-alerts"
							id="quick_sidebar_tab_2">
							<div class="page-quick-sidebar-alerts-list">
								<h3 class="list-heading">General</h3>
								<ul class="feeds list-items">
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-check"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														You have 4 pending tasks. <span
															class="label label-sm label-warning "> Take action
															<i class="fa fa-share"></i>
														</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">Just now</div>
										</div>
									</li>
									<li><a href="javascript:;">
											<div class="col1">
												<div class="cont">
													<div class="cont-col1">
														<div class="label label-sm label-success">
															<i class="fa fa-bar-chart-o"></i>
														</div>
													</div>
													<div class="cont-col2">
														<div class="desc">Finance Report for year 2013 has
															been released.</div>
													</div>
												</div>
											</div>
											<div class="col2">
												<div class="date">20 mins</div>
											</div>
									</a></li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-danger">
														<i class="fa fa-user"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">You have 5 pending membership that
														requires a quick review.</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">24 mins</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-shopping-cart"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														New order received with <span
															class="label label-sm label-success"> Reference
															Number: DR23923 </span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">30 mins</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-success">
														<i class="fa fa-user"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">You have 5 pending membership that
														requires a quick review.</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">24 mins</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-bell-o"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														Web server hardware needs to be upgraded. <span
															class="label label-sm label-warning"> Overdue </span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">2 hours</div>
										</div>
									</li>
									<li><a href="javascript:;">
											<div class="col1">
												<div class="cont">
													<div class="cont-col1">
														<div class="label label-sm label-default">
															<i class="fa fa-briefcase"></i>
														</div>
													</div>
													<div class="cont-col2">
														<div class="desc">IPO Report for year 2013 has been
															released.</div>
													</div>
												</div>
											</div>
											<div class="col2">
												<div class="date">20 mins</div>
											</div>
									</a></li>
								</ul>
								<h3 class="list-heading">System</h3>
								<ul class="feeds list-items">
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-check"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														You have 4 pending tasks. <span
															class="label label-sm label-warning "> Take action
															<i class="fa fa-share"></i>
														</span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">Just now</div>
										</div>
									</li>
									<li><a href="javascript:;">
											<div class="col1">
												<div class="cont">
													<div class="cont-col1">
														<div class="label label-sm label-danger">
															<i class="fa fa-bar-chart-o"></i>
														</div>
													</div>
													<div class="cont-col2">
														<div class="desc">Finance Report for year 2013 has
															been released.</div>
													</div>
												</div>
											</div>
											<div class="col2">
												<div class="date">20 mins</div>
											</div>
									</a></li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-default">
														<i class="fa fa-user"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">You have 5 pending membership that
														requires a quick review.</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">24 mins</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-info">
														<i class="fa fa-shopping-cart"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														New order received with <span
															class="label label-sm label-success"> Reference
															Number: DR23923 </span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">30 mins</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-success">
														<i class="fa fa-user"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">You have 5 pending membership that
														requires a quick review.</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">24 mins</div>
										</div>
									</li>
									<li>
										<div class="col1">
											<div class="cont">
												<div class="cont-col1">
													<div class="label label-sm label-warning">
														<i class="fa fa-bell-o"></i>
													</div>
												</div>
												<div class="cont-col2">
													<div class="desc">
														Web server hardware needs to be upgraded. <span
															class="label label-sm label-default "> Overdue </span>
													</div>
												</div>
											</div>
										</div>
										<div class="col2">
											<div class="date">2 hours</div>
										</div>
									</li>
									<li><a href="javascript:;">
											<div class="col1">
												<div class="cont">
													<div class="cont-col1">
														<div class="label label-sm label-info">
															<i class="fa fa-briefcase"></i>
														</div>
													</div>
													<div class="cont-col2">
														<div class="desc">IPO Report for year 2013 has been
															released.</div>
													</div>
												</div>
											</div>
											<div class="col2">
												<div class="date">20 mins</div>
											</div>
									</a></li>
								</ul>
							</div>
						</div>
						<div class="tab-pane page-quick-sidebar-settings"
							id="quick_sidebar_tab_3">
							<div class="page-quick-sidebar-settings-list">
								<h3 class="list-heading">General Settings</h3>
								<ul class="list-items borderless">
									<li>Enable Notifications <input type="checkbox"
										class="make-switch" checked data-size="small"
										data-on-color="success" data-on-text="ON"
										data-off-color="default" data-off-text="OFF">
									</li>
									<li>Allow Tracking <input type="checkbox"
										class="make-switch" data-size="small" data-on-color="info"
										data-on-text="ON" data-off-color="default" data-off-text="OFF">
									</li>
									<li>Log Errors <input type="checkbox" class="make-switch"
										checked data-size="small" data-on-color="danger"
										data-on-text="ON" data-off-color="default" data-off-text="OFF">
									</li>
									<li>Auto Sumbit Issues <input type="checkbox"
										class="make-switch" data-size="small" data-on-color="warning"
										data-on-text="ON" data-off-color="default" data-off-text="OFF">
									</li>
									<li>Enable SMS Alerts <input type="checkbox"
										class="make-switch" checked data-size="small"
										data-on-color="success" data-on-text="ON"
										data-off-color="default" data-off-text="OFF">
									</li>
								</ul>
								<h3 class="list-heading">System Settings</h3>
								<ul class="list-items borderless">
									<li>Security Level <select
										class="form-control input-inline input-sm input-small">
											<option value="1">Normal</option>
											<option value="2" selected>Medium</option>
											<option value="e">High</option>
									</select>
									</li>
									<li>Failed Email Attempts <input
										class="form-control input-inline input-sm input-small"
										value="5" />
									</li>
									<li>Secondary SMTP Port <input
										class="form-control input-inline input-sm input-small"
										value="3560" />
									</li>
									<li>Notify On System Error <input type="checkbox"
										class="make-switch" checked data-size="small"
										data-on-color="danger" data-on-text="ON"
										data-off-color="default" data-off-text="OFF">
									</li>
									<li>Notify On SMTP Error <input type="checkbox"
										class="make-switch" checked data-size="small"
										data-on-color="warning" data-on-text="ON"
										data-off-color="default" data-off-text="OFF">
									</li>
								</ul>
								<div class="inner-content">
									<button class="btn btn-success">
										<i class="icon-settings"></i> Save Changes
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END QUICK SIDEBAR -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<div class="page-footer">
		<div class="page-footer-inner">
			2014 &copy; Metronic by keenthemes. <a
				href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes"
				title="Purchase Metronic just for 27$ and get lifetime updates for free"
				target="_blank">Purchase Metronic!</a>
		</div>
		<div class="scroll-to-top">
			<i class="icon-arrow-up"></i>
		</div>
	</div>
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