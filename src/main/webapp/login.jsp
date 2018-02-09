<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>登录</title>
		<link rel="stylesheet" type="text/css" href="static/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="static/css/font-awesome.css" />
		<link rel="stylesheet" type="text/css" href="static/css/buttons.css" />
		<link rel="stylesheet" type="text/css" href="static/css/css_login.css" />
		<script src="static/js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/popper.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body><br />
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<img src="static/img/title.png" class="img-fluid rounded" />
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-12 column">
					<hr />
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-8 column">
					<img src="static/img/poster.png" class="img-fluid rounded" />
				</div>
				<div class="col-md-4 column div_info" align="center">
					<div class="col-md-12">
						<div class="div_email form-inline form-group col-md-12">
							<i class="fa fa-user-o "></i>
							<input type="text" name="email" id="email" class="form-control" />
							<i class="fa fa-star-o rember" data-placement="right" data-toggle="popover" data-content="保存账号"></i>
						</div>
						<div class="div_password form-inline form-group col-md-12">
							<i class="fa fa-lock"></i>
							<input type="password" name="password" id="password" class="form-control" />
							<i class="fa fa-eye-slash isshowkey"></i>
						</div>
					</div>
					<br />
					<input type="button" name="" id="btn_login" value="登 录" class="button  button-primary button-rounded" />

					<hr />
					<div class="div_info_footer ">
						<a class="pull-left resetkey">忘记密码？ <i class="fa fa-reply" aria-hidden="true"></i></a>
						<a href="register" class="pull-right"><i class="fa fa-reply fa-flip-horizontal"></i> 去注册 </a>
					</div>
				</div>
			</div>
		</div>

	</body>
	<script type="text/javascript">
		$(function() {
			$('[data-toggle="popover"]').popover();
			/*$(document).on("click", ".fa-eye-slash", function() {
				$(this).removeClass("fa-eye-slash");
				$(this).addClass("fa-eye")
				$("#password").attr("type", "text");
			})
			$(document).on("click", ".fa-eye", function() {
				$(this).removeClass("fa-eye");
				$(this).addClass("fa-eye-slash");
				$("#password").attr("type", "password");
			})*/
			$(".isshowkey").click(function() {
				$(this).toggleClass("fa-eye");
				$(this).toggleClass("fa-eye-slash");
			});

			$(".rember").click(function() {
				$(this).toggleClass("fa-star-o");
				$(this).toggleClass("fa-star");
			})
			$(".resetkey").click(function  () {
				alert("该功能暂未实现");
			})
			
			$("#btn_login").click(function  () {
				var email=$("#email").val();
				var password=$("#password").val();
				if(email.trim()==""||password.trim()=="")
				{
					alert("用户名或密码不能为空！");
					return;
				}
				$.post("userLogin",{"email":email,"password":password},function(data,status){
					if(data=="N")
					{
						alert("登录成功!");
					}else if(data=="Y"){
						alert("帐号被锁定!");
					}else {
						alert("用户信息不匹配");
					}
				})
			})
		})
	</script>

</html>