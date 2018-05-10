<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>${picture.pictureTitle}</title>
		<link rel="stylesheet" type="text/css" href="../static/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="../static/css/font-awesome.css" />
		<link rel="stylesheet" type="text/css" href="../static/css/colorPicker.css" />
		<link rel="stylesheet" type="text/css" href="../static/css/css_picture.css" />
		<script src="../static/js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="../static/js/popper.js" type="text/javascript" charset="utf-8"></script>
		<script src="../static/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<script src="../static/js/jquery.colorPicker.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
		function picLloadComplete(picture) {
			console.log("加载完成:"+picture.offsetHeight);
		}
		</script>
	</head>

	<body class="">
		<div class="source_picture_div">
			<img class="source_picture" />
		</div>
		<div class="reload_div">
			<div class="reload_content_div">
				<span class="fa fa-spinner fa-pulse"></span>
				<span class="reload_msg_span">加载中...</span>
			</div>
		</div>
		<div class="msg_edit_area_div">
			<div class="edit_area_power_div">
				<span class="fa fa-pencil-square-o fa-2x edit_area_power_span"></span>
			</div>
			<div class="msg_edit_div">
				<div class="edit_menu_div fa-lg">
					<div class="edit_btn_list_div">
						<div class="edit_btn_div">
							<span class="edit_btn_span">
								<button class="fa fa-bold" aria-hidden="true" data-exetype="bold"></button>
							</span>
						</div>
						<div class="edit_btn_div">
							<span class="edit_btn_span">
								<button class="fa fa-underline" aria-hidden="true" data-exetype="underline"></button>
							</span>
						</div>
						<div class="edit_btn_div">
							<span class="edit_btn_span">
								<button class="fa fa-italic" aria-hidden="true" data-exetype="italic"></button>
							</span>
						</div>
						<div class="edit_btn_div">
							<span class="edit_btn_span">
						<button class="fa fa-smile-o" aria-hidden="true"></button>
						</span>
						</div>
						<input id="colorboard" value="#212529" />
						<input id="backgroundboard" value="#FFFFFF" />
					</div>
					<div class="comment_list_div">
						<div class="star_btn_div error">
							<span class="edit_btn_span">
							<i class="fa fa-star-o " aria-hidden="true" data-point="5">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="4">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="3">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="2">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="1"></i>
						</span>
						</div>
					</div>
					<div class="edit_power_off_div pull-right">
						<span class="fa fa-power-off edit_power_off_span">
						<!--<i class="fa fa-power-off" aria-hidden="true"></i>-->
					</span>
					</div>
					<div class="clearfix"></div>
				</div>
				<div id="msg_edit_content_area_div">
					<iframe id="msg_edit_content_div" contenteditable="true" data-bgc="#fff">
				
					</iframe>
				</div>
				<div class="msg_edit_foot_div">
					<div class="msg_total">
					<span class="msg_num_value">0</span>
					<span>/</span>
					<span class="msg_total_value">80</span>
					</div>
					<span class="send_btn_span">
						<span class="btn_text">发送</span>
					<span class="fa fa-spinner fa-spin btn_loading_text"></span>
					</span>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>

		<div class="picture_area_div">
			<div class="picture_title_div">
			<span class="main_nav_link pull-left">Share Picture</span>
				<span class="fa fa-quote-left"></span>
				<span class="picture_title_span">${picture.pictureTitle}</span>
				<span class="fa fa-quote-right"></span>
			</div>
			<div class="picture_container">
				<div class="picture_div text-center">
					<img src="${pageContext.request.contextPath}/picture/${picture.pictureId}/false" />
					<div class="tool_tag_div fa-lg">
						<span class="fa fa-search-plus active" data-evalstr="maxPictureModel()"></span>
						<span class="fa fa-search-minus" data-evalstr="minPictureModel()"></span>
					</div>
				</div>
				<div class="picture_remark_area_div right_area">
					<div class="remark_area_head_div">
						<img src="${pageContext.request.contextPath}/user/${picture.authorId}" class="authorImg"/>
					</div>
					<div class="remark_content_div">
						<div class="remark_value_div">
							${picture.remark}
						</div>
						<div class="blockquote-footer text-right remark_author_div">${authorName}</div>
					</div>
				</div>
			</div>
		</div>

		<div class="info_area_div">
			<div class="left_msg_area_div">
				<div class="msg_show_panel">
				<!-- <div class="msg_row_div">
					<div class="sender_img_div">
						<img src="../static/img/萨尔茨卡默古特地区_13.jpg" />
					</div>
					<div class="alert">
						<div class="msg_caret"></div>
						<span class="msg_value_span">阿德萨夫斯达克反对vgkdsfnvjdfnvbjadfnvboadnvbodfjnhdfogafd 赛道姐啊死哦等哈苏打水份雕塑发吧</span>
						<div class="msg_footer_div">
						<div class="date_value">
							 2018-04-23 09:07:49
						</div>
						<div class="comment_value">
							<i class="fa fa-star-o "  data-point="5">
							</i><i class="fa fa-star-o fa_isselect"  data-point="4">
							</i><i class="fa fa-star-o" data-point="3">
							</i><i class="fa fa-star-o"  data-point="2">
							</i><i class="fa fa-star-o"  data-point="1"></i>
						</div>
						</div>
					</div>
				</div> -->
				</div>
				<div class="msg_panel_footer_div">
					<span class="page_span page_btn_span page_up_span" data-value="-1">
					上一页
					</span><span class="page_span  page_info_span">
						<span class="page_value"></span><span class="">/</span><span class="total_page_value"></span>
					</span><span class="page_span page_btn_span page_down_span"  data-value="1">
						下一页
					</span>
				</div>
			</div>

			<div class="right_picture_info_area_div">
				<div class="picture_info_area_div">
				<div class="picture_info_content_div">
			<div class="info_head_div">
				<div class="head_caret_div left"></div>
			
				<div class="head_caret_div right"></div>
			</div>
			<div class="info_row_div">
				<span class="info_row_name">作者：</span>
				<span class="info_row_value">${authorName}</span>
			</div>
			<div class="info_row_div">
				<span class="info_row_name">上传时间：</span>
				<span class="info_row_value">${picture.createTime}</span>
			</div>
			<div class="info_row_div">
				<span class="info_row_name">点击量：</span>
				<span class="info_row_value">${picture.clickCount}</span>
			</div>
			<div class="info_row_div">
				<span class="info_row_name">下载量：</span>
				<span class="info_row_value download_value">${picture.download}</span>
				<a class="download_a"><span class="fa fa-download"></span></a>
			</div>
			<!-- <div class="info_footer_div">
				<div class="footer_caret_div"></div>
			</div> -->
			</div>
		</div>
		<!-- <div class="download_btn_div">
			
		</div> -->
			</div>
		</div>

		
	</body>

	<script type="text/javascript">
	var pId="${picture.pictureId}";
	var cp="${pageContext.request.contextPath}";
		$(function() {
			
			/*var  editor=iniEdit();*/
			$(".edit_btn_span i.fa").click(function() {
				if($(this).hasClass("fa_isselect")) {
					$(".edit_btn_span i.fa").removeClass("fa_isselect");
					$(this).parents(".star_btn_div").addClass("error");
				} else {
					$(".edit_btn_span i.fa").removeClass("fa_isselect");
					$(this).addClass("fa_isselect");
					$(this).parents(".star_btn_div").removeClass("error");
				}
			})
			$(".edit_btn_span button:not('.fa-smile-o')").click(function() {
				$(this).parent().parent().toggleClass("active");
				fontStyle($(this).attr("data-exetype"));
			})

			/* $(".edit_btn_span button.fa-pencil-square").click(function() {
				var val = $(this).attr("data-exevalue");
				$(this).css("color", val);
				color(val);
			}) */
			 $("#colorboard").colorPicker({
				onColorChange: function(id, newValue) {
					$(".edit_btn_span .fa-pencil-square").attr("data-exevalue", newValue);
					color(newValue);
				}
			});
			$("#backgroundboard").colorPicker({
				onColorChange: function(id, newValue) {
					$el=$("#msg_edit_content_div");
					$el.css("background",newValue);
					$el.attr("data-bgc",newValue);
				}
			}); 

			$(".fa-angle-down").click(function() {
				var num = Math.random() * 5 + 1;
				var html = $(".tr_modo").html();
				$(".table_div .table_tr").remove();
				for(var i = 0; i < num; i++) {
					$(".table_div").append(html);
				}
				/*var height = $(".msg_panel_content_div").height();
				$(".table_div").css("top", height);*/
			})

			$(document).on("click", ".edit_area_power_div", (function() {
				if("${userId}"){
				areaShow(".msg_edit_area_div", "right");
				}else{
					alert("请先登录")
				}
				/* $("#msg_edit_content_div").focus(); */
			}))

			$(document).on("click", ".edit_power_off_span", (function() {
				areaClose(".msg_edit_area_div", "right", "40%")
			}))

			$(document).on("click", ".msg_panel_area_div:not('.active') .msg_area_power_div", (function() {
				areaShow(".msg_panel_area_div", "left");
			}))

			$(document).on("click", ".msg_panel_area_div.active .msg_area_power_off_div", (function() {
				areaClose(".msg_panel_area_div", "left", "50%")
			}))

			$(document).on("click", ".tool_tag_div:not('.loading') span", function() {
				eval($(this).attr("data-evalstr"));
				$(".tool_tag_div span").toggleClass("active");
			})

			$(".source_picture_div").click(function() {
				$(this).css("display", "none");
			})
			
			$(".picture_div img").on("load",function(){
				var $parent=$(this).parent();
				console.log("pw:"+$parent.get(0).offsetWidth+",thisw"+$(this).get(0).offsetWidth);
			})
			$(document).on("click",".send_btn_span:not('.loading')",function(){
				/* $(this).addClass("loading"); */
				if(vailMsg()){ 
				sendMsg($(this));
				}
			})
			$("#msg_edit_content_div").contents().find("body").keyup(function(){
				var length=$("#msg_edit_content_div").contents().find("body").text().length;
				if(length>$(".msg_total_value").text()||length==0)
				{
					$("#msg_edit_content_div,.msg_num_value").addClass("error");
				}else{
					$("#msg_edit_content_div,.msg_num_value").removeClass("error");
				}
				$(".msg_num_value").text(length);
			})
			$(".main_nav_link").click(function(){
				location.href=cp+"/";
			})
			$(".download_a").click(function(){
				location.href=cp+"/picture/"+pId+"/true";
				setTimeout("getDownload()",200);
			})
			$(document).on("click",".page_btn_span:not('.disabled')",function(){
				var value=Number($(this).attr("data-value"));
				var page=Number($(".page_value").text())+value;
				getMsg(page);
			})
		})
		var editor,doc;
		ini();
		function ini(){
			 /*travelpostcontent*/
			editor = document.getElementById("msg_edit_content_div").contentWindow; //获取iframe Window 对象
			doc = document.getElementById("msg_edit_content_div").contentDocument; //获取iframe documen 对象
			/*butGroup = document.getElementById('butGroup');*/
			editor.document.designMode = 'On';
			editor.document.contentEditable = true;
			
		}

		function areaShow( areaname, direction) {
			var data = {};
			data[direction] = "0em";
			$(areaname).animate(data, 1000, function() {
				$(this).addClass("active");
			})
		}

		function areaClose(areaname, direction, width) {
			var data = {};
			data[direction] = "-" + width;
			$(areaname).animate(data, 1000, function() {
				$(this).removeClass("active");
			})
		}

		function fontStyle(style, val) {
			editor.document.execCommand(style, false, null);
		}

		function color(val) {
			editor.document.execCommand("foreColor", false, val);
		}

		function maxPictureModel() {
			var $remark = $(".picture_remark_area_div");
			var $tool = $(".tool_tag_div");
			$tool.addClass("loading");
			$(".picture_div").animate({
				width: "100%"
			}, 2000, function() {
				$tool.removeClass("loading");
			})
			$remark.animate({
				opacity: 0
			}, 1000, function() {
				$remark.removeClass("right_area");
				$remark.animate({
					opacity: 1
				}, 1000)
			})
		}

		function minPictureModel() {
			var $tool = $(".tool_tag_div");
			var $remark = $(".picture_remark_area_div");
			$tool.addClass("loading");
			$(".picture_div").animate({
				width: "70%"
			}, 2000, function() {
				$tool.removeClass("loading");
			})
			$remark.animate({
				opacity: 0
			}, 1000, function() {
				$remark.addClass("right_area");
				$remark.css("right", "-30%");
				$remark.animate({
					opacity: 1,
					right: "0%"
				}, 1000)
			})
		}
		
		getMsg(1);
		
		function getMsg(page){
			var config={"url":cp+"/msg/pId","data":{"key":pId,"page":page,"pageSize":5},"dataType":"json"};
			$.ajax(config).done(function(json){
				var datas=json.data;
				getMsgHTML(datas)
				setMsgPanelFooter(page,json.totalPage);
			})
		}
		
		function getMsgHTML(datas){
			$el=$(".msg_show_panel");
			$el.children(".msg_row_div").remove();
			for(var i=0;i<datas.length;i++)
			{
				var message=datas[i];
				var c="";
				var star="";
				if(i%2==1)
				{
					c="right";
				}
				var html='<div class="msg_row_div '+c+'">'
					+'<div class="sender_img_div">'
					+'<img src="'+cp+'/user/'+message.senderId+'" /></div>'
					+'<div class="alert" style="background:'+message.bgColor+';border-color:'+message.bgColor+'">'
					+'<div class="msg_caret"></div>'
					+'<span class="msg_value_span">'+message.content+'</span>'
					+'<div class="msg_footer_div">'
					+'<div class="date_value">'+message.createTime+'</div>'
					+'<div class="comment_value">';
				for(var j=0;j<Number(message.star);j++)
				{
					star+='<i class="fa fa-star"></i>';
				}
				html+=star+'</div></div></div></div>';
				$el.append(html);
			}
		}
		
		function setMsgPanelFooter(page,totalPage){
			if(totalPage>0)
			{
				$(".msg_panel_footer_div").addClass("active");
			}else{
				$(".msg_panel_footer_div").remove("active");
				return;
			}
			$(".page_info_span .page_value").text(page);
			$(".page_info_span .total_page_value").text(totalPage);
			if(page<=1)
			{
				$(".page_up_span").addClass("disabled");
			}else{
				$(".page_up_span").removeClass("disabled");
			}
			if(page>=totalPage)
			{
				$(".page_down_span").addClass("disabled");
			}else{
				$(".page_down_span").removeClass("disabled");
			}
		}
		
		function vailMsg(){
			if($(".error").length>0)
			{
				return false;
			}
			return true;
		}
		
		function sendMsg($el){
			var data={"pictureId":pId,"content":$("#msg_edit_content_div").contents().find("body").html(),"star":$(".star_btn_div .fa_isselect").attr("data-point"),"bgColor":$("#msg_edit_content_div").attr("data-bgc")};
			var config={"url":cp+"/msg/insert","data":data,"dataType":"json","type":"Post","beforeSend":""};
			config.beforeSend=function(){
				$el.addClass("loading");
			}
			$.ajax(config).done(function(){
				getMsg(1);
				$("#msg_edit_content_div").contents().find("body").html("");
				$(".edit_power_off_span").click();
			}).always(function(){
				$el.removeClass("loading");
			})
		}

		function getDownload(){
			$.ajax({
				"url":cp+"/getDownload",
				"data":{"pictureId":pId}
			}).done(function(num){
				/* if(num==$(".download_value").text())
				{
					num++;
					
				} */
				$(".download_value").text(num);
			})
		}
	</script>

</html>