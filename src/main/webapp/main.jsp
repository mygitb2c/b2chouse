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
	margin: 0.25em;
	background: #FFFFFF;
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
.search_row {
	margin: 20px;
}

.search_input:focus {
	box-shadow: none;
	border: none;
}

.search_input {
	border: none;
}

.fa-search {
	padding: 0px;
}

.input_div {
	border-radius: 0.25em;
	border: 1px solid #868e96;
	padding: 2px 15px 2px 15px;
	background: white;
	width: 300px;
	margin-left: 20px;
}
/*搜索框样式*/
.navbar_div {
	text-align: right;
	margin: 10px;
}

a:hover {
	text-decoration: none;
}

.source_window {
	width: 100vw;
	position: absolute;
	display: none;
	float: left;
	z-index: 1;
}

.source_img_div {
	width: 100%;
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 1em;
}

.source_img {
	max-width: 100%;
}

.content {
	margin-left: 5%;
	margin-right: 5%;
	width: 90%;
}
</style>
</head>
<!---->

<body>
	<div class="source_window">
		<div class="source_img_div">
			<img data-imgid="csf" class="source_img" src="" />
		</div>
	</div>
	<div class="container-fluid content">
		<!--导航-->

		<div class="navbar_div  ">

			<div class="a_group agroup  col-md-12">
				<a class="register_a " href="register"> <i
					class="fa fa-registered"></i> 注册
				</a> <a class="login_a " href="login"> <i class="fa fa-map-marker "></i>
					登录
				</a>
			</div>
			<div class="a_group bgroup col-md-12">
				<a class="userinfo_a " href="my"> <i class="fa fa-user-o fa-fw"></i>
					我的
				</a> <a class="exit_a "> <i class="fa fa-power-off fa-fw"></i> 注销
				</a> <a class="sharepic_a " href="userinfo.html"> <i
					class="fa fa-share-alt fa-fw"></i> 发图
				</a>

			</div>

		</div>

		<!--导航-->
		<hr />
		<!--搜索框-->
		<div id="" class="search_row row">
			<div class="col-md-4"></div>
			<div class="col-md-4" align="center">
				<div class="input_div form-inline">
					<input type="text" placeholder="搜索"
						class="form-control col-md-11 search_input" /> <i
						class="fa fa-search col-md-1"></i>
				</div>
			</div>

			<div class="col-md-4"></div>
		</div>
		<!--搜索框-->

		<!--图片显示区域-->
		<div id="content_div">

			<div class="row content_row">
				<div class="col-md-4">
					<div class="card_div ">
						<div class="img_div">
							<img data-imgid="asd" class="card-img-top simple_img"
								src="static/img/萨尔茨卡默古特地区_10.jpg">
						</div>
						<div class="card-body">
							<h4 class="card-title">John DoeJohn DoeJohn DoeJohn DoeJohn
								DoeJohn DoeJohn DoeJohn DoeJohn DoeJohn DoeJohn DoeJohn DoeJohn
								DoeJohn DoeJohn DoeJohn DoeJohn DoeJohn DoeJohn Doe</h4>
							<p class="card-text">啊哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈啊啊哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈啊啊哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈啊啊哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈啊</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 ">
					<div class="card_div">
						<div class="img_div">
							<img data-imgid="bsc" class="card-img-top simple_img"
								src="static/img/萨尔茨卡默古特地区_11.jpg">
						</div>
						<div class="card-body">
							<h4 class="card-title">John Doe</h4>
							<p class="card-text">Some example text some example text.
								John Doe is an architect and engineer</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 ">
					<div class="card_div ">
						<div class="img_div">
							<img data-imgid="csf" class="card-img-top simple_img"
								src="static/img/萨尔茨卡默古特地区_12.jpg">
						</div>
						<div class="card-body">
							<h4 class="card-title">John Doe</h4>
							<p class="card-text">Some example text some example text.
								John Doe is an architect and engineer</p>
						</div>
					</div>
				</div>
			</div>

			<div class="row content_row">
				<div class="col-md-4 ">
					<div class="card_div">
						<div class="img_div">
							<img data-imgid="asd" class="card-img-top simple_img"
								src="static/img/萨尔茨卡默古特地区_13.jpg">
						</div>
						<div class="card-body">
							<h4 class="card-title">John DoeJohn DoeJohn DoeJohn DoeJohn
								DoeJohn DoeJohn DoeJohn DoeJohn DoeJohn DoeJohn DoeJohn DoeJohn
								DoeJohn DoeJohn DoeJohn DoeJohn DoeJohn DoeJohn Doe</h4>
							<p class="card-text">啊哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈啊啊哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈啊啊哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈啊啊哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈啊</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 ">
					<div class="card_div">
						<div class="img_div">
							<img data-imgid="bsc" class="card-img-top simple_img"
								src="static/img/萨尔茨卡默古特地区_14.jpg">
						</div>
						<div class="card-body">
							<h4 class="card-title">John Doe</h4>
							<p class="card-text">Some example text some example text.
								John Doe is an architect and engineer</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 ">
					<div class="card_div">
						<div class="img_div">
							<img data-imgid="csf" class="card-img-top simple_img"
								src="static/img/萨尔茨卡默古特地区_15.jpg">
						</div>
						<div class="card-body">
							<h4 class="card-title">John Doe</h4>
							<p class="card-text">Some example text some example text.
								John Doe is an architect and engineer</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--图片显示区域-->
		<div id="demo"></div>
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
				$(".a_group.agroup").css("display", "none");
				$(".a_group.bgroup").css("display","block");
				}else{
					$(".a_group.bgroup").css("display", "none");
					$(".a_group.agroup").css("display","block");
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