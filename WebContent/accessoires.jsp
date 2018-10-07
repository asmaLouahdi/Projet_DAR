<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="js/jquery.min.js"></script>
<script src="js/accessoires.js"></script>
<link rel="stylesheet" type="text/css" href="css/accessoires.css">
<div>
	<div class="input-group">
		<input type="text" class="form-control" id="itemKey"
			placeholder="Search for..." aria-label="Search"
			aria-describedby="basic-addon2">
		<div class="input-group-append">
			<button class="btn btn-primary" type="button" onclick="submitKey()">
				<i class="fas fa-search"></i>
			</button>
		</div>
	</div>
	<div id="loading"></div>
	<div>
		<table width="80%">
			<thead id="th">
			</thead>
			<tbody id="tb"></tbody>
		</table>
	</div>
	<div id="page_bar"></div>

</div>

