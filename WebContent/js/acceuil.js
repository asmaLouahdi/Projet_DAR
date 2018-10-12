$(document).ready(function() {

			window.setInterval(function() {
						setCount();
					}, 500);

			function setCount() {

				$.ajax({
							"url" : "MessageServlet",
							"type" : "post",
							"data" : {
								"action" : "getCountNoRead",
								"user_id" : $("#user_id").val()
							},
							"dataType" : "text",
							"success" : function(data) {
								$("#msg_count").text(data);
							}
						});

			}
			var obj = document.getElementById("iframe");

			$("#li_actualite").click(function() {
					});
			$("#li_events").click(function() {
					});
			$("#li_publications").click(function() {
					});
			$("#li_accessoires").click(function() {
						obj.src = "accessoires.jsp";
					});
			$("#li_think").click(function() {
				
					});
			$("#li_messages").click(function() {
						obj.src = "message.jsp";

					});

		})
