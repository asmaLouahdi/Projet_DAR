<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="css/message.css" rel="stylesheet">

<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
	rel="stylesheet" type="text/css" />

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js"
	type="text/javascript"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
	type="text/javascript"></script>
<script src="js/message.js"></script>


<div id="Message">
	<div class="type">
		<label id = "send_label"></label>
	</div>
	<div id="msg_send_table">
		<table>
			<thead id="msg_send_th">
			</thead>
			<tbody id="msg_send_tb">
			</tbody>
		</table>
	</div>
	<div class="type">
		<label id = "receive_label"></label>
	</div>
	<div id="msg_receive_table">
		<table>
			<thead id="msg_receive_th">
			</thead>
			<tbody id="msg_receive_tb">

			</tbody>
		</table>
	</div>
</div>