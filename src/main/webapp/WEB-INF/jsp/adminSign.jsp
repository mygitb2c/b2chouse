<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员入口</title>
		<link rel="stylesheet" type="text/css" href="../static/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="../static/css/font-awesome.css" />
		<script src="../static/js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<style type="text/css">
body{
background: #f5f5f5;}
.win_head_div {
	position: relative;
	border-top: 1px solid;
	margin-bottom: 2.5em;
}

.win_head_div.register_win {
	color: #0062CC;
	border-color: #0062CC;
}

.area_title_span {
	font-size: 1.7em;
	position: absolute;
	transform: translateY(-50%);
	background: #fff;
	padding: 0em 0.5em;
	color: inherit;
}
.login_area {
	    position: absolute;
    /* left: 0%; */
    width: 36%;
    left: 32%;
    /* padding: 0em 0.5em; */
    top: 50%;
    transform: translateY(-50%);
    /* border: 2px solid #fff; */
    box-shadow: 0px 0px 5px #333;
}

.login_win .win_head_div {
	    color: #336699;
    border-color: #336699;
}

.login_info_div {
	width: 80%;
	margin: 0em 10%;
	position: relative;
}

.info_row {
	margin: 2em;
}

.info_row>div {
	display: inline-block;
}

.input_div {
	padding: 0.3em 0.5em;
	/*border-radius: 0.25em;*/
	border: 1px solid;
	width: 100%;
	padding: 0.8em;
}


/*.input_div.active{
				border:1px solid #80bdff;	
				color: #80bdff;
			}*/

.input_div>input {
	outline: none;
	border: none;
	width: calc(100% - 3em);
	color: #212529;
	padding: 0em 0.5em;
}

button.login_btn {
	width: 100%;
	padding: 1em;
	color: #fff;
	background: #336699;
	outline: none;
	border: none;
	cursor: pointer;
}

.login_area .alert {
	position: absolute;
	width: 80%;
	margin: 0em 10%;
	height: 3em;
	top: 0em;
	z-index: -1;
}

.win_div {
	width: 100%;
	position: relative;
}

.win_content {}

.login_btn.disabled {
	background: #ced4da;
}

.login_tip_msg {
	/* -webkit-animation: login_msg 1.5s 2;
				-webkit-animation-direction: alternate; */
	animation: login_msg 1.5s 2;
	animation-direction: alternate;
}

@keyframes login_msg {
	from {
		top: 0em;
	}
	33% {
		top: -3em;
	}
	to {
		top: -3em;
	}
}

.login_win {
	padding: 2em 0em;
	background: #fff;
}

.title {
	color: #0062CC;
	font-size: large;
}
</style>
</head>
<body>
<div class="area_div login_area" id="login_area">
			<div class="win_div login_win">
				<div class="win_head_div">
					<span class="area_title_span">
					<i class="fa fa-sign-in"></i> 
					帐号登录
				</span>
					<!--<a class="title pull-right" href="login"><i class="fa fa-sign-in "></i> 去登录 </a>-->
					
				</span>
				</div>
				<div class="win_content login_info_div">
					<div class="info_row">
						<div class="input_div ">
							<span class="fa fa-envelope"></span>
							<input type="text" class="login_email" />
							<!--<span class="clearemail_span fa fa-times "></span>-->
						</div>
					</div>
					<div class="info_row">
						<div class="input_div ">
							<span class="fa fa-lock"></span>
							<input type="password" class="login_password" />
							<!--<span class="clearemail_span fa fa-times "></span>-->
						</div>
					</div>
					<div class="info_row text-center">
						<button class="login_btn">
							<span id="">
								登 录
							</span>
							<!--<i class="fa fa-spinner fa-pulse fa-fw"></i>-->
						</button>
					</div>
				</div>
				<div class="alert alert-danger">
					<span class="fa fa-exclamation-triangle">
					</span>
					<span class="alert_msg">
						用户信息不匹配
					</span>
				</div>
			</div>
		</div>
<script type="text/javascript">
var cp="${pageContext.request.contextPath}";
$(function(){
	$(document).on("click", ".login_area:not('.disabled') .login_btn", function() {
		login();

	})
	$(".login_area .alert-danger").on("webkitAnimationEnd mozAnimationEnd animationEnd", function() {
		$(this).removeClass("login_tip_msg");
	})
})
function login() {
	var email = $(".login_email").val();
	var password = $(".login_password").val();
	if(email.length == 0 || password.length == 0) {
		showLoginMsge("用户信息不能为空");
	} else {
		$.ajax({
			"url": cp+"/adminLogin",
			"data": {
				"email": email,
				"password": password
			},
			"dataType": "json",
			"success": function(result) {
				if(result) {
					location.href = cp+"/admin/";
				} else {
					showLoginMsge("用户信息不匹配");
				}
			}
		})
	}
}
function showLoginMsge(text) {
	var $el = $(".login_area .alert-danger");
	$el.find(".alert_msg").text(text);
	$el.addClass("login_tip_msg");
}
</script>
</body>
</html>