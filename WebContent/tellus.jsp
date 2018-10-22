<%@page import="java.util.List"%>
<%@page import="model.dao.LoginDao"%>
<%@page import="java.util.Date"%>
<%@page import="model.bo.Utilisateur"%>
<%@page import="model.bo.Comment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description" />
<meta content="" name="author" />
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
<!-- BEGIN THEME STYLES -->
<link href="assets/global/css/components.css" id="style_components"
	rel="stylesheet" type="text/css" />
<link href="assets/global/css/plugins.css" rel="stylesheet"
	type="text/css" />
<link href="assets/admin/layout/css/layout.css" rel="stylesheet"
	type="text/css" />
<!-- <link id="style_color"
	href="assets/admin/layout/css/themes/darkblue.css" rel="stylesheet"
	type="text/css" /> -->
<link href="assets/admin/layout/css/custom.css" rel="stylesheet"
	type="text/css" />
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico" />
<!-- <div class="row">
	<div class="col-md-12">
		<form class="form-horizontal form-row-seperated" action="#"> -->
			<div class="portlet">

				<!-- <div class="portlet-body"> -->
				<div>
					<div >

						<div >
							<div  id="tab_general">
								<div class="form-body">
									<form method="POST" action="comment">
									<%!Utilisateur user=null; %>
	<% user=(Utilisateur)request.getAttribute("user");%>
										<div >
											
											<label class="col-md-2 control-label">Name: <span
												class="required"> * </span>
											</label>
											<div class="col-md-10">
												<input class="form-control" name="name" value=""
													placeholder=""  />
											</div>
										</div>

										<div class="form-group">
											<label class="col-md-2 control-label"> Comment: <span
												class="required"> * </span>
											</label>
											<div class="col-md-10">
												<textarea class="form-control" name="description"
													placeholder=""></textarea>
												<span class="help-block"> </span>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Mark: <span
												class="required"> * </span>
											</label>
											<div class="col-md-10">
												<input type=number class="form-control" name="mark"
													placeholder="/5" max="5" min="1">
											</div>
										</div>

										<input type="submit" value="Register"
											class="col-md-2  btn btn-primary" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

<!-- 		</form>
	</div>
</div> -->
<!-- END PAGE CONTENT-->




<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
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
<script type="text/javascript"
	src="assets/global/plugins/select2/select2.min.js"></script>
<script type="text/javascript"
	src="assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<script type="text/javascript"
	src="assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript"
	src="assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script
	src="assets/global/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js"
	type="text/javascript"></script>
<script
	src="assets/global/plugins/bootstrap-touchspin/bootstrap.touchspin.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="assets/global/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
<script src="assets/global/plugins/plupload/js/plupload.full.min.js"
	type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="assets/admin/layout/scripts/layout.js"
	type="text/javascript"></script>
<script src="assets/admin/layout/scripts/quick-sidebar.js"
	type="text/javascript"></script>
<script src="assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="assets/global/scripts/datatable.js"></script>
<script src="assets/admin/pages/scripts/ecommerce-products-edit.js"></script>
