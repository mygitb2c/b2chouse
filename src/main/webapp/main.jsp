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
body{
	
}

.content_row {
	margin: 20px 0 20px 0;
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
/*.card_div:hover {
				color: #007bff;
				position: relative;
				top: -10px;
				box-shadow: 0px 10px 10px #888888;
			}*/
a, .fa-search, .card-img-top, .card-title, .card-text {
	cursor: pointer;
}

.card_div {
	/* margin: 0.25em;
	background: #FFFFFF; */
	margin: 0.25em;
	background: #FFFFFF;
	padding: 0.5em;
	border: 1px solid rgb(230, 230, 230);
}

.width_30 {
	width: 30%;
}

.card_img {
	max-width: 100%;
	max-height: 12em;
}

/*.card_div:hover,*/
.card-title, .card-text {
	/*自动隐藏文字*/
	overflow: hidden;
	/*文字隐藏后添加省略号*/
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-box-orient: vertical;
}

.card-text {
	/*文本限制在2行*/
	-webkit-line-clamp: 2;
	/*首行缩进*/
	text-indent: 2em;
}

.card-title {
	/*文本限制在1行*/
	-webkit-line-clamp: 1;
}

.back_a, .exit_a, .register_a, .userinfo_a, .login_a, .sharepic_a {
	margin-left: 25px;
	margin-right: 25px;
}

.exit_a {
	color: rgb(255, 100, 100);
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
	font-size: 1.5em;
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

.nav_menu{
	text-align: right;
	font-size:1.2em;
	line-height: 3.33em;
	padding-right: 6.7%;
}

a:hover{
	text-decoration: none;
}

.navbar_div {
	z-index: 1;
	background: rgb(242,242,242);
	width: 100%;
	height: 6em;
	top: 0;
	line-height: 6em;
	margin: 0px;
	padding: 1em 0px;
	border-bottom: 1px solid rgb(230, 230, 230);
	position: fixed;
}

.content {
	margin-left: 5%;
	margin-right: 5%;
	width: 90%;
	margin-top: 8em;
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
	width: 80%;
	margin-left: 10%;
	margin-right: 10%;
}
/*一个内容层*/
.item {
	padding: 1em;
	margin: 0 0 1em 0;
	/*防止子元素被切割*/
	-moz-page-break-inside: avoid;
	-webkit-column-break-inside: avoid;
	break-inside: avoid;
	border: 1px solid rgb(230,230,230);
	/* border-radius: 0.5em;
	border-bottom-left-radius: 0.5em;
	border-bottom-right-radius: 0.5em; 
	box-shadow: 0px 3px 3px rgba(150, 150, 150, 0.5);*/
	background: #fff;
}

.item img {
	width: 100%;
	margin-bottom: 10px;
	max-height: 12em;
}
</style>
</head>
<!---->

<body>

	<div class="row navbar_div">
		<div class="col-md-4 search_div">
			<div class="input_div form-inline">
				<input type="text" placeholder="搜索"
					class="form-control col-md-11 search_input" /> <i
					class="fa fa-search col-md-1"></i>
			</div>
		</div>
		<div class="col-md-8 nav_menu login_menu  ">
			<a class="register_a " href="register"> <i
				class="fa fa-registered"></i> 注册
			</a> <a class="login_a " href="login"> <i class="fa fa-map-marker "></i>
				登录
			</a>
		</div>
		<div class="col-md-8 nav_menu user_menu ">
			<a class="userinfo_a " href="my"> <i class="fa fa-user-o fa-fw"></i>
				我的
			</a> <a class="exit_a "> <i class="fa fa-power-off fa-fw"></i> 注销
			</a> <a class="sharepic_a " href="userinfo.html"> <i
				class="fa fa-share-alt fa-fw"></i> 发图
			</a>

		</div>

	</div>

	<div class="container-fluid content">

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
				<div class="item">
					<img src="static/img/无标题1.png">
				</div>

				<div class="item">
					<img src="static/img/无标题2.png">
					<p>2 convallis timestamp 2 Donec a fermentum nisi.</p>
				</div>

				<div class="item">
					<img src="static/img/无标题3.png">
					<p>3 Nullam eget lectus augue. Donec eu sem sit amet ligula
						faucibus suscipit. Suspendisse rutrum turpis quis nunc convallis
						quis aliquam mauris suscipit.</p>
				</div>

				<div class="item">
					<img src="static/img/无标题4.png">
					<p>4 Donec a fermentum nisi. Integer dolor est, commodo ut
						sagittis vitae, egestas at augue.</p>
				</div>

				<div class="item">
					<img src="static/img/无标题5.png">
					<p>5 Donec a fermentum nisi. Integer dolor est, commodo ut
						sagittis vitae, egestas at augue.</p>
				</div>
				<div class="item">
					<img src="static/img/无标题1.png">
					<p>1 convallis timestamp</p>
				</div>

				<div class="item">
					<img src="static/img/无标题2.png">
					<p>2 convallis timestamp 2 Donec a fermentum nisi.</p>
				</div>

				<div class="item">
					<img src="static/img/无标题3.png">
					<p>3 Nullam eget lectus augue. Donec eu sem sit amet ligula
						faucibus suscipit. Suspendisse rutrum turpis quis nunc convallis
						quis aliquam mauris suscipit.</p>
				</div>

				<div class="item">
					<img src="static/img/无标题4.png">
					<p>4 Donec a fermentum nisi. Integer dolor est, commodo ut
						sagittis vitae, egestas at augue.</p>
				</div>

				<div class="item">
					<img src="static/img/无标题5.png">
					<p>5 Donec a fermentum nisi. Integer dolor est, commodo ut
						sagittis vitae, egestas at augue.</p>
				</div>
				<div class="item">
					<img src="static/img/无标题1.png">
					<p>1 convallis timestamp</p>
				</div>

				<div class="item">
					<img src="static/img/无标题2.png">
					<p>2 convallis timestamp 2 Donec a fermentum nisi.</p>
				</div>

				<div class="item">
					<img src="static/img/无标题3.png">
					<p>3 Nullam eget lectus augue. Donec eu sem sit amet ligula
						faucibus suscipit. Suspendisse rutrum turpis quis nunc convallis
						quis aliquam mauris suscipit.</p>
				</div>

				<div class="item">
					<img src="static/img/无标题4.png">
					<p>4 Donec a fermentum nisi. Integer dolor est, commodo ut
						sagittis vitae, egestas at augue.</p>
				</div>

				<div class="item">
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
				center();
				
			}
			
			/*将所有的.card_div属性align修改为center*/
			function center() {
				$(".card_div").attr("align", "center");
			}
		
			/* $(".simple_img").hover(function(){
				$(".source_img").attr("src",$(this).attr("src"));
				$(".source_window").css("display","inline");
			}) */
	</script>

</html>