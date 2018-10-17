<%@page import="java.util.List"%>
<%@page import="model.dao.LoginDao"%>
<%@page import="java.util.Date"%>
<%@page import="model.bo.Utilisateur"%>
<%@page import="model.bo.Comment" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
<link href="assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<link href="assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="assets/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/>
<!-- <link id="style_color" href="assets/admin/layout/css/themes/darkblue.css" rel="stylesheet" type="text/css"/> -->
<link href="assets/admin/layout/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>




	<!-- BEGIN CONTENT -->
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			
			<!-- /.modal -->
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN STYLE CUSTOMIZER -->
			<!-- END STYLE CUSTOMIZER -->
			<!-- BEGIN PAGE HEADER-->
			<h3 class="page-title">
			About Us <small></small>
			</h3>
			
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row margin-bottom-30">
				<div class="col-md-6">
					<p>
					From writing and design to interactive and animation, we are the team brands trust to deliver best-in-class content,and the traction other agencies can t. Get to know us.				
					
					</p>
					<ul class="list-unstyled margin-top-10 margin-bottom-10">
											<li>
							<i class="fa fa-check icon-info"></i> Our team contains:
						</li>
						<li>
							<i class="fa fa-check icon-default"></i> Developpers
						</li>
						<li>
							<i class="fa fa-check icon-success"></i> Designers
						</li>

						<li>
							<i class="fa fa-check icon-danger"></i> reporters
						</li>
						
					</ul>
					<!-- Blockquotes -->
					<blockquote class="hero">
						<p>
							Our roots in search, diverse backgrounds and deep experience combine to give you all the skills it takes to create and rank content under one roof.
						</p>
						<small>A team.</small>
					</blockquote>
				</div>
				<div class="col-md-6">
					<iframe src="http://player.vimeo.com/video/22439234" style="width:100%; height:327px;border:0" allowfullscreen>
					</iframe>
				</div>
			</div>
			<!--/row-->
			<!-- Meer Our Team -->
			<div class="headline">
				<h3>Meet Our Team</h3>
			</div>
			<div class="row thumbnails">
				<div class="col-md-3">
					<div class="meet-our-team">
						<h3>Soukaina BENADDI <small>Developper</small></h3>
						<img src="assets/admin/pages/media/pages/2.jpg" alt="" class="img-responsive"/>
						<div class="team-info">
							<p>
								Students in master degree's level 2 in Computer science STL at UPMC,PARIS
							</p>
							<ul class="social-icons pull-right">
							
								<li>
									<a href="https://www.facebook.com/soukaina.benaddi" data-original-title="facebook" class="facebook">
									</a>
								</li>
								<li>
									<a href="javascript:;" data-original-title="linkedin" class="linkedin">
									</a>
								</li>
								<li>
									<a href="javascript:;" data-original-title="Goole Plus" class="googleplus">
									</a>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="meet-our-team">
						<h3>Ziyi ZHOU <small>Developpers</small></h3>
						<img src="assets/admin/pages/media/pages/3.jpg" alt="" class="img-responsive"/>
						<div class="team-info">
							<p>
Students in master degree's level 2 in Computer science STL at UPMC,PARIS							</p>
							<ul class="social-icons pull-right">
								<li>
								
								<li>
									<a href="https://www.facebook.com/ziyi.zhou" data-original-title="facebook" class="facebook">
									</a>
								</li>
								<li>
									<a href="javascript:;" data-original-title="linkedin" class="linkedin">
									</a>
								</li>
								<li>
									<a href="javascript:;" data-original-title="Goole Plus" class="googleplus">
									</a>
								</li>
							
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="meet-our-team">
						<h3>Asma LOUAHDI <small>Developpers</small></h3>
						<img src="assets/admin/pages/media/pages/2.jpg" alt="" class="img-responsive"/>
						<div class="team-info">
							<p>
Students in master degree's level 2 in Computer science STL at UPMC,PARIS							</p>
							<ul class="social-icons pull-right">
								
								<li>
									<a href="https://www.facebook.com/louahdi.asma" data-original-title="facebook" class="facebook">
									</a>
								</li>
								<li>
									<a href="javascript:;" data-original-title="linkedin" class="linkedin">
									</a>
								</li>
								<li>
									<a href="javascript:;" data-original-title="Goole Plus" class="googleplus">
									</a>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
				
			</div>
			<!--/thumbnails-->
			<!-- //End Meer Our Team -->
			<!-- END PAGE CONTENT-->

	<!-- END CONTENT -->
	
<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<script src="http://maps.google.com/maps/api/js?sensor=true" type="text/javascript"></script>
<script src="assets/global/plugins/gmaps/gmaps.min.js" type="text/javascript"></script>
<script src="assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="assets/admin/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
<script src="assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="assets/admin/pages/scripts/contact-us.js"></script>
<script>
jQuery(document).ready(function() {    
   Metronic.init(); // init metronic core components
Layout.init(); // init current layout
QuickSidebar.init(); // init quick sidebar
Demo.init(); // init demo features
   ContactUs.init();
});
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
		
			


