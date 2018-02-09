$(function() {
	getCheckedCode();

	/*$.validator.setDefaults({
		submitHandler: function() {
			alert("提交");
		}
	})*/
	/*表单验证*/
	$("#form_reg").validate({
		errorPlacement: function(error, element) { //错误信息位置设置方法
			error.appendTo(element.parent()); //这里的element是录入数据的对象
		},
		rules: {
			email: {
				no_null: ["邮箱"],
				rex_checked: [/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/, "请输入正确的邮箱地址"],
				isrepeat:["邮箱"]
			},
			userName: {
				no_null: ["用户名"],
				rex_checked: [/^[\u4E00-\u9FA5A-Za-z0-9]+$/, "用户名不能包含特殊字符"],
				length_limit: [3, 6, "用户名"],
				isrepeat:["用户名"]
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
	/*获取验证码*/
	function getCheckedCode() {
		var $code;
		var radom = 0;
		var codes = "";
		for(var i = 0; i < 4; i++) {
			$code = $(".span_checkedcode").eq(i);
			radom = parseInt(Math.random() * 9);
			codes += radom;
			$code.text(radom);
			$code.css("transform", "rotate(" + radom * 10 + "deg)");
		}
		$("#codes").val(codes);
		return codes;
	}
})