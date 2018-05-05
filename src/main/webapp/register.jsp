<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户注册</title>
		<link rel="stylesheet" type="text/css" href="static/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="static/css/font-awesome.css" />
		<link rel="stylesheet" type="text/css" href="static/css/css_register.css" />
		<script src="static/js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/jquery.validate.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/tool.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/js_register.js" type="text/javascript" charset="utf-8"></script>
		<style type="text/css">
			body {
				height: 100vh;
				width: 90%;
				margin: 0em 5%;
			}
			
			.register_area.disabled {
				-webkit-filter: grayscale(100%);
				filter: grayscale(100%);
				width: 30%;
				opacity: 0.5;
			}
			
			.area_div {
				position: absolute;
				padding: 2em 0.5em;
				background: #fff;
			}
			
			.register_area {
				width: 40%;
				/*left:0%;*/
			}
			
			input.error,
			input.error:focus {
				border-color: red;
			}
			
			.fa-check-circle,
			.register_area_div label.error {
				position: absolute;
				left: 100%;
				white-space: nowrap;
			}
			
			#form_reg {
				position: relative;
				width: 75%;
				margin: 0em 12.5%;
				
			}
			
			.disabled #form_reg {
				display: none;
			}
			
			.btn_reg {
				padding: 0.3em 5em;
				outline: none;
				border: none;
				background: #004085;
				color: #fff;
				border-radius: 0.25em;
			}
			
			.fa-check-circle {
				display: none;
				color: green;
				margin-left: 5px
			}
			
			input.valid+.fa-check-circle {
				display: inline
			}
			#form_reg .fa-check-circle, #form_reg label.error{
				position: absolute;
  			  	left: 100%;
   				white-space: nowrap;
			}
			
			#form_reg>div {
				margin: 2em 0em;
			}
			
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
			
			.row_name {
				width: 8em;
				padding: 0em 1em;
				white-space: nowrap;
				text-align: center;
			}
			
			.row_name~input.form-control:not(#checkedcode) {
				width: calc(100% - 8em);
			}
			
			#checkedcode {
				width: calc(100% - 15em);
			}
			
			#div_checkedcode {
				white-space: nowrap;
				width: 6.5em;
				margin-left: 0.5em;
			}
			
			.area_trun_span {
				right: 0em;
				transform: translateY(-100%);
				padding: 0.3em 0em;
				position: absolute;
			}
			
			.login_area {
				position: absolute;
				/*left: 0%;*/
				width: 35%;
				right: 5%;
			}
			
			.win_head_div.login_win {
				color: #00B271;
				border-color: #00B271;
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
			/*.input_div>input~span.fa{
				color: inherit;
			}
			.clearemail_span{
				cursor: pointer;
			}*/
			
			button.login_btn {
				width: 100%;
				padding: 1em;
				color: #fff;
				background: #00B271;
				outline: none;
				border: none;
			}
			
			.login_area .alert {
				position: absolute;
				width: 80%;
				margin: 0em 10%;
				height: 3em;
				top: -2em;
				z-index: -1;
			}
			
			.win_div {
				width: 100%;
				position: relative;
			}
			
			.win_content {
				
			}
			
			.login_btn.disabled {
				background: #ced4da;
			}
			
			.login_tip_msg{
				/* -webkit-animation: login_msg 1.5s 2;
				-webkit-animation-direction: alternate; */
				animation: login_msg 1.5s 2;
				animation-direction: alternate;
			}
			@keyframes login_msg{
				from {top:-2em; }
				33%{top:-5em;}
				to{top:-5em;}
			}
			.register_area{
				display: none;
			}
		</style>
	</head>

	<body>
		<div id="register_area" class="area_div register_area ">
			<div class="win_div">
				<div class="win_head_div register_win">
					<span class="area_title_span">
					<i class="fa fa-envelope"></i> 
					邮箱号注册
				</span>
					<!--<a class="title pull-right" href="login"><i class="fa fa-sign-in "></i> 去登录 </a>-->
					<span class="area_trun_span">
					<i class="fa fa-sign-in"></i>
					登录？
				</span>
				</div>
				<div class="win_content">
					<form action="userRegister" method="post" id="form_reg" class="text-center">
						<div class="form-inline form-group">
							<label class="row_name" for="email">邮箱：</label>
							<input type="text" name="email" id="email" class="form-control " />
							<i class="fa fa-check-circle" aria-hidden="true"></i>
						</div>
						<div class="form-inline form-group">
							<label class="row_name" for="userName">用户名：</label>
							<input type="text" name="userName" id="userName" class="form-control " />
							<i class="fa fa-check-circle" aria-hidden="true"></i>
						</div>
						<div class="form-inline form-group">
							<label class="row_name" for="password">密码：</label>
							<input type="password" name="password" id="password" class="form-control " />
							<i class="fa fa-check-circle" aria-hidden="true"></i>
						</div>
						<div class="form-inline form-group">
							<label class="row_name" for="passwordRepeat">重复密码：</label>
							<input type="password" name="passwordRepeat" id="passwordRepeat" class="form-control " />
							<i class="fa fa-check-circle" aria-hidden="true"></i>
						</div>
						<div class="form-inline form-group">
							<label class="row_name" for="checkedcode">验证码：</label>
							<input type="text" name="checkedcode" id="checkedcode" class="form-control" />
							<i class="fa fa-check-circle" aria-hidden="true"></i>
							<div id="div_checkedcode" class="form-control">
								<span class="span_checkedcode form-control col-md-3">a</span>
								<span class="span_checkedcode form-control col-md-3">a</span>
								<span class="span_checkedcode form-control col-md-3">a</span>
								<span class="span_checkedcode form-control col-md-3">a</span>
								<input id="codes" type="hidden" />
							</div>
						</div>
						<input type="submit" class="btn_reg" value="注 册" />
					</form>
				</div>
			</div>
		</div>
		<div class="area_div login_area">
			<div class="win_div">
				<div class="win_head_div login_win">
					<span class="area_title_span">
					<i class="fa fa-sign-in"></i> 
					帐号登录
				</span>
					<!--<a class="title pull-right" href="login"><i class="fa fa-sign-in "></i> 去登录 </a>-->
					<span class="area_trun_span">
					<i class="fa fa-envelope"></i>
					注册？
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
	</body>
	<script type="text/javascript">
		$(function() {
			/* $(".register_area_div").animate({
				height: "0",
				left:"195"
			}, 500,function(){
				$(this).css("display","none");
			}) */
			$(".input_div>input").focus(function() {
				$(this).parent().addClass("active");
				/*$(this).next().css("display","inline-block")*/
			})
			$(".input_div>input").blur(function() {
				$(this).parent().removeClass("active");
				/*$(this).next().css("display","none")*/
			})
			$(".clearemail_span").click(function() {
				$(this).prev().focus();
				$(this).prev().val("");
			})
			$(".area_trun_span").click(function() {
				closeArea($(this).parents(".area_div"));
			})

			$(".login_btn").click(function() {
				/* $(this).addClass("disabled"); */
				$(".login_area .alert-danger").addClass("login_tip_msg");
				/* $.when(showAlertMsg()).then($(this).removeClass("disabled")) */
			})
			$(".login_area .alert-danger").on("webkitAnimationEnd mozAnimationEnd animationEnd",function(){
				$(this).removeClass("login_tip_msg");
			})
		})
		getCenterPosition($(".register_area"));
		getCenterPosition($(".login_area"));

		function getCenterPosition($el) {
			var y = $el.height() / 2;
			var x = $el.width() / 2;
			$el.css({
				"top": "calc(50% - " + y + "px)"
				/*,
								"left": "calc(50% - " + x + "px)"*/
			});
		}

		function closeArea($el) {
			$el.find(".win_content").animate({
				height: "0px"
			}, 1000)
			$el.animate({
				fontSize: "0.8em",
				width: "20%",
				left: "0%"
			}, 1000)
		}

		/* function showAlertMsg() {
			$el = $(".login_area .alert");
			$el.css("display", "inline");
			$el.animate({
				top: "-5em"
			}, 1000)
			$el.animate({
				top: "-5em"
			}, 1000)
			$el.animate({
				top: "-1em"
			}, 500, function() {
				$el.css("display", "none");
			})
		} */
	</script>

</html>