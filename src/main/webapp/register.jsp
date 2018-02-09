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
	</head>

	<body>
		<div class="container">
			<br />
			<div class="row clearfix">
				<div class="col-md-12 div_img_title " align="center">
					<img src="static/img/title.png" class="img-fluid rounded" />
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-3 column">

				</div>
				<div class="col-md-9 column">

					<div class="col-md-7">
						<label class="title"><i class="fa fa-envelope"></i> 邮箱号注册</label>
						<a class="title pull-right" href="login"><i class="fa fa-wheelchair-alt "></i> 去登录 </a>
						<hr />
					</div>
					<div class="col-md-2"></div>
					<div class="formdiv">
						<form action="userRegister" method="post" id="form_reg">
							<div class="form-inline form-group">
								<label class="col-md-2" for="email">邮箱：</label>
								<input type="text" name="email" id="email" class="form-control col-md-4" />
							</div>
							<div class="form-inline form-group">
								<label class="col-md-2" for="userName">用户名：</label>
								<input type="text" name="userName" id="userName" class="form-control col-md-4" />
							</div>
							<div class="form-inline form-group">
								<label class="col-md-2" for="password">密码：</label>
								<input type="password" name="password" id="password" class="form-control col-md-4" />
							</div>
							<div class="form-inline form-group">
								<label class="col-md-2" for="passwordRepeat">重复密码：</label>
								<input type="password" name="passwordRepeat" id="passwordRepeat" class="form-control col-md-4" />
							</div>
							<div class="form-inline form-group">
								<label class="col-md-2" for="checkedcode">验证码：</label>
								<input type="text" name="checkedcode" id="checkedcode" class="form-control col-md-2" />
								<div class="col-md-2">
									<div id="div_checkedcode" class="form-control">
										<span class="span_checkedcode form-control col-md-3">a</span>
										<span class="span_checkedcode form-control col-md-3">a</span>
										<span class="span_checkedcode form-control col-md-3">a</span>
										<span class="span_checkedcode form-control col-md-3">a</span>
										<input id="codes" type="hidden" />
									</div>
								</div>
							</div>
							<input type="submit" class="btn btn-block btn-primary btn-lg  col-md-6 btn_reg" value="注册" />
						</form>
					</div>
				</div>
			</div>
		</div>

	</body>

</html>