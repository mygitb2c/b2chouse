<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>首页</title>
		<link rel="stylesheet" type="text/css" href="static/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="static/css/font-awesome.css" />
		<link rel="stylesheet" type="text/css" href="static/css/buttons.css" />
		<script src="static/js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/popper.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<style type="text/css">
			html {
				scroll-behavior: smooth;
			}
			
			body {
				background: rgb(242, 242, 242);
				/* -ms-overflow-style: none; */
			}
			
			body::-webkit-scrollbar {
				/* display: none; */
			}
			
			::-webkit-scrollbar {
				width: 8px;
			}
			
			::-webkit-scrollbar-thumb {
				background-color: #c1c1c1;
				border-radius: 4px;
			}
			/*让div中的图片能水平垂直居中且大小自适应*/
			
			.img_div {
				height: 200px;
				display: table-cell;
				vertical-align: middle;
			}
			
			.simple_img {
				max-width: 100%;
				max-height: 100%;
				height: auto;
				width: auto;
			}
			/*让div中的图片能垂直居中且大小自适应*/
			
			.fa-search:active {
				color: #007bff;
			}
			
			a,
			.fa-search,
			.card-img-top,
			.card-title,
			.card-text {
				cursor: pointer;
			}
			
			.width_30 {
				width: 30%;
			}
			/*搜索框样式*/
			
			.search_input:focus {
				box-shadow: none;
				border: none;
			}
			
			.search_input {
				border: none;
				height: 90%;
				margin: auto 0px;
			}
			
			.fa-search {
				padding: 0px;
			}
			
			.input_div {
				border-radius: 0.25em;
				border: 1px solid #868e96;
				padding: 2px 15px 2px 15px;
				background: white;
				margin-left: 20px;
				height: 100%;
			}
			/*搜索框样式*/
			
			.logo_div {
				text-align: center;
				line-height: 3em;
			}
			
			.logo_value {
				font-size: 3em;
				font-family: Prestige Elite Std;
				color: #FFF;
			}
			
			.nav_menu {
				text-align: right;
				line-height: 3em;
				padding-right: 6.7%;
				color: #FFF;
			}
			
			.nav_menu a {
				text-decoration: none;
				color: inherit;
				margin-left: 25px;
				margin-right: 25px;
			}
			
			.navbar_div {
				z-index: 2;
				background: #343a40;
				width: 100%;
				height: 6em;
				top: 0;
				line-height: 3em;
				margin: 0px;
				padding: 1.5em 0px;
				/* 	border-bottom: 1px solid rgb(230, 230, 230); */
				position: fixed;
			}
			
			#mycontainer {
				margin: 0em 10%;
				width: 80%;
				padding: 6em 0em;
			}
			
			#content {
				overflow: hidden;
			}
			/* .page_area_div {
				position: fixed;
				right: 0;
				top: 50vh;
				width: 10%;
				transform: translateY(-50%);
			}
			
			.page_menu_div {
				padding: 1.5em 0em;
				margin: 0em auto;
			}
			
			.page_menu_span {
				cursor: pointer;
			}
			
			.page_menu_span.disabled {
				color: rgb(190, 190, 190);
				cursor: default;
			} */
			/*瀑布流  */
			
			#waterfall {
				/*瀑布内列数*/
				-moz-column-count: 4;
				-webkit-column-count: 4;
				column-count: 4;
				/*瀑布内子元素左右margin*/
				-moz-column-gap: 1em;
				-webkit-column-gap: 1em;
				column-gap: 1em;
				position: relative;
				left: 0px;
				top: 0px;
				min-height: 100vh;
			}
			/*一个内容层*/
			
			.card_div {
				/* border-radius: 0.5em; */
				padding: 1em;
				margin: 0 0 1em 0;
				/*防止子元素被切割*/
				-moz-page-break-inside: avoid;
				-webkit-column-break-inside: avoid;
				page-break-inside: avoid;
				border: 1px solid rgb(230, 230, 230);
				/* border-radius: 0.5em;
	border-bottom-left-radius: 0.5em;
	border-bottom-right-radius: 0.5em; 
	box-shadow: 0px 3px 3px rgba(150, 150, 150, 0.5);*/
				background: #fff;
				text-align: center;
				font-size: 12px;
				cursor: pointer;
			}
			
			.card_div:hover {
				border-color: rgb(213, 233, 161);
				opacity: 0.8;
				/* 	-webkit-filter: brightness(120%); 
    filter: brightness(120%); */
			}
			
			.card_div img {
				max-width: 100%;
				border-radius: inherit;
				/* box-shadow: 0px 5px 5px #999999; */
				max-height: 40em;
			}
			
			.card_title_div {
				padding: 0.5em 1em;
			}
			
			.card_title {
				/*自动隐藏文字*/
				overflow: hidden;
				/*文字隐藏后添加省略号*/
				text-overflow: ellipsis;
				display: -webkit-box;
				-webkit-box-orient: vertical;
				/*文本限制在1行*/
				-webkit-line-clamp: 1;
				color: #690;
			}
			
			.card_text {
				/*文本限制在2行*/
				-webkit-line-clamp: 2;
				/*首行缩进*/
				text-indent: 2em;
			}
			
			.card_info_div {
				padding: 0em 1em;
			}
			
			.card_info_div .img_author {
				color: #999;
			}
			
			.card_info_div .img_createdate {
				color: #ccc;
			}
			/*排序菜单栏*/
			
			.order_menu_div {
				height: 8em;
				padding: 1em 5%;
			}
			
			.order_col_div.active {
				color: #007bff;
			}
			
			.order_desc_div,
			.order_asc_div {
				height: 4em;
				overflow: hidden;
			}
			
			.order_center_div {
				border-top: 2px solid #333333;
				width: 95%;
				z-index: -1;
				position: relative;
				top: 50%;
			}
			
			.order_center_value {
				margin-right: -3.5em;
				margin-top: -1em;
			}
			
			.order_col_div {
				margin-left: 8%;
				height: 100%;
				background: rgb(242, 242, 242);
				display: inline-block;
				float: left;
				text-align: center;
				color: #999999;
				width: 5em;
				position: relative;
			}
			
			.order_col_div.active {}
			
			.order_type_div {
				width: 100%;
				position: absolute;
				top: 50%;
				transform: translateY(-50%);
				z-index: 1;
				background: rgb(242, 242, 242);
				line-height: 2em;
			}
			
			.order_type_value {
				cursor: pointer;
			}
			
			.order_col_div.active .order_type_value {
				cursor: default;
			}
			
			.order_btn_div {
				height: 4em;
				text-align: center;
				position: absolute;
				width: 100%;
				z-index: 0;
			}
			
			.order_btn_part_div {
				height: 50%;
				line-height: 2em;
				visibility: hidden;
			}
			
			.order_col_div:not (.active) .order_btn_part_div {
				display: none;
			}
			
			.order_btn_span {
				padding: 0.1em 0.5em;
				cursor: pointer;
			}
			
			.order_btn_part_div.active {
				visibility: visible;
			}
			/*排序菜单栏*/
			/*加载中区域  */
			
			.footer_loading_div {
				margin: 0.5em 0em 2em 0em;
				visibility: hidden;
			}
			
			.loading~.footer_loading_div {
				visibility: visible;
			}
			
			.footer_loading_content_div {
				display: flex;
				justify-content: center;
				align-items: center;
				padding: 1em 0em;
			}
			
			.nav_link_btn_div {
				position: absolute;
				color: #fff;
				right: 0em;
				padding: 0.5em;
				bottom: 0em;
				background: inherit;
				border-bottom-left-radius: 0.25em;
				border-bottom-right-radius: 0.25em;
				cursor: pointer;
			}
			
			.nav_link_btn_div .fa {
				display: none;
			}
			
			.navbar_div.show .fa-angle-double-up,
			.navbar_div:not(.show) .fa-angle-double-down {
				display: inline-block;
			}
			.reload_div{
				width: 100%;
				height: 100%;
				background: rgba(0,0,0,0.5);
				position: fixed;
				display: none;
				z-index: 0;
			}
			.reload_div>div{
				z-index: 3;
				position: absolute;
				top: 50%;
				left: 50%;
			}
			body.loading{
				overflow: hidden;
			}
			.loading>.reload_div{
				display: block;
			}
			.tip_msg_div{
				position: fixed;
				top: 40%;
				left: 40%;
				z-index: 3;
				padding: 1em 4em;
				background: #fff;
				border:1px solid #333;
			}
		</style>
	</head>

	<body>
		<div class="reload_div">
			
		</div>
		<!-- <div class="tip_msg_div">
			已经到底了~
		</div> -->
		<div class="row navbar_div show">
			<div class="nav_link_btn_div">
				<span class="fa fa-angle-double-up fa-2x"></span>
				<span class="fa fa-angle-double-down fa-2x"></span>
			</div>
			<div class="col-md-4 search_div">
				<div class="input_div form-inline">
					<input type="text" placeholder="搜索" class="form-control col-md-11 search_input" /> <i class="fa fa-search fa-lg col-md-1"></i>
				</div>
			</div>
			<div class="col-md-4 logo_div">
				<span class="logo_value">Share Picture</span>
			</div>
			<div class="col-md-4 nav_menu login_menu  ">
				<a class="register_a " href="register"> <i class="fa fa-registered fa-lg"></i> 注册
				</a>
				<a class="login_a " href="login"> <i class="fa fa-map-marker fa-lg"></i> 登录
				</a>
			</div>
			<div class="col-md-4 nav_menu user_menu ">
				<a class="userinfo_a " href="my"> <i class="fa fa-user-o fa-fw fa-lg"></i> 我的
				</a>
				<a class="exit_a "> <i class="fa fa-sign-out fa-fw fa-lg"></i> 注销
				</a>
				<a class="sharepic_a " href="userinfo.html"> <i class="fa fa-share-alt fa-fw fa-lg"></i> 发图
				</a>
			</div>
		</div>
		<!-- <div class="page_area_div">
			<div class="page_menu_div text-center">
				<span class="page_menu_span page_up_span"> <i
				class="fa fa-angle-up fa-5x" aria-hidden="true"></i>
			</span>
			</div>
			<div class="page_menu_div text-center">
				<span></span>
			</div>
			<div class="page_menu_div text-center">
				<span class="page_menu_span page_down_span"> <i
				class="fa fa-angle-down fa-5x" aria-hidden="true"></i>
			</span>
			</div>
		</div> -->
		<style type="text/css">
			.page_area_div {
				position: fixed;
				right: 0;
				bottom: 0;
				padding-bottom: 0.5em;
				height: 300px;
				width: 10%;
			}
			
			.page_content_div {
				height: 100%;
				border-left: 2px solid #ccc;
				width: 50%;
				color: #fff;
				margin-left: 50%;
			}
			
			.page_btn_div {
				background: #479AC7;
				width: 2em;
				height: 2em;
				/* padding: 0.5em; */
				border-radius: 1em;
				/* display: inline-block; */
				text-align: center;
				line-height: 2em;
				position: relative;
				margin: 1em 0em 1em -1em;
			}
			
			.page_btn_span {}
		</style>
		<div class="page_area_div">
			<div class="page_content_div">
				<div class="page_btn_div">
					<span class="page_btn_span">
						1
					</span>
				</div>
				<div class="page_btn_div">
					<span class="page_btn_span">
						2
					</span>
				</div>
				<div class="page_btn_div">
					<span class="page_btn_span">
						3
					</span>
				</div>
			</div>
		</div>

		<div id="mycontainer">
			<div class="order_menu_div">
				<div class="order_col_div active">
					<div class="order_btn_div">
						<div class="order_btn_part_div desc_div active">
							<span class="order_btn_span"> <i
							class="fa fa-sort-amount-desc"></i>
						</span>
						</div>
						<div class="order_btn_part_div asc_div ">
							<span class="order_btn_span"> <i
							class="fa fa-sort-amount-asc" aria-hidden="true"></i>
						</span>
						</div>
					</div>
					<div class="order_type_div">
						<span class="order_type_value">热度</span>
					</div>
				</div>
				<div class="order_col_div">
					<div class="order_btn_div">
						<div class="order_btn_part_div desc_div ">
							<span class="order_btn_span"> <i
							class="fa fa-sort-amount-desc"></i>
						</span>
						</div>
						<div class="order_btn_part_div asc_div ">
							<span class="order_btn_span"> <i
							class="fa fa-sort-amount-asc" aria-hidden="true"></i>
						</span>
						</div>
					</div>
					<div class="order_type_div">
						<span class="order_type_value ">最新</span>
					</div>
				</div>
				<div class="order_col_div">
					<div class="order_btn_div">
						<div class="order_btn_part_div desc_div ">
							<span class="order_btn_span"> <i
							class="fa fa-sort-amount-desc"></i>
						</span>
						</div>
						<div class="order_btn_part_div asc_div ">
							<span class="order_btn_span"> <i
							class="fa fa-sort-amount-asc" aria-hidden="true"></i>
						</span>
						</div>
					</div>
					<div class="order_type_div">
						<span class="order_type_value">收藏量</span>
					</div>
				</div>
				<div class="order_col_div">
					<div class="order_btn_div">
						<div class="order_btn_part_div desc_div ">
							<span class="order_btn_span"> <i
							class="fa fa-sort-amount-desc"></i>
						</span>
						</div>
						<div class="order_btn_part_div asc_div ">
							<span class="order_btn_span"> <i
							class="fa fa-sort-amount-asc" aria-hidden="true"></i>
						</span>
						</div>
					</div>
					<div class="order_type_div">
						<span class="order_type_value">下载量</span>
					</div>
				</div>

				<div class="order_center_div">
					<div class="order_center_value pull-right">center</div>
				</div>
				<div class="clearfix"></div>
			</div>

			<!--图片显示区域-->
			<div id="content">
				<div id="waterfall" isover="N">

					<!-- 
				<div class="card_div">
					<img src="static/img/无标题5.png">
					<div class="card_title_div text-left">
						<span class="card_title">标题1标题1标题1标题1标题1标题1标题1标题1标题1标题1标题1标题1标题1标题1标题1标题1</span>
					</div>
					<div class="card_info_div">
						<span class="pull-left img_author">作者</span> <span
							class="pull-right img_createdate">2018-04-15</span>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>  -->

				</div>
				<!-- <div class="clearfix"></div> -->
				<!--图片显示区域-->
				<div class="footer_loading_div">
					<div class="footer_loading_content_div">
						<span><i class="fa fa-spinner fa-pulse fa-2x fa-fw"></i></span>
						<span>加载中...</span>
					</div>
				</div>

			</div>
	</body>
	<script type="text/javascript">
		$(function() {
			ini();
			/* 点击图片或信息跳转至图片详情页 */
			$(document).on("click", ".simple_img,.card-title,.card-text", function() {
				console.log($(this).parents(".card_div").children(".img_div").children("img").attr("data-imgid"));

			})
			/* 注销按钮 */
			$(".exit_a").click(function() {
				if(confirm("真的要注销吗？")) {
					location.href = "exit";
				}
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
				orderUpAnimate($order_btn.find(".asc_div span"));
			})

			$(document).on("click", ".page_menu_div .page_up_span:not('.disabled')", function() {
				var key = $(".search_input").val();
				picListByKey("N", key, page, 28, orderType, orderValue);
			})
			$(document).on("click", ".page_menu_div .page_down_span:not('.disabled')", function() {
				downPageAnimate($("#waterfall"));
				/* picListByKey("Y"); */
			})

			$(document).on("click", ".desc_div.active span", function() {
				orderDonwAnimate($(this));
			})
			$(document).on("click", ".asc_div.active span", function() {
				orderUpAnimate($(this));
			})

			$(document).scroll(function() {
				if($("#waterfall").attr("isover") == "N") {
					var scrollTop = $(this).scrollTop();
					var height = $(document).height() - $(window).height();
					if(scrollTop >= height) {
						$(this).scrollTop(scrollTop - 5);
						picListByKey("N", "", "2", 0);
						/* $(".footer_loading_div").css("display","inline");  */
					}
				}
			});

			$(document).on("click", ".navbar_div.show .nav_link_btn_div", function() {
				closeNavbar("-");
			})
			$(document).on("click", ".navbar_div:not('.show') .nav_link_btn_div", function() {
				closeNavbar("+");
			})

		})
		/*初始化 */
		function ini() {
			if(${userId != null}) {
				$(".nav_menu.login_menu").css("display", "none");
				$(".nav_menu.user_menu").css("display", "block");
			} else {
				$(".nav_menu.user_menu").css("display", "none");
				$(".nav_menu.login_menu").css("display", "block");
			}
		}
		picListByKey("", "", "1", 28);

		function picListByKey(isIni, key, page, pageSize, orderType, orderValue) {
			$.ajax({
				url: "picList_key",
				data: {
					"key": key,
					"page": page,
					"pageSize": pageSize,
					"orderType": orderType,
					"orderValue": orderValue
				},
				dataType: "json",
				beforeSend: function() {
					if(isIni) {
						$("#waterfall").addClass("loading");
					}
				},
				success: function(json) {
					/* $("#waterfall .card_div").remove(); */
					var data=json.data;
					for(var i = 0; i < data.length; i++) {
						var row = data[i];
						$("#waterfall").append(cardHTML(row, i));
						/* i=getNextCardIndex(i,json.length);   */
					}
					console.log(json.total+","+json.totalPage);
				},
				complete: function(XMLHttpRequest, textStatus) {
					if(isIni) {
						$("#waterfall").removeClass("loading");
					}
					if(textStatus == "success" && XMLHttpRequest.responseJSON.length == 0) {
						showOver();
					}

				}

			})

		}

		function cardHTML(row, i) {
			var html = '<div class="card_div">' +
				'<img src="picture/' + row.pictures[0].pictureId + '/false">' +
				'<div class="card_title_div text-left">' +
				'<span class="card_title">' + row.pictures[0].pictureTitle + "_" + i + '</span>' +
				'</div>' +
				'<div class="card_info_div">' +
				'<span class="pull-left img_author">' + row.userName + '</span>' +
				'<span class="pull-right img_createdate">2018-04-15</span>' +
				'<div class="clearfix"></div>' +
				'</div></div>';
			return html;

		}

		function upPageAnimate($el) {
			disabledPageMenu(".page_menu_div .page_menu_span");
			var height = $el.height();
			$el.animate({
				top: height
			}, 1000, function() {
				$el.css("top", "-" + height + "px");
				/*显示加载动画*/
			})
			$("html,body").animate({
				scrollTop: 0
			}, 900);
			$el.animate({
				top: "0px"
			}, 1000, function() {
				abledPageMenu(".page_menu_div .page_menu_span");

			});
		}

		function downPageAnimate($el) {
			disabledPageMenu(".page_menu_div .page_menu_span");
			var height = $el.height();
			var height_2x = Number(height) * 2 + "px";
			var scrollDown_h = $(document).height() - $(window).height();
			$el.animate({
				top: "-" + height
			}, 1000, function() {
				$el.css("top", height_2x);

				$el.animate({
					top: "0px"
				}, 1000, function() {
					abledPageMenu(".page_menu_div .page_menu_span");

				});
				$("html,body").animate({
					scrollTop: 0
				}, 1000);
				/*显示加载动画*/
			})
			/* $("html,body").animate({scrollTop:scrollDown_h}, 900); */

		}

		function disabledPageMenu(name) {
			$(name).addClass("disabled");
		}

		function abledPageMenu(name) {
			$(name).removeClass("disabled");
		}

		function orderUpAnimate($el) {
			//获取到点击按钮的父类按钮块
			var $parent = $el.parent();
			//激活降序按钮
			$parent.siblings().eq(0).addClass("active");
			//执行上升动画
			$parent.parent().animate({
				top: "0em"
			}, 1000, function() {
				//完成后移除降序按钮的激活
				$parent.removeClass("active");
			});
		}

		function orderDonwAnimate($el) {
			var $parent = $el.parent();
			$parent.siblings().eq(0).addClass("active");
			$parent.parent().animate({
				top: "2em"
			}, 1000, function() {
				$parent.removeClass("active");
			});
		}

		function showOver() {
			/* $().animate({}) */
		}

		function closeNavbar(direction) {
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
	</script>

</html>