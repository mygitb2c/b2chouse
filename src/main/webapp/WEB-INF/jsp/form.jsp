<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>表单</title>
	<script src="static/js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
	<style type="text/css">
			* {
				margin: 0;
				padding: 0;
				list-style: none;
			}
			
			#box {
				width: 600px;
				height: 300px;
				background: #ccc;
				padding: 50px;
			}
		</style>
	</head>
	<body>
		<form action="insert" method="post" enctype="multipart/form-data" >
			<input type="file" name="img" />
			<input type="text" name="pictureTitle" value="这是图片标题~">
			<input type="text" name="remark" value="这是图片详情~">
			<input type="submit" value="提交"/>
		</form>
		<form action="userImage" method="post" enctype="multipart/form-data" >
			<input type="file" name="img" />
			<input type="submit" value="提交"/>
		</form>
		
		<div id="box"></div>
				<button onclick="submitForm()">提交</button>
		<form id="imgForm" enctype="multipart/form-data" >	
		<input type="file" name="img" id="img" value="" />
		</form>	
	</body>
	<script>
			var loadImg = "";
			var box = document.getElementById('box');
			var fd = new FormData();
			box.ondragover = function(e) {
				e.preventDefault();
			}
			box.ondrop = function(e) {
				e.preventDefault();
				if(e.dataTransfer.files.length > 1) {
					e.dataTransfer.files = [];
					alert("只能上传一张")
				} else {
					loadImg = e.dataTransfer.files;
					fd.append("img", loadImg[0]);
					document.getElementById("img").files = loadImg;
					var fr = new FileReader();
					fr.readAsDataURL(loadImg[0]);
					fr.onload = function() {
						var url = this.result;
						box.innerHTML = "<img src='" + url + "'/>";
					}
				
				}
				// console.log(e.dataTransfer.files[0]);
				/*var f = e.dataTransfer.files[0]; //获取到第一个上传的文件对象
				var fr = new FileReader(); //实例FileReader对象
				fr.readAsDataURL(f); //把上传的文件对象转换成url
				fr.readAsArrayBuffer()
				fr.onload = function(e) {
					console.log(e);
					// var Url=e.target.result;//上传文件的URL
					Url = this.result; //上传文件的URL
					box.innerHTML += '<img src="' + Url + '" alt="">';
				}*/
			}

			function submitForm() {
				var data = new FormData();
				/* data.append("img",document.getElementById("img").files[0]);
				data.append("userId","123"); */
				$.ajax({
					"url": "userImage",
					"data": data,
					"dataType": "json",
					"type": "post",
					cache: false,
					processData: false,
					contentType: false,
					success: function(str) {
						console.log(str);
					}
				})
			}
		</script>
</html>
