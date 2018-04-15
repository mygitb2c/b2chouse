<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link rel="stylesheet" type="text/css" href="static/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="static/css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="static/css/buttons.css" />
<script src="static/js/jquery-3.2.1.js" type="text/javascript"
	charset="utf-8"></script>
<script src="static/js/popper.js" type="text/javascript" charset="utf-8"></script>
<script src="static/js/bootstrap.js" type="text/javascript"
	charset="utf-8"></script>
<style type="text/css">
body {
	background: rgb(242, 242, 242);
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

a, .fa-search, .card-img-top, .card-title, .card-text {
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
	z-index: 1;
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

.content {
	margin: 6em 10% 6em 10%;
	width: 80%;
}

#content_div {
	overflow: hidden;
}

.page_area_div {
	position: fixed;
	right: 0;
	top: 30%;
	width: 10%;
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
}

/*瀑布流  */
.waterfall {
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
}
/*一个内容层*/
.card_div {
	padding: 1em;
	margin: 0 0 1em 0;
	/*防止子元素被切割*/
	-moz-page-break-inside: avoid;
	-webkit-column-break-inside: avoid;
	break-inside: avoid;
	border: 1px solid rgb(230, 230, 230);
	/* border-radius: 0.5em;
	border-bottom-left-radius: 0.5em;
	border-bottom-right-radius: 0.5em; 
	box-shadow: 0px 3px 3px rgba(150, 150, 150, 0.5);*/
	background: #fff;
	text-align: center;
	font-size: 12px;
}

.card_div:hover {
	border-color: rgb(213, 233, 161);
	opacity: 0.8;
}

.card_div img {
	max-width: 100%;
	max-height: 20em;
}

.card_title_div {
	padding: 0.5em 0em;
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
.order_col_div.active{
	color: #007bff;
}

.order_desc_div, .order_asc_div {
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
.order_col_div.active{
	
}

.order_type_div {
	width: 100%;
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	z-index: 1;
	background: rgb(242, 242, 242);
	line-height: 2em;
}

.order_col_div:not(.active) .order_type_value {
	cursor: pointer;
}

.order_col_div.active  .order_type_value{
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
}

.order_col_div:not(.active ) .order_btn_span {
	display: none;
}

.order_btn_span {
	padding: 0.1em 0.5em;
	cursor: pointer;
	display: none;
}

.order_btn_span.active {
	display: inline;
}
/*排序菜单栏*/


</style>
</head>
<!---->

<body>

	<div class="row navbar_div">
		<div class="col-md-4 search_div">
			<div class="input_div form-inline">
				<input type="text" placeholder="搜索"
					class="form-control col-md-11 search_input" /> <i
					class="fa fa-search fa-lg col-md-1"></i>
			</div>
		</div>
		<div class="col-md-4 logo_div">
			<span class="logo_value">Share Picture</span>
		</div>
		<div class="col-md-4 nav_menu login_menu  ">
			<a class="register_a " href="register"> <i
				class="fa fa-registered fa-lg"></i> 注册
			</a> <a class="login_a " href="login"> <i
				class="fa fa-map-marker fa-lg"></i> 登录
			</a>
		</div>
		<div class="col-md-4 nav_menu user_menu ">
			<a class="userinfo_a " href="my"> <i
				class="fa fa-user-o fa-fw fa-lg"></i> 我的
			</a> <a class="exit_a "> <i class="fa fa-sign-out fa-fw fa-lg"></i>
				注销
			</a> <a class="sharepic_a " href="userinfo.html"> <i
				class="fa fa-share-alt fa-fw fa-lg"></i> 发图
			</a>
		</div>
	</div>
	<div class="page_area_div">
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
	</div>

<style type="text/css">

</style>

	<div class="content">
		<div class="order_menu_div">
			<div class="order_col_div active">
				<div class="order_btn_div">
					<div class="order_btn_part_div desc_div ">
						<span class="order_btn_span active"> <i
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
					<span class="order_type_value active">热度</span>
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
					<span class="order_type_value">点击量</span>
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
		<div id="content_div">

			<!-- <div class="width_30 pull-left card_div" align="center">
				<div></div>
				<div class="card_content_div">
					<div class="card_img_div">
						<img src="static/img/无标题3.png" class="card_img">
					</div>
					<div class="card_info_div">
						<div class="img_title_div">
							图片标题1
						</div>
						<div class="">
						
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div> -->
			<div class="waterfall">
				<div class="card_div">
					<img src="static/img/无标题1.png">
					<div class="card_title_div text-left">
						<span class="card_title">标题1标题1标题1标题1标题1标题1标题1标题1标题1标题1标题1标题1标题1标题1标题1标题1</span>
					</div>
					<div class="card_info_div">
						<span class="pull-left img_author">作者</span> <span
							class="pull-right img_createdate">2018-04-15</span>
						<div class="clearfix"></div>
					</div>
				</div>

				<div class="card_div">
					<img src="static/img/无标题2.png">
					<p>2 convallis timestamp 2 Donec a fermentum nisi.</p>
				</div>

				<div class="card_div">
					<img src="static/img/无标题3.png">
					<p>3 Nullam eget lectus augue. Donec eu sem sit amet ligula
						faucibus suscipit. Suspendisse rutrum turpis quis nunc convallis
						quis aliquam mauris suscipit.</p>
				</div>

				<div class="card_div">
					<img src="static/img/无标题4.png">
					<p>4 Donec a fermentum nisi. Integer dolor est, commodo ut
						sagittis vitae, egestas at augue.</p>
				</div>

				<div class="card_div">
					<img src="static/img/无标题5.png">
					<p>5 Donec a fermentum nisi. Integer dolor est, commodo ut
						sagittis vitae, egestas at augue.</p>
				</div>
				<div class="card_div">
					<img src="static/img/无标题1.png">
					<p>1 convallis timestamp</p>
				</div>

				<div class="card_div">
					<img src="static/img/无标题2.png">
					<p>2 convallis timestamp 2 Donec a fermentum nisi.</p>
				</div>

				<div class="card_div">
					<img src="static/img/无标题3.png">
					<p>3 Nullam eget lectus augue. Donec eu sem sit amet ligula
						faucibus suscipit. Suspendisse rutrum turpis quis nunc convallis
						quis aliquam mauris suscipit.</p>
				</div>

				<div class="card_div">
					<img src="static/img/无标题4.png">
					<p>4 Donec a fermentum nisi. Integer dolor est, commodo ut
						sagittis vitae, egestas at augue.</p>
				</div>

				<div class="card_div">
					<img src="static/img/无标题5.png">
					<p>5 Donec a fermentum nisi. Integer dolor est, commodo ut
						sagittis vitae, egestas at augue.</p>
				</div>
				<div class="card_div">
					<img src="static/img/无标题1.png">
					<p>1 convallis timestamp</p>
				</div>

				<div class="card_div">
					<img src="static/img/无标题2.png">
					<p>2 convallis timestamp 2 Donec a fermentum nisi.</p>
				</div>

				<div class="card_div">
					<img src="static/img/无标题3.png">
					<p>3 Nullam eget lectus augue. Donec eu sem sit amet ligula
						faucibus suscipit. Suspendisse rutrum turpis quis nunc convallis
						quis aliquam mauris suscipit.</p>
				</div>

				<div class="card_div">
					<img src="static/img/无标题4.png">
					<p>4 Donec a fermentum nisi. Integer dolor est, commodo ut
						sagittis vitae, egestas at augue.</p>
				</div>

				<div class="card_div">
					<img src="static/img/无标题5.png">
					<p>5 Donec a fermentum nisi. Integer dolor est, commodo ut
						sagittis vitae, egestas at augue.</p>
				</div>
			</div>

		</div>
		<!--图片显示区域-->



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
			$(".exit_a").click(function(){
				if(confirm("真的要注销吗？")){
					location.href="exit";
				}
			})
			
			$(document).on("click",".order_col_div:not('.active')",function(){
				$(".order_col_div,.order_btn_span").removeClass("active");
				$(this).addClass("active");
				var $order_btn=$(this).find(".order_btn_div");
				$order_btn.css("top","2em");
				orderUpAnimate($order_btn.find(".asc_div span"));
			})
			
			
			$(document).on("click",".page_menu_div .page_up_span:not('.disabled')",function(){
				upPageAnimate($(".waterfall"));
			})
			$(document).on("click",".page_menu_div .page_down_span:not('.disabled')",function(){
				downPageAnimate($(".waterfall"));
			})
						
			$(document).on("click",".desc_div span.active",function(){
				orderDonwAnimate($(this));
			})
			$(document).on("click",".asc_div span.active",function(){
				orderUpAnimate($(this));
			})
			
			
		})
			/*初始化 */
			function ini() {
				if(${userId!=null})
				{
				$(".nav_menu.login_menu").css("display", "none");
				$(".nav_menu.user_menu").css("display","block");
				}else{
					$(".nav_menu.user_menu").css("display", "none");
					$(".nav_menu.login_menu").css("display","block");
				}

				
			}
	
		
		
		function upPageAnimate($el){
			disabledPageMenu(".page_menu_div .page_menu_span");
			var height=$el.height();
		 	$el.animate({top:height},1000,function(){
				$el.css("top","-"+height+"px");
				/*显示加载动画*/
			})
			$("html,body").animate({scrollTop:0}, 900);
			$el.animate({top:"0px"},1000,function(){
				abledPageMenu(".page_menu_div .page_menu_span");
				
			}); 
		}
		
		function downPageAnimate($el){
			disabledPageMenu(".page_menu_div .page_menu_span");
			var height=$el.height();
			var height_2x=Number(height)*2+"px";
			var scrollDown_h=$(document).height()-$(window).height();
			$el.animate({top:"-"+height},1000,function(){
				$el.css("top",height_2x);

				$el.animate({top:"0px"},1000,function(){
					abledPageMenu(".page_menu_div .page_menu_span");
					
				});	
				$("html,body").animate({scrollTop:0}, 1000);
				/*显示加载动画*/
			})
			/* $("html,body").animate({scrollTop:scrollDown_h}, 900); */
			
			
		}	
		
		function disabledPageMenu(name){
			$(name).addClass("disabled");
		}
		
		function abledPageMenu(name){
			$(name).removeClass("disabled");
		}
		

		function orderUpAnimate($el){
			var $parent=$el.parents(".order_btn_div")
			$parent.find(".order_btn_span").eq(0).addClass("active");
			$parent.animate({
				top:"0em"
			},1000,function(){
				$el.removeClass("active");
			});
			
		}
		function orderDonwAnimate($el){
			var $parent=$el.parents(".order_btn_div")
			$parent.find(".order_btn_span").eq(1).addClass("active");
			$parent.animate({
				top:"2em"
			},1000,function(){
				$el.removeClass("active");
			});			
		}
		
		
	</script>

</html>