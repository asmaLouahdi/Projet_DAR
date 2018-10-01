function submitKey() {
	$.ajax({
				"url" : "accessoiresServlet",
				"type" : "post",
				"data" : {
					"action" : "search",
					"obj" : $('#itemKey').val()
				},
				"dataType" : "json",
				"success" : function(items) {
					// $.ajax方法会自动将json字符串转换成JavaScript对象
					// 先清空tbody
					$('#th').empty();
					if (items.length > 0) {
						$('#th').append('<tr><td>' + "Photo" + '</td><td>'
								+ "Titre" + '</td></tr>');
					}
					$('#tb').empty();
					for (i = 0; i < items.length; i++) {
						var item = items[i];
						$('#tb').append('<tr><td>' + '<image src="'
								+ item.photo + '"></image>'
								+ '</td><td><a target= "_blank"' + ' href="' + item.info + '">'
								+ item.titre + '</a></td><tr>');

					}
				}
			});

}