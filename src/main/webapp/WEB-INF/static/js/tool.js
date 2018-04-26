$.validator.addMethod("length_limit", function(value, element, params) {
	//验证的反馈消息
	var msg = "";
	//验证结果
	var result = false;
	//验证逻辑
	if(value.length < params[0]) {
		msg = "<i class=\"fa fa-exclamation-circle\"> " + params[2] + "的长度不能小于" + params[0] + "位</i>";
	} else if(value.length > params[1]) {
		msg = "<i class=\"fa fa-exclamation-circle\"> " + params[2] + "的长度不能大于" + params[1] + "位</i>";
	} else {
		result = true;
	}
	//修改默认反馈消息
	$.validator.messages.length_limit = msg;
	return result;
});

$.validator.addMethod("no_null", function(value, element, params) {
	var msg = "";
	var result = false;
	if(value.length > 0) {
		result = true;
	} else {
		msg = "<i class=\"fa fa-exclamation-circle\"> " + params[0] + "不能为空</i>";
	}
	$.validator.messages.no_null = msg;
	return result;
});

$.validator.addMethod("rex_checked", function(value, element, params) {
	var msg = "";
	var result = true;
	if(!params[0].test(value)) {
		msg = "<i class=\"fa fa-exclamation-circle\"> " + params[1] + "</i>";
		result = false;
	}
	$.validator.messages.rex_checked = msg;
	return result;
});

$.validator.addMethod("isrepeat", function(value, element, params) {
	var msg = "";
	var result = false;
	var data={};
	var name=element.name;
	value=element.value;
	data[name]=value;
	$.ajax({
		type: "GET",
		url: "isRepeat",
		async: false,
		data:data,
		cache:false,
		success: function(data) {
			if(data == true) {
				msg = "<i class=\"fa fa-exclamation-circle\"> 该" + params[0] + "已被占用</i>";
			} else {
				result = true;
			}
		}
	})
	$.validator.messages.isrepeat = msg;
	return result;
	
});