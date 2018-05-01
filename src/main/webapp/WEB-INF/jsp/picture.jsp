<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${picture.pictureTitle}</title>
<link rel="stylesheet" type="text/css" href="../static/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="../static/css/buttons.css" />
<link rel="stylesheet" type="text/css" href="../static/css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="../static/css/colorPicker.css" />
<script src="../static/js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="../static/js/popper.js" type="text/javascript" charset="utf-8"></script>
<script src="../static/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
<script src="../static/js/jquery.colorPicker.min.js" type="text/javascript" charset="utf-8"></script>
<style type="text/css">
			body {
				background: rgb(240, 240, 240) url(static/img/bg.png);
				overflow-x: hidden;
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
				padding: 2em 0em;
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
				height: 2em;
				width: 2em;
				display: inline-block;
				line-height: 2em;
				background: #fff;
			}
			
			.edit_btn_div.active {
				background: rgb(240, 240, 240);
			}
			
			.comment_list_div {
				display: inline-block;
			}
			
			.star_btn_div {
				height: 2em;
				line-height: 2em;
				display: inline-block;
				text-align: center;
				padding: 0em 1em;
			}
			
			.edit_power_off_div {
				height: 2em;
				line-height: 2em;
				padding: 0em 0.2em;
			}
			
			.edit_power_off_span {
				cursor: pointer;
				padding: 0em 0.2em;
			}
			
			#msg_edit_content_div {
				height: 12em;
				border-top: 1px solid rgb(230, 230, 230);
				border-bottom: 1px solid rgb(230, 230, 230);
				/* border-radius: 0.25em 0.25em 0.25em 0.25em; */
				outline: none;
				padding: 0.6em 0.5em;
				color: #32383E;
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
				border-radius: 0.25em;
				border: 1px solid #CCC;
				margin: 0em 0.5em;
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
				bottom: 0em;
				/*left: 0.5em;*/
			}
			
			.date_value {
				position: absolute;
				bottom: 0em;
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
				right: -45%;
				width: 45%;
				padding: 0em 0.5em;
				z-index: 1;
			}
			
			.msg_edit_div:hover {
				opacity: 1;
			}
			
			.msg_edit_div {
				width: 100%;
				display: inline-block;
				border: 1px solid #333333;
				background: rgb(255, 255, 255);
				border-radius: 0.25em 0.25em 0.25em 0.25em;
				opacity: 0.1;
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
				height:100%;
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
				border:1px solid #ccc;
				background: #fff;
				border-radius: 2px;
			}
			
			.picture_container .picture_div {
				width: 70%;
				display: inline-block;
				position: relative;
			}
			
			.max_tag_div {
				position: absolute;
				right: 0em;
				top: 0em;
				color: rgb(220, 220, 220);
				padding: 0.5em;
				display: none;
				cursor: pointer;
			}
			
			.picture_div:hover .max_tag_div {
				display: inline;
			}
			
			.max_tag_div:hover {
				color: #fff;
			}
			
			.pos_center {
				position: absolute;
				right: 0%;
				top: 0%;
				/*transform: translateY(-50%);*/
				width: 26%;
				padding: 0em;
			}
			
			.picture_remark_div {
				padding: 1.5em 0.5em 0em 0.5em;
				white-space: normal;
			}
			
			.picture_remark_div .fa-border {
				border-color: #fff;
			}
			
			.remark_value {
				width: 100%;
			}
		</style>
	</head>

	<body class="">
		<div class="source_picture_div">
			<img class="source_picture" />
		</div>
		<!--<div class="row navbar_div nofix">
			<div class="col-md-4 search_div">
				<div class="input_div form-inline">
					<input type="text" placeholder="搜索" class="form-control col-md-11 search_input" /> <i class="fa fa-search fa-lg col-md-1"></i>
				</div>
			</div>
			<div class="col-md-4 logo_div">
				<span class="logo_value">Share Picture</span>
			</div>
			<div class="col-md-4 nav_menu login_menu  ">
				<a class="register_a " href="register"> <i class="fa fa-registered fa-lg"></i> 注册
				</a>
				<a class="login_a " href="login"> <i class="fa fa-map-marker fa-lg"></i> 登录
				</a>
			</div>
			<div class="col-md-4 nav_menu user_menu ">
				<a class="userinfo_a " href="my"> <i class="fa fa-user-o fa-fw fa-lg"></i> 我的
				</a>
				<a class="exit_a "> <i class="fa fa-sign-out fa-fw fa-lg"></i> 注销
				</a>
				<a class="sharepic_a " href="userinfo.html"> <i class="fa fa-share-alt fa-fw fa-lg"></i> 发图
				</a>
			</div>
		</div>-->
		<div class="msg_edit_area_div">
			<div class="edit_area_power_div">
				<span class="fa fa-pencil-square-o fa-2x edit_area_power_span"></span>
				<!--<span class="fa fa-times edit_area_power_span"></span>-->
			</div>
			<div class="msg_edit_div">
				<div class="edit_menu_div fa-lg">
					<div class="edit_btn_list_div">
						<div class="edit_btn_div">
							<span class="edit_btn_span ">
						<button class="fa fa-font" aria-hidden="true" data-exetype=""></button>
					</span>
						</div>
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
						<button class="fa fa-pencil-square" aria-hidden="true"></button>
						</span>
						</div>
						<input id="colorboard" value="#212529" />
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
				<div id="msg_edit_content_div" contenteditable="true">

				</div>
				<div class="send_btn_div">
					<span class="send_btn_span">
						<span class="btn_text">发送</span>
					<span class="fa fa-spinner fa-spin  btn_loading_text"></span>
					</span>
					<div class="clearfix">

					</div>
				</div>
			</div>
		</div>

		<div class="picture_area_div">
			<!--<div class="up_page_area_div">
				<div class="page_btn_div up_page_div">
					<i class="fa fa-angle-left fa-5x" aria-hidden="true"></i>
				</div>
			</div>
			<div class="down_page_area_div">
				<div class="page_btn_div down_page_div">
					<i class="fa fa-angle-right fa-5x" aria-hidden="true"></i>
				</div>
			</div>-->
			<div class="picture_container">
				<div class="picture_div text-center">
					<img src="${pageContext.request.contextPath}/picture/${picture.pictureId}/false" />
					<div class="max_tag_div fa-lg">
						<span class="fa fa-search-plus">
							
						</span>
					</div>
				</div>
				<div class="picture_remark_div pos_center">
					<span class="fa fa-quote-left fa-pull-left fa-3x fa-border" aria-hidden="true"></span>
					<div class="remark_value">
						asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd asdas电风扇电风扇的vsdvsdvfd
					</div>
					<!--<span class="fa fa-quote-right fa-pull-right fa-3x fa-border" aria-hidden="true"></span>
					<div class="clearfix">
						
					</div>-->
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
				width: 55%;
				margin-right: 5%;
				display: inline-block;
			}
			
			.right_picture_info_area_div {
				width: 40%;
				float: right;
			}
			
			.msg_row_div .alert {
				width: calc(100% - 6em);
				display: inline-block;
				padding-bottom: 2em;
				margin: 1em 0em 1em 6em;
				word-break: break-all;
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
			
			.left_caret {
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
			
			.msg_value_span {
				font-size: 90%;
			}
		</style>

		<div class="info_area_div">
			<div class="left_msg_area_div">
				<div class="msg_row_div">
					<div class="sender_img_div">
						<img src="static/img/萨尔茨卡默古特地区_1.jpg" />
					</div>
					<div class="alert four_msg">
						<div class="left_caret">

						</div>
						<div class="sender_name"><strong>王王王：</strong></div>
						<span class="msg_value_span">阿德萨夫斯达克反对vgkdsfnvjdfnvbjadfnvboadnvbodfjnhdfogafd 赛道姐啊死哦等哈苏打水份雕塑发吧</span>
						<div class="date_value">
							发表于 2018-04-23 09:07:49
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
				<div class="msg_row_div">
					<div class="sender_img_div">
						<img src="static/img/萨尔茨卡默古特地区_1.jpg" />
					</div>
					<div class="alert three_msg">
						<div class="left_caret">

						</div>
						<div class="sender_name"><strong>王王王：</strong></div>
						<span class="msg_value_span">阿德萨夫斯达克反对vgkdsfnvjdfnvbjadfnvboadnvbodfjnhdfogafd 赛道姐啊死哦等哈苏打水份雕塑发吧</span>
						<div class="date_value">
							发表于 2018-04-23 09:07:49
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
				<div class="msg_row_div">
					<div class="sender_img_div">
						<img src="static/img/萨尔茨卡默古特地区_1.jpg" />
					</div>
					<div class="alert two_msg">
						<div class="left_caret">

						</div>
						<div class="sender_name"><strong>王王王：</strong></div>
						<span class="msg_value_span">阿德萨夫斯达克反对vgkdsfnvjdfnvbjadfnvboadnvbodfjnhdfogafd 赛道姐啊死哦等哈苏打水份雕塑发吧</span>
						<div class="date_value">
							发表于 2018-04-23 09:07:49
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
				<div class="msg_row_div">
					<div class="sender_img_div">
						<img src="static/img/萨尔茨卡默古特地区_1.jpg" />
					</div>

					<div class="alert one_msg">
						<div class="left_caret">

						</div>
						<div class="sender_name"><strong>王王王：</strong></div>
						<span class="msg_value_span">阿德萨夫斯达克反对vgkdsfnvjdfnvbjadfnvboadnvbodfjnhdfogafd 赛道姐啊死哦等哈苏打水份雕塑发吧</span>
						<div class="date_value">
							发表于 2018-04-23 09:07:49
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
				<!--<div class="alert alert-info">
					<strong>信息!</strong> 你应该认真阅读
					<a href="#" class="alert-link">这条信息</a>。
				</div>
				<div class="alert alert-warning">
					<strong>警告!</strong> 你应该认真阅读
					<a href="#" class="alert-link">这条信息</a>。
				</div>
				<div class="alert alert-danger">
					<strong>错误!</strong> 你应该认真阅读
					<a href="#" class="alert-link">这条信息</a>。
				</div>
				<div class="alert alert-primary">
					<strong>首选!</strong> 你应该认真阅读
					<a href="#" class="alert-link">这条信息</a>。
				</div>
				<div class="alert alert-secondary">
					<strong>次要的!</strong> 你应该认真阅读
					<a href="#" class="alert-link">这条信息</a>。
				</div>
				<div class="alert alert-dark">
					<strong>深灰色!</strong>你应该认真阅读
					<a href="#" class="alert-link">这条信息</a>。
				</div>
				<div class="alert alert-light">
					<strong>灰色!</strong> 你应该认真阅读
					<a href="#" class="alert-link">这条信息</a>。
				</div>-->
			</div>

			<style type="text/css">
				.right_picture_info_area_div {
					padding: 1em;
				}
				
				.right_picture_info_area_div .info_head_div {
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
				}
			</style>
			<div class="right_picture_info_area_div">
				<div class="info_head_div">
					<span class="fa fa-info fa-3x"></span>
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
									<img src="img/demo1.png" style="max-width: 100%;" />
									<div class="send_name_value">
										王王王
									</div>
								</div>
							</div>
							<div class="td_value width_80">
								<div class="cell_value">
									阿德萨夫斯达克反对vgkdsfnvjdfnvbjadfnvboadnvbodfjnhdfogafd 赛道姐啊死哦等哈苏打水份雕塑发吧
									<div class="date_value">
										发表于 2018-04-23 09:07:49
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
			$(".edit_btn_span button:not('.fa-pencil-square')").click(function() {
				$(this).parent().parent().toggleClass("active");
				fontStyle($(this).attr("data-exetype"));
			})

			$(".edit_btn_span button.fa-pencil-square").click(function() {
				var val = $(this).attr("data-exevalue");
				$(this).css("color", val);
				color(val);
			})
			$("#colorboard").colorPicker({
				onColorChange: function(id, newValue) {
					$(".edit_btn_span .fa-pencil-square").attr("data-exevalue", newValue);
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
				areaShow($(this), ".msg_edit_area_div", "right");
				$("#msg_edit_content_div").focus();
			}))

			$(document).on("click", ".edit_power_off_span", (function() {
				areaClose($(this), ".msg_edit_area_div", "right", "45%")
			}))

			$(document).on("click", ".msg_panel_area_div:not('.active') .msg_area_power_div", (function() {
				areaShow($(this), ".msg_panel_area_div", "left");
			}))

			$(document).on("click", ".msg_panel_area_div.active .msg_area_power_off_div", (function() {
				areaClose($(this), ".msg_panel_area_div", "left", "50%")
			}))

			$(document).on("click", ".max_tag_div", function() {
				/*$(this).toggleClass("loading");
				var src = $(".picture_container img").eq(0).attr("src");
				$(".source_picture").eq(0).attr("src", src);
				$(".source_picture_div").css("display", "flex");*/
				/*demoAnimate();*/
				animateReturn();
			})

			$(".source_picture_div").click(function() {
				$(this).css("display", "none");
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

		function areaShow($this, areaname, direction) {
			var data = {};
			data[direction] = "0em";
			$(areaname).animate(data, 1000, function() {
				$(this).addClass("active");
			})
		}

		function areaClose($this, areaname, direction, width) {
			var data = {};
			data[direction] = "-" + width;
			$(areaname).animate(data, 1000, function() {
				$(this).removeClass("active");
			})
		}

		function fontStyle(style, val) {
			document.execCommand(style, false, null);
		}

		function color(val) {
			document.execCommand("foreColor", false, val);
		}
		/*function iniEdit(){
			var ele=document.getElementById("msg_edit_content_div");
			
			ele.designMode="on";
			editor.document.contentEditable = true;
			return ele;
		}*/
		demoAnimate();

		function demoAnimate() {
			$(".picture_div").animate({
				width: "100%"
			}, 2000, function() {

			})
			$(".picture_remark_div").animate({
				opacity: 0
			}, 1000, function() {
				$(".picture_remark_div").removeClass("pos_center");
				$(".picture_remark_div").animate({
					opacity: 1
				}, 1000)
			})
		}

		function animateReturn() {
			$(".picture_div").animate({
				width: "70%"
			}, 2000, function() {
				$(".picture_remark_div").addClass("pos_center");
				$(".picture_remark_div").animate({
					opacity: 1
				}, 1000)
			})
			$(".picture_remark_div").animate({
				opacity: 0
			}, 1000, function() {

			})
		}
	</script>

</html>