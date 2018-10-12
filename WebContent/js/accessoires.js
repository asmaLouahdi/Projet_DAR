function submitKey() {
	$.ajax({
				"url" : "AccessoiresServlet",
				"type" : "post",
				"data" : {
					"action" : "search",
					"obj" : $('#itemKey').val()
				},
				"dataType" : "json",
				"beforeSend" : function() {// ajax处理之前出现spin图标
					// alert('before...');
					$('#th').empty();
					$('#tb').empty();
					$('#result').empty();
					$("#loading")
							.append("<image src='img/loading.gif'></image>");
				},
				"success" : function(items) {
					if (items.length > 0) {
						for (i = 0; i < items.length; i++) {
							var item = items[i];
							$('#tb').append('<tr><td>' + '<image src="'
									+ item.photo + '"></image>'
									+ '</td><td><a target= "_blank"'
									+ ' href="' + item.info + '">' + item.titre
									+ '</a></td><tr>');

						}
					} else {
						$("#result").append("<label>No result for "
								+ $('#itemKey').val() + "</label>");
					}
					$("#loading").empty();
				}

			});
}

function keyDown() {

	if (event.keyCode == "13") {
		submitKey();
	}

}
