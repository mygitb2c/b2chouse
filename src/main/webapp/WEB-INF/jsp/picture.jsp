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
		<script src="../static/js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="../static/js/popper.js" type="text/javascript" charset="utf-8"></script>
		<script src="../static/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<script src="../static/js/jquery.colorPicker.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
		function picLloadComplete(picture) {
			console.log("加载完成:"+picture.offsetHeight);
		}
		</script>
		<style type="text/css">
			body {
				background: rgb(240, 240, 240) url(../static/img/bg.png);
				overflow-x: hidden;
				padding-bottom: 5em;
			}
			
			.drak {
				background: #32383E;
				color: #fff;
			}
			
			::-webkit-scrollbar {
				width: 8px;
			}
			
			::-webkit-scrollbar-thumb {
				background-color: #c1c1c1;
				border-radius: 4px;
			}
			
			.nofix {
				position: static;
			}
			
			.bor {
				border: 1px solid black;
			}
			
			.picture_area_div {
				position: relative;
				padding: 0em;
			}
			
			.up_page_area_div,
			.down_page_area_div {
				position: absolute;
				top: 50%;
				transform: translateY(-50%);
				width: 5%;
			}
			
			.down_page_area_div {
				right: 0px;
			}
			
			.page_btn_div {
				text-align: center;
				cursor: pointer;
			}
			
			.page_btn_div.disabled {
				color: rgb(180, 180, 180);
				cursor: default;
			}
			
			.picture_container {
				width: 90%;
				margin: 0px 5%;
				overflow: hidden;
				white-space: nowrap;
				position: relative;
			}
			
			.edit_btn_list_div {
				/*padding: 0.3em;*/
				display: inline-block;
			}
			
			.edit_btn_div {
				border-radius: 0.2em;
				text-align: center;
				/* height:2em; */
				padding: 0.5em;
				width: 2em;
				display: inline-block;
				background: #fff;
			}
			
			.edit_btn_div.active {
				background: rgb(240, 240, 240);
			}
			
			.comment_list_div {
				display: inline-block;
			}
			
			.star_btn_div {
				/* height: 2em;
				line-height: 2em; */
				display: inline-block;
				text-align: center;
				padding: 0em 1em;
			}
			
			.edit_power_off_div {
				padding: 0.2em;
			}
			
			.edit_power_off_span {
				cursor: pointer;
				padding: 0.2em;
			}
			#msg_edit_content_area_div{
				border-top: 1px solid rgb(230, 230, 230);
    			border-bottom: 1px solid rgb(230, 230, 230);
    			height: 8em;
    			padding: 0.1em 0.5em;
			}
			#msg_edit_content_div {
				height: 100%;
   		 		width: 100%;
    			border: none;
    			outline: none;
    			padding: 0.75rem 1.25rem 2rem 0.75rem;
    			color: #32383E;
    			border-radius: 0.25em;
			}
			
			.edit_btn_list_div .edit_btn_span button {
				padding: 0px;
				background: inherit;
				border: none;
				outline: none;
			}
			
			div.colorPicker-picker {
				/*background-color: #212529;*/
				display: inline-block;
				width: 1em;
				height: 1em;
				border-radius: 1em;
				border: 1px solid #CCC;
				margin: 0em 0.5em;
			}
			#backgroundboard+.colorPicker-picker{
				width: 2em;
			}
			
			.star_btn_div,
			.comment_value {
				direction: rtl;
			}
			
			.edit_btn_span .fa-star-o:hover:before,
			.edit_btn_span .fa-star-o:hover~i:before,
			.fa-star-o.fa_isselect:before,
			.fa-star-o.fa_isselect~i:before {
				content: "\f005";
				color: yellow;
			}
			
			.hot_tag_div {
				width: 3em;
				height: 3em;
				border: 1.5em solid;
				border-left-color: red;
				border-top-color: red;
				border-bottom-color: transparent;
				border-right-color: transparent;
				color: #fff;
				position: absolute;
			}
			
			.hot_text_span {
				float: left;
				margin-top: -20px;
				margin-left: -20px;
				font-family: Prestige Elite Std;
				transform: rotate(-45deg);
			}
			
			.msg_panel_area_div {
				position: absolute;
				width: 50%;
				padding-left: 1em;
				left: -50%;
				top: 15%;
				z-index: 1;
			}
			
			.msg_panel_div {
				width: 100%;
				background: #fff;
				border-radius: 0.2em;
			}
			/*.msg_panel_content_div:hover {
				opacity: 1;
			}
			*/
			
			.msg_panel_content_div {
				overflow: hidden;
				min-height: 9em;
				padding: 0.3em 0em 0.3em 0.3em;
				margin-right: 2em;
				border-color: #999999;
			}
			
			.table_div {
				margin-top: 0.5em;
				margin-bottom: 0.5em;
				width: 100%;
				/*border-left: 1px solid;
				border-right: 1px solid;
				border-bottom: 1px solid;
				border-color: inherit;*/
				position: relative;
				color: #4d4d4d;
			}
			
			.table_tr {
				/*margin: 0px 0px 0px -1px;*/
				height: 6em;
				width: 100%;
				display: table;
				padding: 0em;
				border-bottom: 1px solid rgb(220, 220, 220);
			}
			
			.td_name,
			.td_value {
				text-align: center;
				height: 100%;
				/*border-top: 1px solid;
				border-left: 1px solid;
				border-color: inherit;*/
				float: left;
				padding: 0.5em 0.5em 0.5em 0.5em;
			}
			
			.td_value>.cell_value {
				text-align: left;
			}
			
			.cell_value {
				position: relative;
				word-wrap: break-word;
				height: 100%;
				padding-bottom: 2em;
			}
			
			.comment_value {
				position: absolute;
				bottom: 0.3em;
				/*left: 0.5em;*/
			}
			
			.date_value {
				position: absolute;
				bottom: 0.3em;
				right: 0.5em;
				font-size: 80%;
				color: rgb(200, 200, 200);
			}
			
			.send_name_value {
				position: absolute;
				bottom: 0em;
				left: 50%;
				transform: translateX(-50%);
			}
			
			.width_20 {
				width: 20%;
			}
			
			.width_80 {
				width: 80%;
			}
			
			.msg_panel_area_div.active .msg_area_power_off_div,
			.msg_panel_area_div.active .msg_panel_footer_div {
				display: inline;
			}
			
			.msg_panel_footer_div {
				position: absolute;
				right: 0em;
				bottom: 0em;
				font-size: 2em;
				display: none;
				width: 1em;
				color: #32383E;
			}
			
			.fa-angle-down,
			.fa-angle-up {
				/*padding: 0em 0.25em;*/
				border-radius: 0.25em
			}
			
			.fa-angle-down:active,
			.fa-angle-up:active {
				background: #fff;
			}
			
			.msg_area_power_off_div,
			.msg_area_power_div {
				position: absolute;
				top: 0em;
				width: 2em;
				text-align: center;
			}
			
			.msg_area_power_div {
				right: -2em;
			}
			
			.msg_area_power_off_div {
				right: 0em;
				padding: 0.3em;
				display: none;
				color: #32383E;
			}
			
			.msg_panel_area_div.active .msg_area_power_div .fa-caret-right,
			.msg_panel_area_div:not(.active) .msg_area_power_div .fa-times {
				display: none;
			}
			
			.msg_panel_area_div:not(.active) .msg_area_power_div .fa-caret-right,
			.msg_panel_area_div.active .msg_area_power_div .fa-times {
				display: inline;
			}
			
			.msg_edit_area_div {
				position: fixed;
				bottom: 1em;
				right: -40%;
				width: 40%;
				padding: 0em 0.5em;
				z-index: 1;
			}
			
			/* .msg_edit_div:hover {
				opacity: 1;
			} */
			
			.msg_edit_div {
				width: 100%;
				display: inline-block;
				border: 1px solid #333333;
				background: rgb(255, 255, 255);
				border-radius: 0.25em 0.25em 0.25em 0.25em;
				opacity: 1;
			}
			
			.edit_menu_div {
				padding: 0.3em;
				color: #32383E;
			}
			
			.edit_area_power_div {
				width: 2em;
				display: inline-block;
				cursor: pointer;
				margin-left: -3em;
				position: absolute;
				top: 50%;
				transform: translateY(-50%);
			}
			
			.msg_edit_area_div.active .edit_area_power_div {
				display: none;
			}
			
			.msg_edit_area_div:not(.active) .edit_area_power_div {
				display: inline-block;
			}
			
			.edit_area_power_span {
				/*				position: absolute;
				top: 50%;
				transform: translateY(-50%);
				font-size: 2em;*/
			}
			
			.send_btn_div {
				padding: 0.5em 1em;
			}
			
			.send_btn_span {
				padding: 0.3em 1.5em 0.3em 2.5em;
				background: #343a40;
				color: #fff;
				border-radius: 0.25em;
				float: right;
				cursor: pointer;
			}
			
			.send_btn_span.loading {
				background: rgb(200, 200, 200);
				cursor: wait;
			}
			
			.send_btn_span.loading .btn_loading_text {
				visibility: visible;
			}
			
			.send_btn_span:not(.loading) .btn_loading_text {
				visibility: hidden;
			}
			
			.picture_container img {
				max-width: 100%;
			}
			
			.source_picture_div {
				width: 100%;
				height: 100%;
				position: fixed;
				display: flex;
				align-content: center;
				justify-content: center;
				display: none;
				z-index: 3;
				background: rgba(0, 0, 0, 0.6);
			}
			
			.source_picture {
				max-width: calc(100% - 10px);
				max-height: calc(100% - 10px);
				padding: 5px;
				border: 1px solid #ccc;
				background: #fff;
				border-radius: 2px;
			}
			.reload_div {
				width: 100%;
				height: 100%;
				background: rgba(0, 0, 0, 0.5);
				position: fixed;
				display: none;
				z-index: 3;
				cursor: wait;
			}
			.reload_div.active {
	display: block;
}

