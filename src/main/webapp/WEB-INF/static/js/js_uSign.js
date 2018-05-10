$(function() {
	getCenterPosition($(".register_area"));
	getCenterPosition($(".login_area"));
	getAction();
	getCheckedCode();

	$.validator.setDefaults({
		submitHandler: function() {
			alert("提交");
		}
	})
	/*表单验证*/
	$("#form_reg").validate({
		errorPlacement: function(error, element) { //错误信息位置设置方法
			error.appendTo(element.parent()); //这里的element是录入数据的对象
		},
		rules: {
			email: {
				no_null: ["邮箱"],
				rex_checked: [/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/, "请输入正确的邮箱地址"],
				isrepeat: ["邮箱"]
			},
			userName: {
				no_null: ["用户名"],
				rex_checked: [/^[\u4E00-\u9FA5A-Za-z0-9]+$/, "用户名不能包含特殊字符"],
				length_limit: [3, 6, "用户名"],
				isrepeat: ["用户名"]
			},
			password: {
				no_null: ["密码"],
				length_limit: [6, 16, "密码"]
			},
			passwordRepeat: {
				no_null: ["密码"],
				length_limit: [6, 16, "密码"],
				equalTo: "#password"
			},
			checkedcode: {
				no_null: ["验证码"],
				equalTo: "#codes"
			}
		},
		messages: {
			passwordRepeat: {
				equalTo: "<i class=\"fa fa-exclamation-circle\"> 密码不一致</i>"
			},
			checkedcode: {
				equalTo: "<i class=\"fa fa-exclamation-circle\"> 验证码不正确</i>"
			}
		}
	})
	/*刷新验证码*/
	$("#div_checkedcode").click(function() {
		getCheckedCode();
	})

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
		$(".area_div").addClass("disabled");
		$(this).parents(".area_div").siblings().removeClass("disabled");
	})

	$(document).on("click", ".login_area:not('.disabled') .login_btn", function() {
		login();

	})
	$(".login_area .alert-danger").on("webkitAnimationEnd mozAnimationEnd animationEnd", function() {
		$(this).removeClass("login_tip_msg");
	})
	$(document).on("focus", ".area_div input", function() {
		$(".area_div").addClass("disabled");
		$(this).parents(".area_div").removeClass("disabled")
	})

})

function getAction() {
	var strs = window.location.pathname.split("/");
	var action = strs[strs.length - 1];
	$(".area_div").addClass("disabled");
	$("#" + action + "_area").removeClass("disabled");
}

function getCenterPosition($el) {
	var y = $el.height() / 2;
	var x = $el.width() / 2;
	$el.css({
		"top": "calc(50% - " + y + "px)"
	});
}

function login() {
	var email = $(".login_email").val();
	var password = $(".login_password").val();
	if(email.length == 0 || password.length == 0) {
		showLoginMsge("用户信息不能为空");
	} else {
		$.ajax({
			"url": "userLogin",
			"data": {
				"email": email,
				"password": password
			},
			"dataType": "json",
			"success": function(result) {
				if(result) {
					/* showLoginMsge("登录成功"); */
					location.href = "main";
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
/*获取验证码*/
function getCheckedCode() {
	var $code;
	var radom = 0;
	var codes = "";
	for(var i = 0; i < 4; i++) {
		//遍历获取对象
		$code = $(".span_checkedcode").eq(i);
		//生成随机数并进行字符串拼接
		radom = parseInt(Math.random() * 10);
		codes += radom;
		//存放单个字符串
		$code.text(radom);
		//旋转部分数字
		$code.css("transform", "rotate(" + radom * 10 + "deg)");
	}
	//存放完整验证码值
	$("#codes").val(codes);
	return codes;
}