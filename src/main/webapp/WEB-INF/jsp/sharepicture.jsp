<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>分享</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/font-awesome.css" />
		<script src="${pageContext.request.contextPath}/static/js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
		<style type="text/css">
			body {
				position: relative;
				margin: 0em;
				padding: 0em;
				background: #f5f5f5;
				
			}
			
			.share_picture_area_div {
				width: 60%;
				padding: 0.5em;
				margin: 0em 20%;
				background: #fff;
				border-radius: 0.5rem;
			}
			
			.picture_drop_load_area {
				height: 400px;
				border: 5px dashed rgb(230, 239, 182);
				border-radius: 0.5rem;
				position: relative;
				padding: 10px;
				text-align: center;
			}
			
			.picture_drop_load_area.active {
				height: auto;
			}
			
			.tip_text_span {
				font-size: 2em;
				color: rgb(230, 239, 182);
			}
			
			.picture_drop_load_area.active .tip_text_span {
				display: none;
			}
			
			.tip_text_span {
				position: absolute;
				left: 50%;
				top: 50%;
				transform: translate(-50%, -50%);
				z-index: 0;
			}
			
			.picture {
				max-width: 100%;
				border-radius: inherit;
			}
			
			.picture_click_load_area {
				margin: 1em -1em;
				background: rgb(115, 140, 197);
				color: white;
				line-height: 3em;
				height: 3em;
				padding: 0em 0.5em;
			}
			
			.click_load_btn_div {
				display: inline-block;
				padding: 0.3em;
				background: rgb(225, 173, 107);
				margin: -0.5em 0em;
				cursor: pointer;
			}
			
			.picture_load_input_span {
				font-size: 90%;
				background: rgb(114, 123, 180);
				color: #fff;
				border-radius: 0.25em;
				padding: 0.1em;
			}
			
			.half_area {
				width: 50%;
				float: left;
			}
			
			.alertmsg_area_div {
				width: 40%;
				height: 3em;
				line-height: 3em;
				position: fixed;
				top: -3em;
				left: 30%;
				font-size: 1.2rem;
				text-align: center;
				z-index: 1;
				background: rgb(188, 222, 197);
				color: #fff;
				border-radius: 0.25em;
			}
			
			.alertmsg_area_div.show {
				animation: msg 3s;
			}
			
			@keyframes msg {
				from {
					top: -3em;
				}
				30% {
					top: 0em;
				}
				70% {
					top: 0em;
				}
				to {
					top: -3em;
				}
			}
			
			.alert_icon_span {
				padding: 0.25em;
				font-size: 2em;
				float: left;
			}
			
			.picture_content_div {
				padding: 1em 0.5em;
				background: #fff;
			}
			
			.picture_title_div {
				height: 3em;
				line-height: 3em;
				/*overflow: hidden;*/
				text-overflow: clip;
				border-bottom: 2px solid rgb(66, 207, 115);
				position: relative;
			}
			
			.myinput {
				border: none;
				outline: none;
			}
			
			.picture_title_input {
				width: calc(100% - 5rem);
				font-size: 1.3rem;
			}
			
			.remark_area_div {
				padding: 1em;
				margin: -2px 2.5em;
				border: 2px solid rgb(66, 207, 115);
				border-radius: 0em 0em 0.25em 0.25em;
				position: relative;
			}
			
			.reamrk_textarea {
				height: 6em;
				outline: none;
				width: 100%;
				resize: none;
				border: none;
				overflow: hidden;
				text-overflow: ellipsis;
			}
			
			#img_file_input {
				display: none;
			}
			/*.data_error {
				color: ;
			}
			*/
			
			.submit_btn_div {
				/*width: 15%;*/
				position: fixed;
				right: 3%;
				top: calc(50% - 10rem);
				text-align: center;
				font-size: 2em;
				color: #fff;
				border: 2px solid rgb(75, 107, 206);
				/*padding: 0.3em;*/
				border-radius: 0.5rem;
				cursor: pointer;
			}
			
			.submit_btn_div:not(.active):active>div {
				background: transparent;
				color: rgb(75, 107, 206);
			}
			
			.submit_btn_div>div {
				background: rgb(75, 107, 206);
				width: 100%;
				height: 100%;
				padding: 1rem 3rem;
				/*line-height: 7rem;*/
				border-radius: 0.6rem;
			}
			
			.main_link_div {
				position: absolute;
				font-family: Prestige Elite Std;
				cursor: pointer;
				color: #fff;
				border-radius: 0.3em;
				border: 2px solid #32383E;
				margin: 0.2em;
			}
			
			.main_link_div>div {
				line-height: 2em;
				background: #32383E;
				height: 2em;
				border-radius: 0.3em;
				padding: 0.3em;
			}
			
			.data_name_tip_div {
				width: 5rem;
				position: absolute;
				height: 5rem;
				border: 2px solid rgb(255, 173, 107);
				left: -15%;
				border-top: none;
				border-right: none;
				bottom: 1rem;
				border-bottom-left-radius: 5rem;
				transform: rotate(-15deg);
			}
			
			.name_content_div {
				transform: translate(-50%, -100%);
				color: rgb(255, 173, 107);
				/*padding: 0.3em;
				border: 2px solid rgb(255,173,107)*/
				text-align: center;
				font-weight: bold;
				white-space: nowrap;
			}
			
			.data_name_tip_div.data_error {
				animation: error 2s;
			}
			
			@keyframes error {
				from {
					font-size: 1em;
				}
				50% {
					font-size: 3em;
				}
				to {
					font-size: 1em;
				}
			}
			.loading_div{
			position:fixed;
			z-index: 3;
			width: 100%;
			height: 100%;
			background:rgba(0,0,0,0.5);
			display: none;
			top:0em;
			left:0em;
			}
			.loading_div.active{
			display:block; 
			}
			.loading_content_div{
				    width: 7em;
    height: 5em;
    line-height: 5em;
    background: #fff;
    box-shadow: 0px 0px 10px #333;
    border-radius: 0.25em;
    text-align: center;
    transform: translate(-50%,-50%);
    top: 50%;
    left: 50%;
    position: absolute;
				
			}
		</style>
	</head>

	<body>
	<div class="loading_div">
		<div class="loading_content_div">
		<span class="fa fa-spinner fa-pulse  fa-fw"></span>
		<span>加载中...</span>
		</div>
	</div>
		<div class="main_link_div">
			<div>Share Picture</div>
		</div>
		<div class="submit_btn_div">
			<div >
				<span>分 享</span>
			</div>
		</div>
		<div class="alertmsg_area_div">
			<span class="fa fa-exclamation-triangle alert_icon_span"></span>
			<span class="alertmsg_span"></span>
		</div>
		<div class="share_picture_area_div">
			<div class="picture_drop_load_area">
				<div class="tip_text_span">
					拖拽上传图片
					<span class="fa fa-picture-o"></span>
				</div>
				<img class="picture" src="" />
			</div>
			<div class="picture_click_load_area">
				<input type="file" name="img" accept="image/*" size="1" id="img_file_input" class="pic_data data_error" />
				<div class="half_area">
					&nbsp;
				</div>
				<div class="half_area text-right">
					<span>点击</span>
					<div class="click_load_btn_div">这里</div>
					<span>上传图片</span>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="picture_content_div">
				<div class="picture_title_div">
					<div class="data_name_tip_div title">
						<div class="name_content_div">
							标 题 <span class="total">0/30</span>
						</div>
					</div>
					<span class="fa fa-quote-left fa-2x fa-pull-left"></span>
					<input type="text" name="pictureTitle" class="myinput picture_title_input pic_data data_error" data-limit="30" />
					<span class="fa fa-quote-right fa-2x fa-pull-right"></span>
				</div>
				<div class="remark_area_div">
					<div class="data_name_tip_div remark">
						<div class="name_content_div">
							简 介 <span class="total">0/150</span>
						</div>
					</div>
					<textarea name="remark" class="reamrk_textarea pic_data data_error" data-limit="150"></textarea>
				</div>
			</div>
		</div>

	</body>
	<script type="text/javascript">
		$(function() {
			$("#img_file_input").change(function() {
				verification($(this))
			})
			$(".click_load_btn_div").click(function() {
				$("#img_file_input").click();
			})
			$(document).on("keyup", ".pic_data", function() {
				limitLength($(this));
			})

			$(".main_link_div").click(function() {
				location.href = "main";
			})
			$(document).on("click",".submit_btn_div:not('.active')",function() {
				if($("#img_file_input").hasClass("data_error"))
				{
					showMsg("至少上传一张图片");
					return;
				}
				$els = $(".pic_data:not('#img_file_input')");
				for(var i = 0; i < $els.length; i++) {
					var $el = $els.eq(i);
					if($el.hasClass("data_error")) {
						$el.siblings(".data_name_tip_div").addClass("data_error");
						return;
					}
				}
				submitData();
			})
			$(document).on("animationend", ".data_name_tip_div.data_error", function() {
				$(this).removeClass("data_error");
			})
			$(document).on("animationend", ".alertmsg_area_div.show", function() {
				$(this).removeClass("show");
				
			})

			$(document).on("dragover", ".picture_drop_load_area", function(e) {
				e.preventDefault();
			})

			$(document).on("drop", ".picture_drop_load_area", function(e) {
				e.preventDefault();
				var files = e.originalEvent.dataTransfer.files;
				if(files.length > 1) {
					showMsg("一次只能上传一张图片");
					return;
				}
				$("#img_file_input").prop("files", files);
				verification($("#img_file_input"))
			})
		})

		function limitLength($el) {
			var length = $el.val().length;
			var limit = $el.attr("data-limit");
			$tip = $el.siblings(".data_name_tip_div");
			$tip.find(".total").text(length + "/" + limit);
			if(length > limit || length == 0) {
				$el.addClass("data_error");
			} else {
				$el.removeClass("data_error");
			}
		}

		function showMsg(text) {
			$(".alertmsg_span").text(text);
			$(".alertmsg_area_div").addClass("show");
		}

		function submitData() {
			var $els = $(".pic_data:not('.data_error')");
			var fd = new FormData();
			fd.append("pictureTitle", $els.filter("[name='pictureTitle']").val());
			fd.append("remark", $els.filter("[name='remark']").val());
			fd.append("img", $els.filter("[name='img']").prop("files")[0]);
			$.ajax({
				"url": "insert",
				"data": fd,
				"type": "post",
				"cache": false,
				"processData": false,
				"contentType": false,
				"beforeSend":function(){
					$(".loading_div,.submit_btn_div").addClass("active");
				}
			}).done(function(pictureId){
					if(pictureId)
					{
						showMsg("上传成功!");
						setTimeout("location.href='picture/"+pictureId+"'",1500);
						
					}else{
						showMsg("我也不知道为什么上传失败了!");
					}
			})
			.always(function(pictureId){
				if(!pictureId){
					$(".submit_btn_div").removeClass("active");
				}
				$(".loading_div").removeClass("active");
			})
		}
		
		function verification($el){
			var file = $el.prop("files")[0];
			if(file.type.indexOf("image/") != 0) {
				showMsg("不支持上传该格式的图片");
				$el.addClass("data_error");
				$el.val("");
				return;
			} else if(file.size>10485760){
				showMsg("上传的图片大小不能超过10MB");
				$el.addClass("data_error");
				$el.val("");
				return;
			}else {
				$(".picture_drop_load_area").addClass("active");
				$el.removeClass("data_error");
			}
			var fr = new FileReader();
			fr.readAsDataURL(file);
			fr.onload = function() {
				$(".picture").attr("src", this.result);
				$(".picture_drop_load_area").addClass("active");
			}
		}
		
		function toPicture(pictureId){
			
		}
	</script>

</html>