.reload_content_div {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 8em;
	height: 6em;
	background: #fff;
	border-radius: 0.25em;
	line-height: 6em;
	text-align: center;
}
			
			.picture_container .picture_div {
				width: 70%;
				display: inline-block;
				position: relative;
				min-height: 18em;
			}
			
			.tool_tag_div {
				position: absolute;
				right: 0em;
				top: 0em;
				color: rgb(220, 220, 220);
				padding: 0.5em;
				display: none;
				cursor: pointer;
			}
			
			.tool_tag_div.loading span {
				display: none !important;
			}
			
			.tool_tag_div span {
				display: none;
			}
			
			.tool_tag_div span.active {
				display: inline;
			}
			
			.picture_div:hover .tool_tag_div {
				display: inline;
			}
			
			.tool_tag_div:hover {
				color: #fff;
			}
			
			.picture_remark_area_div.right_area {
				position: absolute;
				right: 0%;
				top: 0%;
				width: 30%;
				padding: 1em;
				height: 100%;
			}
			
			.picture_remark_area_div {
				/* padding: 1.5em 0.5em 0em 0.5em; */
				white-space: normal;
				background: rgba(95, 125, 162, 0.5);
				padding-bottom: 2em;
				
			}
			
			.remark_area_head_div{
				text-align: center;
				padding: 2em 0;
			}
			.authorImg{
				width: 6em;
				height: 6em;
				border-radius: 6em;
			}
			.remark_content_div{
				color: #fff;
			}
			.remark_value_div{
				padding:0 10%;
			}
			.remark_author_div{
				color: #fff;
				padding: 1em 5%;
			}
			
			/* .picture_remark_area_div .fa-border {
				border-color: #fff;
			}
			
			.remark_value {
				width: 100%;
			} */
			
			.picture_title_div {
				padding: 1em 0em;
				background: rgba(0, 0, 0, 0.73);
				color: #fff;
				font-size: 1.2em;
				margin-bottom: 1.5em;
				text-align: center;
			}
			
			.picture_title_div>.fa {
				padding: 0em 0.3em;
			}
			
		</style>
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
						<!-- <div class="edit_btn_div">
							<span class="edit_btn_span ">
								<button class="fa fa-font" aria-hidden="true" data-exetype=""></button>
							</span>
						</div> -->
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
						<div class="star_btn_div">
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
					<iframe id="msg_edit_content_div" contenteditable="true" data-bgc="">
				
					</iframe>
				</div>
				<div class="send_btn_div">
					<span class="send_btn_span">
						<span class="btn_text">发送</span>
					<span class="fa fa-spinner fa-spin  btn_loading_text"></span>
					</span>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>

		<div class="picture_area_div">
			<div class="picture_title_div">
				<span class="fa fa-quote-left"></span>
				<span class="picture_title_span">${picture.pictureTitle}</span>
				<span class="fa fa-quote-right"></span>
			</div>
			<div class="picture_container">
				<div class="picture_div text-center">
					<img src="${pageContext.request.contextPath}/picture/${picture.pictureId}/false"  onload="picLloadComplete(this)"/>
					<div class="tool_tag_div fa-lg">
						<span class="fa fa-search-plus active" data-evalstr="maxPictureModel()"></span>
						<span class="fa fa-search-minus" data-evalstr="minPictureModel()"></span>
					</div>
				</div>
				<div class="picture_remark_area_div right_area">
					<!-- <div class="remark_value">
						asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd
						 <footer class="blockquote-footer text-right">From WWF's website</footer>
					</div> -->
					<div class="remark_area_head_div">
						<img src="${pageContext.request.contextPath}/user/${picture.authorId}" class="authorImg"/>
					</div>
					<div class="remark_content_div">
						<div class="remark_value_div">
							爱是打算粉红色花费时间的话,打扫房间啊第三方哈斯东方航,空电视机法的速度回复UIEHSDJA
						</div>
						<div class="blockquote-footer text-right remark_author_div">${authorName}</div>
					</div>
				</div>
			</div>
		</div>

		<style type="text/css">
			.info_area_div {
				width: 90%;
				margin: 1em 5%;
				padding: 0.5em;
			}
			
			.left_msg_area_div {
				width: 65%;
				margin-right: 5%;
				display: inline-block;
			}

			
			.msg_row_div .alert {
				width: calc(70% - 6em);
				display: inline-block;
				padding-bottom: 2em;
				margin: 1em 0em 1em 6em;
				word-break: break-all;
			}
			
			.msg_row_div.right .alert {
				margin: 1em 6em 1em 30%;
			}
			
			.sender_img_div {
				padding: 0em 0.5em;
				display: inline-block;
			}
			
			.sender_img_div img {
				width: 4em;
				height: 4em;
				border-radius: 4em;
			}
			
			.msg_row_div {
				position: relative;
			}
			
			.sender_img_div {
				position: absolute;
				top: 50%;
				transform: translateY(-50%);
			}
			
			.right .sender_img_div {
				right: 0em;
			}
			
			.five_msg {
				color: #fff;
				background-color: #8080C0;
				border-color: #8080C0;
			}
			
			.four_msg {
				color: #fff;
				background-color: #6699CC;
				border-color: #6699CC;
			}
			
			.three_msg {
				color: rgb(30, 140, 238);
				background-color: #fff;
				border-color: #fff;
			}
			
			.two_msg {
				color: #fff;
				background-color: #00B271;
				border-color: #00B271;
			}
			
			.one_msg {
				color: #1b1e21;
				background-color: #d6d8d9;
				border-color: #d6d8d9;
			}
			
			.msg_caret {
				position: absolute;
				right: 100%;
				top: 50%;
				transform: translateY(-50%);
				border: 1em solid;
				border-top-color: transparent;
				border-bottom-color: transparent;
				border-left-color: transparent;
				border-right-color: inherit;
			}
			
			.right .msg_caret {
				border-left-color: inherit;
				border-right-color: transparent;
				left: 100%;
			}
			
			.msg_value_span {
				font-size: 90%;
			}
			.msg_footer_div {
				text-align: center;
				height: 3em;
				line-height: 3em;
				margin-top: 4em;
			}
			
			.page_span {
				padding: 0.5em 1em;
				border: 1px solid #ddd;
				color: #007bff;
				background: #fff;
				cursor: default;
			}
			
			.page_btn_span {
				cursor: pointer;
			}
			
			.page_btn_span:hover {
				background: rgb(245, 245, 245);
			}
			
			.page_btn_span.active {
				background: #6699CC;
				color: #FFFFFF;
			}
			
			.page_up_span {
				margin-right: -1px;
				border-radius: 0.25em 0em 0em 0.25em;
			}
			
			.page_down_span {
				margin-left: -1px;
				border-radius: 0em 0.25em 0.25em 0em;
			}
		</style>

		<div class="info_area_div">
			<div class="left_msg_area_div">
				<div class="msg_show_panel">
				<div class="msg_row_div">
					<div class="sender_img_div">
						<img src="../static/img/萨尔茨卡默古特地区_13.jpg" />
					</div>
					<div class="alert four_msg">
						<div class="msg_caret"></div>
						<span class="msg_value_span">阿德萨夫斯达克反对vgkdsfnvjdfnvbjadfnvboadnvbodfjnhdfogafd 赛道姐啊死哦等哈苏打水份雕塑发吧</span>
						<div class="date_value">
							 2018-04-23 09:07:49
						</div>
						<div class="comment_value">
							<i class="fa fa-star-o " aria-hidden="true" data-point="5">
							</i><i class="fa fa-star-o fa_isselect" aria-hidden="true" data-point="4">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="3">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="2">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="1"></i>
						</div>
					</div>
				</div>
				<div class="msg_row_div right">
					<div class="sender_img_div">
						<img src="../static/img/萨尔茨卡默古特地区_12.jpg" />
					</div>
					<div class="alert three_msg">
						<div class="msg_caret">

						</div>

						<span class="msg_value_span">阿德萨夫斯达克反对vgkdsfnvjdfnvbjadfnvboadnvbodfjnhdfogafd 赛道姐啊死哦等哈苏打水份雕塑发吧</span>
						<div class="date_value">
							 2018-04-23 09:07:49
						</div>
						<div class="comment_value">
							<i class="fa fa-star-o " aria-hidden="true" data-point="5">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="4">
							</i><i class="fa fa-star-o fa_isselect" aria-hidden="true" data-point="3">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="2">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="1"></i>
						</div>
					</div>
				</div>
				<div class="msg_row_div">
					<div class="sender_img_div">
						<img src="../static/img/萨尔茨卡默古特地区_11.jpg" />
					</div>
					<div class="alert two_msg">
						<div class="msg_caret">

						</div>
						<span class="msg_value_span">阿德萨夫斯达克反对vgkdsfnvjdfnvbjadfnvboadnvbodfjnhdfogafd 赛道姐啊死哦等哈苏打水份雕塑发吧</span>
						<div class="date_value">
							 2018-04-23 09:07:49
						</div>
						<div class="comment_value">
							<i class="fa fa-star-o " aria-hidden="true" data-point="5">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="4">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="3">
							</i><i class="fa fa-star-o fa_isselect" aria-hidden="true" data-point="2">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="1"></i>
						</div>
					</div>
				</div>
				<div class="msg_row_div right">
					<div class="sender_img_div">
						<img src="../static/img/萨尔茨卡默古特地区_10.jpg" />
					</div>

					<div class="alert one_msg">
						<div class="msg_caret">

						</div>

						<span class="msg_value_span">阿德萨夫斯达克反对vgkdsfnvjdfnvbjadfnvboadnvbodfjnhdfogafd 赛道姐啊死哦等哈苏打水份雕塑发吧</span>
						<div class="date_value">
							 2018-04-23 09:07:49
						</div>
						<div class="comment_value">
							<i class="fa fa-star-o " aria-hidden="true" data-point="5">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="4">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="3">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="2">
							</i><i class="fa fa-star-o fa_isselect" aria-hidden="true" data-point="1"></i>
						</div>
					</div>
				</div>
				</div>
				<div class="msg_footer_div">
					<span class="page_span page_btn_span page_up_span">
					上一页
					</span>
					<span class="page_span  page_info_span">
						3/5
					</span>
					<span class="page_span page_btn_span page_down_span">
						下一页
					</span>
				</div>
			</div>

			<style type="text/css">
				.right_picture_info_area_div {
					padding: 1em;			
					width: 30%;
					float: right;
				}
				
				/* .right_picture_info_area_div .info_head_div {
					width: calc(100% - 4em);
					border-top: 1px solid;
					float: right;
				}
				
				.info_head_div .fa-info {
					padding: 0em 0.5em;
					color: #6699CC;
					float: left;
					margin-left: -1em;
					margin-top: -0.5em;
				}
				
				.info_title_span {
					word-break: break-word;
				} */
				.picture_info_area_div {
				/* width: 100%; */
				margin:1em 0;
				border: 1px solid #333333;
				padding: 0em 1em 4em 1em;
				position: relative;
				background: #fff;
			}
			
			.info_head_div {
				position: relative;
				height: 4.5em;
				padding-top: 0.5em;
				padding-bottom: 3em;
				border-bottom: 2px dashed black;
			}
			
			.head_caret_div {
				position: absolute;
				width: 1em;
				height: 1em;
				border-radius: 1em;
				background: url(../static/img/bg.png);
				border: 1px solid #333;
				display: inline-block;
				top: 0.5em;
			}
			
			.head_caret_div.left {
				left: 30%;
			}
			
			.head_caret_div.right {
				right: 30%;
			}
			
			.info_row_div {
				padding-bottom: 0.2em;
				border-bottom: 2px dashed black;
				padding-top: 1em;
			}
			
			.info_row_value {
				padding: 0em 1em;
			}
			
			.info_footer_div {
				position: absolute;
				bottom: 0em;
				width: 100%;
				left: 0em;
			}
			
			.footer_caret_div {
				width: 1.5em;
				height: 1.5em;
				position: absolute;
				right: -1px;
				bottom: -1px;
			}
			
			.footer_caret_div:after {
				content: "";
				position: absolute;
				border: 1.5em solid transparent;
				border-left-color: #333;
				border-top-color: #333;
				position: absolute;
				margin-top: -1.5em;
				margin-left: -1.5em;
			}
			
			.footer_caret_div:before {
				content: "";
				position: absolute;
				background: url(../static/img/bg.png);
				width: 3em;
				height: 3em;
				margin-top: -1.5em;
				margin-left: -1.5em;
			}
				
			</style>
			<div class="right_picture_info_area_div">
				<!-- <div class="info_head_div">
					<span class="fa fa-info fa-3x"></span>
				</div> -->
				
				<div class="picture_info_area_div">
			<div class="info_head_div">
				<div class="head_caret_div left"></div>
			
				<div class="head_caret_div right"></div>
			</div>
			<div class="info_row_div">
				<span class="info_row_value">作者： ${authorName}</span>
			</div>
			<div class="info_row_div">
				<span class="info_row_value">上传时间：${picture.createTime}</span>
			</div>
			<div class="info_row_div">
				<span class="info_row_value">点击量：${picture.clickCount}</span>
			</div>
			<div class="info_row_div">
				<span class="info_row_value">收藏量：23</span>
			</div>
			<div class="info_footer_div">
				<div class="footer_caret_div"></div>
			</div>
		</div>
			</div>
		</div>

		<div class="msg_panel_area_div">
			<div class="msg_panel_div">
				<div class="msg_panel_content_div">
					<div class="table_div">

					</div>
					<div class="tr_modo" style="display: none;">
						<div class="table_tr">
							<div class="td_name width_20">
								<div class="cell_value">
									<img src="" style="max-width: 100%;" />
									<div class="send_name_value">
										王王王
									</div>
								</div>
							</div>
							<div class="td_value width_80">
								<div class="cell_value">
									阿德萨夫斯达克反对vgkdsfnvjdfnvbjadfnvboadnvbodfjnhdfogafd 赛道姐啊死哦等哈苏打水份雕塑发吧
									<div class="date_value">
										2018年5月4日 10:17:29
									</div>
									<div class="comment_value">
										<i class="fa fa-star-o " aria-hidden="true" data-point="5">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="4">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="3">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="2">
							</i><i class="fa fa-star-o" aria-hidden="true" data-point="1"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="msg_panel_footer_div">
					<div class="page_menu_div text-center">
						<span class="page_menu_span page_up_span"> 
								<i class="fa fa-angle-up" aria-hidden="true"></i>
							</span>
					</div>
					<div class="page_menu_div text-center">
						<span></span>
					</div>
					<div class="page_menu_div text-center">
						<span class="page_menu_span page_down_span"> 
								<i class="fa fa-angle-down" aria-hidden="true"></i>
							</span>
					</div>
				</div>
				<div class="msg_area_power_off_div">
					<span class="fa fa-power-off fa-lg"></span>
				</div>
				<div class="msg_area_power_div">
					<span class="fa fa-caret-right fa-2x"></span>
				</div>
			</div>
		</div>
	</body>

	<script type="text/javascript">
		$(function() {
			
			/*var  editor=iniEdit();*/
			$(".edit_btn_span i.fa").click(function() {
				if($(this).hasClass("fa_isselect")) {
					$(".edit_btn_span i.fa").removeClass("fa_isselect");
				} else {
					$(".edit_btn_span i.fa").removeClass("fa_isselect");
					$(this).addClass("fa_isselect");
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
				$(this).addClass("loading");
				
			})

			/*$(document).on("click",".page_btn_div.down_page_div:not('.disabled')",function() {
				$(".page_btn_div").addClass("disabled");
				$.when($(".picture_container div").animate({
					left: "-100%"
				}, 1000)).then(function  () {
					$(".picture_container div").first().remove();
					$(".picture_container div").first().css("left","0%");
					$(".page_btn_div").removeClass("disabled");
				})
			})*/

			/*	$(".picture_container div").first().find("img").animate({"opacity":"0"},1000);*/

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
		
		/*geiHeight();
		 function geiHeight(){
			console.log($(".picture_remark_area_div").get(0).offsetHeight);
			console.log($(".remark_value").get(0).offsetHeight);
			console.log($(".picture_info_area_div").get(0).offsetHeight)
		} */

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
		/*function iniEdit(){
			var ele=document.getElementById("msg_edit_content_div");
			
			ele.designMode="on";
			editor.document.contentEditable = true;
			return ele;
		}*/

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
		

	</script>

</html>