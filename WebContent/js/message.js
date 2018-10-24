$.ajax({
			"url" : "/message",
			"type" : "post",
			"data" : {
				"action" : "display_all",
				"user_id" : $("#user_id", window.parent.document).val()
			}, 
			"dataType" : "json",
			"success" : function(data, textStatus, jqXHR) {
				var arr = [];
				for (var i in data) {
					arr[i] = [];
					for (var j in data[i]) {
						arr[i].push(data[i][j]);
					}
				}

				$('#msg_send_th').empty();
				$('#msg_send_tb').empty();
				if (arr[0][1].length > 0) {
					$('#send_label').text('Send');
					$('#msg_send_th').append('<tr><td>' + "Destination"
							+ '</td><td>' + "Content" + '</td><td>' + "Date"
							+ '</td><td>' + "Delete" + '</td></tr>');
				}

				for (i = 0; i < arr[0][1].length; i++) {
					var m = arr[0][1][i];
					$('#msg_send_tb').append('<tr><td>' + m.id_user_destination
							+ '</td><td>' + m.content + '</td><td>' + m.date
							+ '</td><td>'
							+ '<span onclick ="clickDelete(this)" id = "'
							+ m.id + '" >Delete' + '</span>' + '</td></tr>');
				}

				$('#msg_receive_th').empty();
				$('#msg_receive_tb').empty();
				if (arr[1][1].length > 0) {
					$('#receive_label').text('Receive');
					$('#msg_receive_th').append('<tr><td>' + "Departure"
							+ '</td><td>' + "Content" + '</td><td>' + "Date"
							+ '</td><td>' + "Reply" +  '</td><td>' + "Delete" + '</td></tr>');
				}

				for (i = 0; i < arr[1][1].length; i++) {
					var m = arr[1][1][i];
					$('#msg_receive_tb').append('<tr><td>' + m.id_user_departure
							+ '</td><td>' + m.content + '</td><td>' + m.date
							+ '</td><td>'
							+ '<span onclick ="clickAdd(this)" id = "'
							+ m.id + '" >Reply' + '</span>' + '</td><td>'
							+ '<span onclick ="clickDelete(this)" id = "'
							+ m.id + '" >Delete' + '</span>' + '</td></tr>');
				}
			}
		})


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
					$('#iframe', window.parent.document).attr('src',
							$('#iframe', window.parent.document).attr('src'));
				}
			});

}
