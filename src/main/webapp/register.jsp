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
			.register_area_div {
				width: 35%;
				position: absolute;
				top: calc(50% - 195px);
				padding: 0.5em;
			/* 	height: 0px;
				opacity: 0; */
			}
			input.error{
				border-color:red;
			}

			.fa-check-circle,
			.register_area_div label.error {
				position: absolute;
				left: 100%;
				white-space: nowrap;
			}
			
			#form_reg {
				position: relative;
			}
			
			.btn_reg {
				padding: 0.3em 5em;
				outline: none;
				border: none;
				background: #004085;
				color: #fff;
				border-radius: 0.25em;
			}
			.fa-check-circle{
				display:none;
				color:green;
				margin-left: 5px
			}
			input.valid+.fa-check-circle{
				display:inline
			}
		</style>
	</head>

	<body>
		<div class="register_area_div">
			<div class="">
				<label class="title"><i class="fa fa-envelope"></i> 邮箱号注册</label>
				<a class="title pull-right" href="login"><i class="fa fa-wheelchair-alt "></i> 去登录 </a>
				<hr />
			</div>
			<form action="userRegister" method="post" id="form_reg" class="text-center">
				<div class="form-inline form-group">
					<label class="col-md-4" for="email">邮箱：</label>
					<input type="text" name="email" id="email" class="form-control col-md-8" />
					<i class="fa fa-check-circle" aria-hidden="true"></i>
				</div>
				<div class="form-inline form-group">
					<label class="col-md-4" for="userName">用户名：</label>
					<input type="text" name="userName" id="userName" class="form-control col-md-8" />
				</div>
				<div class="form-inline form-group">
					<label class="col-md-4" for="password">密码：</label>
					<input type="password" name="password" id="password" class="form-control col-md-8" />
				</div>
				<div class="form-inline form-group">
					<label class="col-md-4" for="passwordRepeat">重复密码：</label>
					<input type="password" name="passwordRepeat" id="passwordRepeat" class="form-control col-md-8" />
				</div>
				<div class="form-inline form-group">
					<label class="col-md-4" for="checkedcode">验证码：</label>
					<input type="text" name="checkedcode" id="checkedcode" class="form-control col-md-4" />
					<div class="col-md-4">
						<div id="div_checkedcode" class="form-control">
							<span class="span_checkedcode form-control col-md-3">a</span>
							<span class="span_checkedcode form-control col-md-3">a</span>
							<span class="span_checkedcode form-control col-md-3">a</span>
							<span class="span_checkedcode form-control col-md-3">a</span>
							<input id="codes" type="hidden" />
						</div>
					</div>
				</div>
				<input type="submit" class="btn_reg" value="注 册" />
			</form>
		</div>
		<div class="login_area_div"></div>
	</body>
	<script type="text/javascript">
		$(function() {
			/* $(".register_area_div").animate({
				height: "0",
				left:"195"
			}, 500,function(){
				$(this).css("display","none");
			}) */
		})
	</script>

</html>