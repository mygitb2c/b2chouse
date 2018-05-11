$(function() {
	ini();
	/* 注销按钮 */
	$(".exit_a").click(function() {
		if(confirm("真的要注销吗？")) {
			location.href = "exit";
		}
	})
	$(document).on("click", ".input_div .fa-search", function() {
		var config = getConfig(listUrl, 1, "json");
		getData($(".reload_div"), config, "Y")

	})

	$(document).on("click", ".order_col_div:not('.active')", function() {
		//移除所有排序列块的active类
		$(".order_col_div,.order_btn_part_div").removeClass("active");
		//为自己添加active类
		$(this).addClass("active");
		//获取子类下的排序按钮块
		var $order_btn = $(this).find(".order_btn_div");
		//将按钮块初始化为底部
		$order_btn.css("top", "2em");
		//执行按钮块的上升动画
		orderAnimate($order_btn.find(".asc_div span"), 0);
	})

	/* 排序按钮点击事件  */
	$(document).on("click", ".desc_div.active span", function() {
		orderAnimate($(this), 2);
	})
	$(document).on("click", ".asc_div.active span", function() {
		orderAnimate($(this), 0);
	})
	/*滚轮触发事件  */
	$(document).scroll(function() {
		$foot = $(".footer_loading_div");
		var scrollTop = $(this).scrollTop();
		var height = Number($(document).height() - $(window).height()-10);
		if(scrollTop >= height && !$(".progress_div").hasClass("active")) {
			$(this).scrollTop(scrollTop - 10);
			var page = $(".page_btn_div.active").next().attr("data-page");
			if(page) {
				var config = getConfig(listUrl, page, "json");
				getData($foot, config);
			}
		}
	});
	/*导航栏显示  */
	$(document).on("click", ".navbar_div.show .nav_link_btn_div", function() {
		toggleNavbar("-");
	})
	/*导航栏隐藏  */
	$(document).on("click", ".navbar_div:not('.show') .nav_link_btn_div", function() {
		toggleNavbar("+");
	})
	/*进入图片详情  */
	$(document).on("click", ".card_div", function() {
		var id = $(this).attr("data-id");
		location.href = "picture/" + id;
	})

	$(document).on("click", ".page_content_div .page_btn_div", function() {
		var page = $(this).attr("data-page");
		var config = getConfig(listUrl, page, "json");
		getData($(".reload_div"), config, "Y")
	})

})
/*ajax获取图像list路径  */
var listUrl = "picList_key";
/*初始化 */
function ini() {
	if(userId) {
		$(".nav_menu.login_menu").css("display", "none");
		$(".nav_menu.user_menu").css("display", "block");
	} else {
		$(".nav_menu.user_menu").css("display", "none");
		$(".nav_menu.login_menu").css("display", "block");
	}
	getData($(".reload_div"), getConfig(listUrl, 1, "json"), "Y")
}
/*获取ajax配置用json  */
function getConfig(url, page, dataType) {
	var config = {
		url: "",
		data: {},
		dataType: "",
		beforeSend: ""
	};
	var key = $(".input_div .search_input").val();
	var $order = $(".order_col_div.active");
	var orderValue = $order.find(".order_btn_part_div.active").attr("data-value");
	var orderType = $order.children(".order_type_div").attr("data-type");
	var data = {
		"key": key,
		"page": page,
		"pageSize": 24,
		"orderType": orderType,
		"orderValue": orderValue
	};
	config.url = url;
	config.dataType = dataType;
	config.data = data;
	return config;
}

