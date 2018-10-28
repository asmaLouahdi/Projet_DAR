// getReceiveMessages();
// function getAllNewMessages(){
// $.ajax({
// "url" : "message",
// "type" : "post",
// "data" : {
// "action" : "newMessages",
// "user_id" : $("#user_id", window.parent.document).val()
// },
// "dataType" : "json",
// "success" : function(messages, textStatus, jqXHR) {
// $('#msg_th').empty();
// $('#msg_tb').empty();
// if (messages.length > 0) {
// $('#msg_th').append('<tr><th>' + "Departure"
// + '</th><th>' + "Content" + '</th><th>'
// + "Date" + '</th><th>' + "Reply" + '</th><th>'
// + "Delete" + '</th></tr>');
//
// }
//
// for (var i = 0; i < messages.length; i++) {
// var m = messages[i];
// $('#msg_tb')
// .append('<tr><td>'
// + m.id_user_departure
// + '</td><td>'
// + m.content
// + '</td><td>'
// + m.date
// + '</td><td>'
// + '<span onclick ="clickAdd(this)" id = "'
// + m.id
// + '" >Reply'
// + '</span>'
// + '</td><td>'
// + '<span onclick ="clickDelete(this)" id = "'
// + m.id + '" >Delete' + '</span>'
// + '</td></tr>');
// }
//
// }
// })
//
// }
// function getReceiveMessages() {
// $.ajax({
// "url" : "message",
// "type" : "post",
// "data" : {
// "action" : "display_receive",
// "user_id" : $("#user_id", window.parent.document).val()
// },
// "dataType" : "json",
// "success" : function(messages, textStatus, jqXHR) {
// $('#msg_th').empty();
// $('#msg_tb').empty();
// if (messages.length > 0) {
// $('#msg_th').append('<tr><th>' + "Departure"
// + '</th><th>' + "Content" + '</th><th>'
// + "Date" + '</th><th>' + "Reply" + '</th><th>'
// + "Delete" + '</th></tr>');
//
// }
//
// for (var i = 0; i < messages.length; i++) {
// var m = messages[i];
// $('#msg_tb')
// .append('<tr><td>'
// + m.id_user_departure
// + '</td><td>'
// + m.content
// + '</td><td>'
// + m.date
// + '</td><td>'
// + '<span onclick ="clickAdd(this)" id = "'
// + m.id
// + '" >Reply'
// + '</span>'
// + '</td><td>'
// + '<span class = "1" onclick ="clickDelete(this)" id = "'
// + m.id + '" >Delete' + '</span>'
// + '</td></tr>');
// }
//
// }
// })
//
// }
//			
// //function reloadMessages(){
// // $('#iframe', window.parent.document).attr('src',
// // $('#iframe', window.parent.document).attr('src'));
// //}
//
// function getSendMessages() {
// $.ajax({
// "url" : "message",
// "type" : "post",
// "data" : {
// "action" : "display_send",
// "user_id" : $("#user_id", window.parent.document).val()
// },
// "dataType" : "json",
// "success" : function(messages, textStatus, jqXHR) {
// $('#msg_th').empty();
// $('#msg_tb').empty();
// if (messages.length > 0) {
// $('#msg_th').append('<tr><th>' + "Destination"
// + '</th><th>' + "Content" + '</th><th>'
// + "Date" + '</th><th>' + "Delete"
// + '</th></tr>');
// }
//
// for (var i = 0; i < messages.length; i++) {
// var m = messages[i];
// $('#msg_tb')
// .append('<tr><td>'
// + m.id_user_destination
// + '</td><td>'
// + m.content
// + '</td><td>'
// + m.date
// + '</td><td>'
// + '<span class = "2" onclick ="clickDelete(this)" id = "'
// + m.id + '" >Delete' + '</span>'
// + '</td></tr>');
// }
//
// }
// })
//
// }
// function clickAdd(span) {
// $.ajax({
// "url" : "message",
// "type" : "post",
// "data" : {
// "msg_id" : span.id,
// "action" : "getDeparture"
// },
// "dataType" : "json",
// "success" : function(data) {
// $("#contact_id", window.parent.document).val(data).change();
// var obj = window.parent.document.getElementById("iframe");
// obj.src = "add_message.jsp";
// }
// });
//
// }
//
// function clickDelete(span) {
//
// $.ajax({
// "url" : "message",
// "type" : "post",
// "data" : {
// "msg_id" : span.id,
// "action" : "delete",
// "user_id" : $("#user_id", window.parent.document).val()
// },
// "dataType" : "text",
// "success" : function(data) {
// if($(span).attr('class')=='1'){
// getReceiveMessages()
// }else{
// getSendMessages();
//				    	
// }
// }
// });
//
// }

