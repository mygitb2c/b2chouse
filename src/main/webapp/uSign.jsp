<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>注册/登录</title>
		<link rel="stylesheet" type="text/css" href="static/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="static/css/font-awesome.css" />
		<link rel="stylesheet" type="text/css" href="static/css/css_uSign.css" />
		<script src="static/js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/jquery.validate.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/tool.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/js_uSign.js" type="text/javascript" charset="utf-8"></script>
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
							<input type="text" name="email" id="email" class="form-control reg_data" />
							<i class="fa fa-check-circle" aria-hidden="true"></i>
						</div>
						<div class="form-inline form-group">
							<label class="row_name" for="userName">用户名：</label>
							<input type="text" name="userName" id="userName" class="form-control reg_data" />
							<i class="fa fa-check-circle" aria-hidden="true"></i>
						</div>
						<div class="form-inline form-group">
							<label class="row_name" for="password">密码：</label>
							<input type="password" name="password" id="password" class="form-control reg_data" />
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
		<div class="area_div login_area" id="login_area">
			<div class="win_div login_win">
				<div class="win_head_div">
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
		
	</script>

</html>