function orderBtnGetCf($el) {
	var config = getConfig(listUrl, 1, "json");
}
/*获取并显示数据  */
function getData($load, config, isReload) {
	config.beforeSend = function() {
		$load.addClass("active");
	}
	$.ajax(config)
		.done(function(json) {
			if(isReload) {
				$(".card_div").remove();
				$(document).scrollTop(0);
			}
			if(json.data && json.data.length > 0) {
				cardHTML(json);
				getPageArea(json.page, json.totalPage)
				showKey(config.data.key);
			}
		})
		.always(function(json) {
			$load.removeClass("active");
		})
}
/*生成图像卡片HTML  */
function cardHTML(json) {
	var data = json.data;
	/* var html =""; */
	var wf_head = '<div class="waterfall_div" data-page="' + json.page + '">';
	var wf_footer = "</div>";
	for(var i = 0; i < data.length; i++) {
		var row = data[i];
		var title = row.pictures[0].pictureTitle;
		var userName = row.userName;
		var createTime = splitDate(row.pictures[0].createTime);
		var html = '<div class="card_div" data-id="' + row.pictures[0].pictureId + '">' +
			'<img src="picture/' + row.pictures[0].pictureId + '/false">' +
			'<div class="card_title_div text-left">' +
			'<span class="card_title">' + title + '</span>' +
			'</div>' +
			'<div class="card_info_div">' +
			'<span class="pull-left img_author">' + userName + '</span>' +
			'<span class="pull-right img_createdate">' + createTime + '</span>' +
			'<div class="clearfix"></div>' +
			'</div></div>';
		$(".waterfall_div .waterfall_col_div").eq(getColNum(i)).append(html);
	}

}
/*获取所在列数  */
function getColNum(i) {
	var m = $(".card_div").length;
	var colNum = m % 4;
	return colNum;
}
/*生成页码区域  */
function getPageArea(page, totalPage) {
	var $content = $(".page_area_div .page_content_div");
	$content.children(".page_btn_div").remove();
	page = Number(page);
	var startPage = 1;
	var endPage = totalPage;
	page = Number(page);
	if(page + 3 < totalPage) {
		endPage = page + 3;
		if(page > 3) {
			startPage = page - 3;
		} else {
			endPage = endPage + 4 - page;
		}
	} else {
		startPage = totalPage - 6;
		if(startPage < 1) {
			startPage = 1;
		}
	}
	var html = "";
	for(var i = startPage; i <= endPage && i <= totalPage; i++) {
		html += '<div class="page_btn_div" data-page="' + i + '">' +
			'<span class="page_btn_span">' +
			i + '</span></div>';
	}
	$content.append(html);
	$content.children(".page_btn_div[data-page='" + page + "']").addClass("active");
}
/*对搜索成果显示关键字  */
function showKey(key) {
	if(key && key.trim().length > 0) {
		var key_reg = new RegExp(key, "gm");
		var $titles = $(".card_title:not('.revise')");
		var $userNames = $(".card_info_div .img_author:not('.revise')");
		for(var i = 0; i < $titles.length; i++) {
			var title = $titles.eq(i).text();
			var userName = $userNames.eq(i).text();
			title = title.replace(key_reg, "<span class='key_font'>" + key + "</span>");
			userName = userName.replace(key_reg, "<span class='key_font'>" + key + "</span>");
			$titles.eq(i).html(title);
			$userNames.eq(i).html(userName);
		}
		$titles.addClass("revise");
		$userNames.addClass("revise");
	}
}

function setPosition(col) {
	var i = 0;
	var j = 0;
	var n = 0;
	var w = 100 / col
	var $els = $(".card_div")
	for(; n < $els.length; n++) {
		var left = i * w + "%";
		var top = 0;
		if(j >= 1) {
			var pre = parseInt((j - 1) * col + i);
			var preEl = $els.eq(pre).get(0);
			top = preEl.offsetTop + preEl.offsetHeight;
		}
		$els.eq(n).css({
			"left": left,
			"top": top
		})
		i++;
		if(i >= col) {
			i = 0;
			j++;
		}
	}

}

function splitDate(date) {
	if(date && date.length == 19) {
		date = date.split(" ")[0];
	} else {
		date = "暂无数据"
	}
	return date;
}

function showTipMsg(text) {
	var $el = $(".tip_msg_div");
	$el.children(".tip_msg_value").text(text);
	$el.addClass("active");
	var h = $el.get(0).offsetHeight;
	$el.css("bottom", "-" + h + "px");
	$el.animate({
		bottom: "1em"
	}, 1000)
}
/*排序按钮动画，同时进行数据获取  */
function orderAnimate($el, value) {
	//获取到点击按钮的父类按钮块
	var $parent = $el.parent();
	//激活另一个按钮
	$parent.siblings().eq(0).addClass("active");
	//执行动画
	$parent.parent().animate({
		top: value + "em"
	}, 1000, function() {
		$parent.removeClass("active");
		var config = getConfig(listUrl, 1, "json");
		getData($(".reload_div"), config, "Y");
	});
}
/*显示与隐藏导航栏*/
function toggleNavbar(direction) {
	$(".navbar_div").animate({
		top: direction + "=5em"
	}, 500, function() {
		if(direction == "+") {
			$(this).addClass("show");
		} else {
			$(this).removeClass("show");
		}
	});
	$("#mycontainer").animate({
		paddingTop: direction + "=5em"
	}, 500);
	$(".nav_link_btn_div").animate({
		bottom: direction + "=2em"
	}, 500)
}