getReceiveMessages();
function getAllNewMessages() {
	$.ajax({
				"url" : "message",
				"type" : "post",
				"data" : {
					"action" : "newMessages",
					"user_id" : $("#user_id", window.parent.document).val()
				},
				"dataType" : "json",
				"success" : function(messages, textStatus, jqXHR) {
					$('#msg_th').empty();
					$('#msg_tb').empty();
					if (messages.length > 0) {
						$('#msg_th').append('<tr><th>' + "Departure"
								+ '</th><th>' + "Content" + '</th><th>'
								+ "Date" + '</th><th>' + "Reply" + '</th><th>'
								+ "Delete" + '</th></tr>');

					}

					for (var i = 0; i < messages.length; i++) {
						var m = messages[i];
						$('#msg_tb')
								.append('<tr><td>'
										+ m.id_user_departure
										+ '</td><td>'
										+ m.content
										+ '</td><td>'
										+ m.date
										+ '</td><td>'
										+ '<span onclick ="clickAdd(this)" id = "'
										+ m.id
										+ '" >Reply'
										+ '</span>'
										+ '</td><td>'
										+ '<span onclick ="clickDelete(this)" id = "'
										+ m.id + '" >Delete' + '</span>'
										+ '</td></tr>');
					}

				}
			})

}
function getReceiveMessages() {
	$.ajax({
		"url" : "message",
		"type" : "post",
		"data" : {
			"action" : "display_receive",
			"user_id" : $("#user_id", window.parent.document).val()
		},
		"dataType" : "json",
		"success" : function(messages, textStatus, jqXHR) {
			$('#msg_th').empty();
			$('#msg_tb').empty();
			if (messages.length > 0) {
				$('#msg_th').append('<tr><th>' + "Departure" + '</th><th>'
						+ "Content" + '</th><th>' + "Date" + '</th><th>'
						+ "Operation" + '</th></tr>');
				for (var i = 0; i < messages.length; i++) {
					var m = messages[i];
					$('#msg_tb')
							.append('<tr><td>'
									+ m.id_user_departure
									+ '</td><td>'
									+ m.content
									+ '</td><td>'
									+ m.date
									+ '</td><td>'
									+ '<span onclick ="clickAdd(this)" id = "'
									+ m.id
									+ '" >Reply'
									+ '</span>'
									+ '<span class = "1" onclick ="clickDelete(this)" id = "'
									+ m.id + '" >Delete' + '</span>'
									+ '</td></tr>');
				}

			}

		}
	})

}

// function reloadMessages(){
// $('#iframe', window.parent.document).attr('src',
// $('#iframe', window.parent.document).attr('src'));
// }

function getSendMessages() {
	$.ajax({
		"url" : "message",
		"type" : "post",
		"data" : {
			"action" : "display_send",
			"user_id" : $("#user_id", window.parent.document).val()
		},
		"dataType" : "json",
		"success" : function(messages, textStatus, jqXHR) {
			$('#msg_th').empty();
			$('#msg_tb').empty();
			if (messages.length > 0) {
				$('#msg_th').append('<tr><th>' + "Destination" + '</th><th>'
						+ "Content" + '</th><th>' + "Date" + '</th><th>'
						+ "Operation" + '</th></tr>');
			}

			for (var i = 0; i < messages.length; i++) {
				var m = messages[i];
				$('#msg_tb')
						.append('<tr><td>'
								+ m.id_user_destination
								+ '</td><td>'
								+ m.content
								+ '</td><td>'
								+ m.date
								+ '</td><td>'
								+ '<span class = "2" onclick ="clickDelete(this)" id = "'
								+ m.id + '" >Delete' + '</span>' + '</td></tr>');
			}

		}
	})

}
function clickAdd(span) {
	$.ajax({
				"url" : "message",
				"type" : "post",
				"data" : {
					"msg_id" : span.id,
					"action" : "getDeparture"
				},
				"dataType" : "json",
				"success" : function(data) {
					$("#contact_id", window.parent.document).val(data).change();
					var obj = window.parent.document.getElementById("iframe");
					obj.src = "add_message.jsp";
				}
			});

}

function clickDelete(span) {

	$.ajax({
				"url" : "message",
				"type" : "post",
				"data" : {
					"msg_id" : span.id,
					"action" : "delete",
					"user_id" : $("#user_id", window.parent.document).val()
				},
				"dataType" : "text",
				"success" : function(data) {
					if ($(span).attr('class') == '1') {
						getReceiveMessages()
					} else {
						getSendMessages();

					}
				}
			});

}

// function initUI(pageNo, pageSize) {
//	
// alert(data.length);
// $('#tb').empty();
// for (var i = (pageNo - 1) * pageSize; i < pageNo * pageSize; i++) {
// var m = data[i];
// $('#msg_tb').append('<tr><td>' + m.id_user_departure + '</td><td>'
// + m.content + '</td><td>' + m.date + '</td><td>'
// + '<span onclick ="clickAdd(this)" id = "' + m.id + '" >Reply'
// + '</span>'
// + '<span class = "1" onclick ="clickDelete(this)" id = "'
// + m.id + '" >Delete' + '</span>' + '</td></tr>');
// }
//
// }
//
// pagination({
// cur : pageNo,
// total : Math.ceil(data.length / 10),
// len : 5,
// targetId : 'pagination',
// callback : function() {
// var me = this;
// var oPages = document.getElementsByClassName('page-index');
// for (var i = 0; i < oPages.length; i++) {
// oPages[i].onclick = function() {
// initUI(this.getAttribute('data-index'), 5);
// }
// }
// var goPage = document.getElementById('go-search');
// goPage.onclick = function() {
// var index = document.getElementById('yeshu').value;
// if (!index || (+index > me.total) || (+index < 1)) {
// return;
// }
// initUI(index, 5);
// }
// }
// });}
