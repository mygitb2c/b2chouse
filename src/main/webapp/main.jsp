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
	height: 300px;
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

.card_div:hover {
	color: #007bff;
	position: relative;
	top: -10px;
	box-shadow: 0px 10px 10px #888888;
}

.fa-search, .card-img-top, .card-title, .card-text {
	cursor: pointer;
}

.card_div {
	padding: 15px;
}

.card_div:hover, .card-title, .card-text {
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
/*搜索框样式*/
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
	padding: 8px 15px 8px 15px;
	margin-bottom: 20px;
}
/*搜索框样式*/
</style>
</head>

<body>
	<div class="container">
		<!--导航-->
		<nav class="navbar navbar-expand-md bg-light justify-content-center">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link register_a"
				href="register"> <i class="fa fa-registered"></i> 注册
			</a></li>
			<li class="nav-item"><a class="nav-link login_a"
				href="login">登录</a></li>
			<li class="nav-item"><a class="nav-link userinfo_a"
				href="userinfo.html">我的</a></li>
		</ul>
		</nav>
		<!--导航-->
		<hr />
		<!--搜索框-->
		<div id="" class="heard_div row">
			<div class="col-md-4"></div>
			<div class="col-md-4 ">
				<div class="input_div form-inline">
					<input type="text" id="" placeholder="搜索"
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
				<div class="col-md-4 card_div">
					<div class="img_div">
						<img class="card-img-top simple_img" src="static/img/无标题3.png">
					</div>
					<div class="card-body">
						<h4 class="card-title">John DoeJohn DoeJohn DoeJohn DoeJohn
							DoeJohn DoeJohn DoeJohn DoeJohn DoeJohn DoeJohn DoeJohn DoeJohn
							DoeJohn DoeJohn DoeJohn DoeJohn DoeJohn DoeJohn Doe</h4>
						<p class="card-text">啊哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈啊啊哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈啊啊哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈啊啊哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈啊哈哈哈哈哈哈哈啊</p>
					</div>
				</div>
				<div class="col-md-4 card_div">
					<div class="img_div">
						<img class="card-img-top simple_img" src="static/img/无标题.png">
					</div>
					<div class="card-body">
						<h4 class="card-title">John Doe</h4>
						<p class="card-text">Some example text some example text. John
							Doe is an architect and engineer</p>
					</div>
				</div>
				<div class="col-md-4 card_div">
					<div class="img_div">
						<img class="card-img-top simple_img" src="static/img/无标题2.png">
					</div>
					<div class="card-body">
						<h4 class="card-title">John Doe</h4>
						<p class="card-text">Some example text some example text. John
							Doe is an architect and engineer</p>
					</div>
				</div>
			</div>
		</div>
		<!--图片显示区域-->
	</div>
</body>
<script type="text/javascript">
	$(function() {
		center();
		/*将所有的.card_div属性align修改为center*/
		function center() {
			$(".card_div").attr("align", "center");
		}
	})
</script>

</html>