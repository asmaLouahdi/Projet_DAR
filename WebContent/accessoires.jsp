<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="css/accessoires.css" rel="stylesheet">
<script src="js/accessoires.js"></script>
<div>
	<div id="searchBox">
		<input type="text" id="itemKey"></input> 
		<input type="button" id="btnKey" onclick="submitKey()" value="Search"></input>
	</div>
	<div id="resultTable">
		<table width="80%">
			<thead id="th">
			</thead>
			<tbody id="tb">
			</tbody>
		</table>
	</div>
</div>

