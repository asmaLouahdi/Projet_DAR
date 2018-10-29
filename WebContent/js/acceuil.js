$(document).ready(function() {

//			 window.setInterval(function() {
//			 setCount();
//			 }, 500);

			function setCount() {
                
				$.ajax({
							"url" : "message",
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
						obj.src = "actualite.jsp";
					});
			$("#li_events").click(function() {
						obj.src = "events.jsp";
					});
			$("#li_publications").click(function() {
						obj.src = "publications.jsp";
					});
			$("#li_accessoires").click(function() {
//						obj.src = "accessoires.jsp";
					obj.src = "accessoires.jsp";
					});
			$("#li_comment").click(function() {
						obj.src = "tellus.jsp";
					});
			$("#li_messages").click(function() {
						obj.src = "message.jsp";
//				obj.src = "inbox.jsp";

					});
			$("#li_aboutUs").click(function() {
						obj.src = "aboutUs.jsp";

					});

		})
