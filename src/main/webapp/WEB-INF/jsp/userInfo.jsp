<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${user.userName}的主页</title>
		<link rel="stylesheet" type="text/css" href="static/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="static/css/font-awesome.css" />
		<link rel="stylesheet" type="text/css" href="static/css/buttons.css" />
		<script src="static/js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/popper.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<style type="text/css">
			.userName_h2 {
				margin: 10px 0 20px 0;
			}
			
			.mypic_div {
				height: 250px;
				margin: 10px;
				background: transparent;
				cursor: pointer;
				background-position-x: center;
				background-position-y: center;	
				background-repeat:no-repeat;
			}
			
			.card,
			body {
				padding-bottom: 30px;
			}
		</style>
	</head>

	<body>
		<div id="mainlink_div">
			<a href="#" class="nav-link">首页</a>
		</div>
		<div class="container card">

			<h2 class="userName_h2"><i class="fa fa-at "> </i>${user.userName}</h2>
			<!-- Nav pills -->
			<ul class="nav nav-pills" role="tablist">
				<li class="nav-item">
					<a class="nav-link active" data-toggle="pill" href="#home"> 主 页</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="pill" href="#menu1"> 相 册</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="pill" href="#menu2">收 藏</a>
				</li>
			</ul>

			<!-- Tab panes -->
			<div class="tab-content">

				<!--个人主页-->
				<div id="home" class="container tab-pane active"><br>
					<h3>个人信息</h3>
					<a data-parent="#home" href="#changepwd_div" id="changepwd_a" class="button button-raised button-royal" data-toggle="collapse">密码修改</a>
					<div id="changepwd_div" class="collapse" align="center">
						<div class="col-md-4">

							<button class="button button-raised button-action" id="pwdcomit_btn">修改</button>
						</div>
					</div>
					
				</div>

				<!--个人相册-->
				<div id="menu1" class="container tab-pane fade"><br>
					<div class="container">
						<div>
							<div class="mypic_div card " data-imgid="1"></div>
							<div class="mypic_div card " data-imgid="2"></div>
							<div class="mypic_div card " data-imgid="3"></div>
							<div class="mypic_div card " data-imgid="4"></div>
							<div class="mypic_div card " data-imgid="5"></div>
						</div>
					</div>
				</div>

				<!--个人收藏-->
				<div id="menu2" class="container tab-pane fade"><br>
					<p>
						该功能暂未完成
					</p>
					
				</div>

			</div>
		</div>
	</body>

	<script type="text/javascript">
		$(function() {
			getMyPic();

			function getMyPic() {
				for(var i = 1; i <= $(".mypic_div").length; i++) {
					$(".mypic_div").eq(i - 1).css("background-image", "url(static/img/无标题" + i + ".png)")					
				}
			}
			$(document).on("click", ".mypic_div", function() {
				alert($(this).attr("data-imgid"));
			})

		})
	</script>

</html>