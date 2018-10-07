var page; // 当前页
var maxys;
var key;
function submitKey() {
	page = 1;
	Load(); // 加载数据
	LoadPageBar(); // 加载分页信息
};

function Load() {
	$.ajax({
				"url" : "accessoiresServlet", // 显示数据的处理页面
				"data" : {
					"action" : "paging",
					"page" : page,
					"key" : $('#itemKey').val()
				}, // 页数和查询都要传值
				"type" : "POST",
				"dataType" : "JSON", // 这里我们用JSON的数据格式
				"beforeSend" : beforeSend,
				"complete" : complete,
				"success" : function(items) {
//					$('#th').empty();
//					$('#th').append('<tr><td>' + "Photo" + '</td><td>'
//							+ "Titre" + '</td></tr>');
					// 执行完处理页面后写代码
					$('#tb').empty();
					var str = "";
					for (i = 0; i < items.length; i++) {
						var item = items[i];
						str += '<tr><td>' + '<image src="' + item.photo
								+ '"></image>' + '</td><td><a target= "_blank"'
								+ ' href="' + item.info + '">' + item.titre
								+ '</a></td><tr>';

					}
					$('#tb').html(str);

				}
			});

};

function LoadPageBar() {
	$.ajax({
				"url" : "accessoiresServlet", // 显示数据的处理页面
				"async" : false, // 因为这个是要同步执行的，所以值是false
				"data" : {
					"key" : $('#itemKey').val(),
					"action" : "sum",
					"page" : page
				}, // 想要传的值
				"type" : "POST", // 传值方式
				"dataType" : "TEXT", // 这里可以用TEXT字符串的方式
				"beforeSend" : beforeSend,
				"complete" : complete,
				"success" : function(d) {
					// 处理页面结束后的语句
					var str = "";
					maxys = d; // 将执行结果交给定义的最大页数
					str += "<span>Total：" + maxys + "pages</span> ";
					if (page > 1) {
						str += "<span id='prev'>Previous</span>"; // 后面要用到单击事件的，在这起个名字
					}
					if (page < maxys) {
						str += "<span id='next'>Next</span>"; // 这个也是要用点击事件的也要起名字
					}
					$("#page_bar").html(str);

					$("#prev").click(function() {
								page = page - 1; // 当前页减1
								if (page < 1) {
									page = 1;
								}
								Load(); // 加载数据
								LoadPageBar(); // 加载分页信息
							})

					$("#next").click(function() {
								page = page + 1; // 当前页加1
								if (page > maxys) {
									page = maxys;
								}
								Load(); // 加载数据
								LoadPageBar(); // 加载分页信息

							})

				}

			});
};

function beforeSend(XMLHttpRequest) {

	$("#loading").append("<img src='img/loading.gif'/>");

}

function complete(XMLHttpRequest) {

	$("#loading").empty();

}

// function submitKey() {
// $.ajax({
// "url" : "accessoiresServlet",
// "type" : "post",
// "data" : {
// "action" : "search",
// "obj" : $('#itemKey').val()
// },
// "dataType" : "json",
// "success" : function(items) {
// // $.ajax方法会自动将json字符串转换成JavaScript对象
// // 先清空tbody
// $('#th').empty();
// if (items.length > 0) {
// $('#th').append('<tr><td>' + "Photo" + '</td><td>'
// + "Titre" + '</td></tr>');
// }
// $('#tb').empty();
// for (i = 0; i < items.length; i++) {
// var item = items[i];
// $('#tb').append('<tr><td>' + '<image src="'
// + item.photo + '"></image>'
// + '</td><td><a target= "_blank"' + ' href="'
// + item.info + '">' + item.titre
// + '</a></td><tr>');
//
// }
// }
//				
// });
//				
// }

