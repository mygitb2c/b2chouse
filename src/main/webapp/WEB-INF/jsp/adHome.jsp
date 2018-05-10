<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>管理中心</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/font-awesome.css" />
		<script src="${pageContext.request.contextPath}/static/js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/static/js/popper.js" type="text/javascript" charset="utf-8"></script>
		<script src="${pageContext.request.contextPath}/static/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<style type="text/css">
			body {
				background: #F5F5F5;
				color: #4f545b;
			}
			
			::-webkit-scrollbar {
				width: 8px;
			}
			
			::-webkit-scrollbar-thumb {
				background-color: #c1c1c1;
				border-radius: 4px;
			}
			
			span.fa {
				padding: 0em 0.3em;
			}
			
			.mycontainer {
				width: calc(100% - 11em);
				position: relative;
				margin-right: 11em;
			}
			
			#max_win_div {
				width: calc(100% - 9em);
				/*margin-left: 9em;*/
				display: inline-block;
				position: static;
				padding: 0.2em;
				background: #33414e;
				border-radius: 0.3em;
				border: 1px solid #CCCCCC;
				margin-top: 1em;
				display: none;
			}
			
			#max_win_div.show {
				display: inline-block;
			}
			/*图标样式*/
			
			.icons_area_div {
				width: 7em;
				padding-top: 3em;
				display: inline-block;
			}
			
			.area_col_div {
				display: inline-block;
			}
			
			.icon_div {
				text-align: center;
				padding: 0.3em;
				border: 1px solid transparent;
				cursor: pointer;
				border-radius: 0.25em;
				margin: 0.5em 0em;
			}
			
			.icon_div:hover {
				border: 1px solid rgb(177, 206, 241);
				opacity: 0.95;
			}
			
			.icon_div:active {
				background: rgba(212, 227, 244, 0.9);
			}
			
			.icon_footer_div {
				margin: 0.2em 0em;
				font-size: 0.95rem;
				-webkit-user-select: none;
				-moz-user-select: none;
				user-select: none;
			}
			/*图标样式*/
			/*窗口样式*/
			
			.win_div {
				width: calc(50% - 1em);
				padding: 0.25em 0.25em 0em 0.25em;
				background: #76828e;
				border-radius: 0.3em;
				border: 1px solid #CCCCCC;
				position: absolute;
				left: calc(2% + 5.5em);
				top: 0.3em;
				overflow: hidden;
				display: none;
				height: 700px;
			}
			
			.win_div.max {
				width: 105%;
			}
			
			.win_div.show {
				display: block;
			}
			
			.win_div.max_model {
				display: none !important;
			}
			
			.win_div.min {
				position: fixed !important;
				left: calc(100% - 11em) !important;
				cursor: pointer;
			}
			
			.win_div.min:hover {
				background: #33414e;
			}
			
			.win_div.mining {
				height: 3em !important;
			}
			
			.win_div.active {
				background: #33414e;
				z-index: 1;
			}
			
			.win_head_div {
				background: inherit;
				height: 2.75em;
				line-height: 2.75em;
				color: #fff;
				-moz-user-select: none;
				-webkit-user-select: none;
			}
			
			.win_name_div {
				float: left;
				-webkit-line-clamp: 1;
				text-overflow: ellipsis;
				overflow: hidden;
				white-space: nowrap;
				width: calc(100% - 7em);
			}
			
			.min .win_name_div {
				width: 100%;
			}
			
			.win_div:not(.max) .fa-window-restore,
			.win_div.max .fa-window-maximize {
				display: none;
			}
			
			.win_div:not(.max) .fa-window-maximize,
			.win_div.max .fa-window-restore {
				display: inline-block;
			}
			
			.mining .win_tool_menu_div,
			.mining .win_body_div,
			.min .win_tool_menu_div,
			.maxing .win_tool_menu_div {
				display: none;
			}
			
			.win_tool_menu_div {
				float: right;
				font-size: 1rem;
			}
			
			.win_tool_menu_div>span.fa {
				margin: 0em 0.3em;
				padding: 0.2em;
				cursor: pointer;
			}
			
			.win_tool_menu_div>span.fa:active {
				background: #fff;
				color: #32383E;
				border-radius: 0.25em;
			}
			
			.win_body_div {
				background: #fff;
				overflow-y: auto;
				height: calc(100% - 3em);
				position:relative;
				white-space: nowrap;
			}
			
			input[type='text'] {
				outline: none;
			}
			
			.condition_input {
				padding: 0;
				border: none;
				background: transparent;
				width: 100%;
				font-size: 90%;
				color: #768399;
			}
			
			.condition_div,
			.condition_btn_list_div {
				padding: 0.7em 0.5em;
				border-left: 5px solid transparent;
				width: 100%;
				border-bottom: 1px dashed #ccc;
				border-top: 1px dashed #ccc;
				margin-bottom: -1px;
			}
			
			.condition_div:hover {
				border-left-color: #6699CC;
				background: #E6E6E6;
			}
			
			.info_condition_menu_div {
				padding: 0.5em 0em;
				width: 20%;
				max-width: 15em;
				float: left;
				border-right: 1px solid #E6E6E6;
				height: 100%;
				overflow: hidden;
				text-overflow: ellipsis;
				white-space: nowrap;
				position: relative;
			}
			
			.condition_group_div {
				padding-bottom: 1em;
			}
			
			.data_content_div {
				width: calc(100% - 15em);
				min-width: 80%;
				display: inline-block;
				overflow-y: auto;
				height: 100%;
				white-space: normal;
			}
			
			.data_card_div {
				position: relative;
				display: inline-block;
				margin: 0.5em 0em 0.5em 2em;
				background: #E8E8FF;
				border-radius: 0.25em;
				padding: 0.5em 2.5em;
			}
			/*.max .data_card_div {
				width: calc(33% - 2em);
			}*/
			/*.win_div:not(.max) .data_card_div {
				width: calc(50% - 2.5em);
			}*/
			
			.win_div.changeSize {
				-webkit-user-select: none;
				-moz-user-select: none;
				user-select: none;
			}
			
			.user_info_div {
				
			}
			
			.user_img_div {
				position: absolute;
				left: -2em;
				top: calc(50% - 2em);
			}
			
			.user_img_div img {
				width: 4em;
				height: 4em;
				border-radius: 4em;
				padding: 0.5em;
				background: #fff;
			}
			
			.half_circle {
				width: 2.5em;
				border: 2.5em solid #f5f5f5;
				border-left: none;
				border-radius: 0em 2.5em 2.5em 0em;
				position: absolute;
				top: calc(50% - 2.5em);
				left: -1px;
			}
			
			.info_row {
				margin: 0.3em 0.2em;
				padding-bottom: 0.3;
			}
			.info_name_span{
				font-size:90%;
				font-weight: bold;
			}
			
			.info_value_span {
				font-size: 80%;
			}
			
			.create_time_div {
				font-size: 0.95em;
			}
			
			.user_is_lock_div {
				width: 1em;
				height: 1em;
				border-radius: 1em;
				position: absolute;
				background: rgb(73, 183, 0);
				border: 1px solid rgb(85, 213, 0);
				top: 0.25em;
				left: 0.5em;
			}
			
			.data_card_menu_div {
				position: absolute;
				height: 100%;
				width: 2em;
				right: 0em;
				text-align: center;
				top: 0;
			}
			
			.data_card_menu_div>div {
				cursor: pointer;
				position: absolute;
				width: 100%;
				padding: 0.3em;
				background: #6699CC;
				color: #fff;
			}
			
			.show_info_btn_div {
				border-radius: 0em 0.25em;
			}
			
			.edit_info_btn_div {
				bottom: 0em;
				border-radius: 0.25em 0em;
			}
			
			.picture_div {
				width: 100%;
				text-align: center;
			}
			
			.picture_div img {
				max-width: 15em;
				max-height: 15em;
			}
			
			.model_win_area_div {
				position: fixed;
				width: 100%;
				height: 100%;
				z-index: 3;
				background: rgba(0, 0, 0, .5);
				display: none;
			}
			
			.model_win_div {
				background: #f7f7f7;
				width: 600px;
				height: 400px;
				border: none;
				position: absolute;
				left: 50%;
				top: 50%;
				transform: translate(-50%, -50%);
				border-radius: 0.25em;
				box-shadow: 3px 3px 10px #333;
			}
			
			.model_win_head_div {
				text-align: center;
				font-size: 1.3rem;
				background: #e4e9eb;
				height: 3rem;
				line-height: 3rem;
				border-radius: 0.25em 0.25em 0em 0em;
				position: relative;
				/*border-bottom: 2px dashed #ccc;*/
			}
			
			.model_win_head_div .fa-times {
				position: absolute;
				right: 0em;
				top: 50%;
				transform: translateY(-50%);
				padding: 0.5rem;
				cursor: pointer;
			}
			
			.model_win_name_span {}
			
			.model_win_body_div {
				height: calc(100% - 3rem);
			}
			
			.model_td_div {
				padding: 0.5em 1em;
			}
			
			.model_td_div input {
				padding: 0.3em 0em;
				border: none;
				/* border-bottom: 1px solid #ccc; */
				background: transparent;
				width: calc(70% - 1.5em);
			}
			
			.td_name {
				text-align: center;
				width: 30%;
				display: inline-block;
				color: #768399;
				font-weight: bold;
			}
			
			.td_value {
				font-size: 80%;
			}
			
			.menu_title {
				font-weight: bold;
				padding: 0.3em;
			}
			
			.min .win_size_span {
				display: none;
			}
			
			.win_size_span {
				width: 1em;
				height: 1em;
				position: absolute;
				bottom: 0em;
				right: 0em;
				cursor: nw-resize;
			}
			.loading_area_div{
			    position: absolute;
    width: 100%;
    height: 100%;
    z-index: 1;
    text-align: center;
    background: rgba(0,0,0,0.5);
    bottom: 0em;
    display: none;
			}
			.loading_content_div{
			width: 10em;
    height: 5em;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    background: #fff;
    line-height: 5em;
    border-radius: 0.25em;
    box-shadow: 0px 0px 10px #333;
			}
			
			button:focus {
				outline: none;
			}
			
			.group_btn_div {
				text-align: center;
				padding: 0.7em 0em;
			}
			
			.group_btn_div button {
				border: none;
				padding: 0.5em 3em;
				/* border: 1px solid #ccc; */
				background: #6699CC;
				/* border-radius: 0.5em; */
				color: #fff;
				cursor: pointer;
			}
			
			.group_btn_div button:active {
				color: #486b8e;
			}
			
			.btn_row_div {
				text-align: center;
				font-size: 90%;
				white-space: normal;
			}
			
			.btn_row_div button {
				width: 40%;
				padding: 0.3rem 0rem;
				background: #EEE;
				border: 1px solid #DDD;
				color: #CCC;
				cursor: pointer;
				text-overflow: ellipsis;
				overflow: hidden;
				min-width: 5em;
			}
			
			.btn_row_div button.active {
				background: #33414e;
				border-color: #41484e;
				color: #fff;
			}
			
			button .fa {
				display: none;
			}
			
			button.desc .desc {
				display: inline-block;
			}
			
			button:not(.desc) .asc {
				display: inline-block;
			}
			
			.btn_row_div .left_btn {
				border-radius: 3em 0em 0em 3em;
			}
			
			.btn_row_div .right_btn {
				border-radius: 0em 3em 3em 0em;
				border-left: none;
			}
			.win_page_area_div {
				text-align: center;
    height: 3em;
    line-height: 3em;
    margin-top: 4em;
    position: absolute;
    bottom: 0em;
    width: 90%;
    left: 5%;
			}
			
			.page_span {
				padding: 2% 5%;
				border: 1px solid #ddd;
				color: #007bff;
				background: #fff;
				cursor: default;
			}
			
			.page_btn_span {
				cursor: pointer;
				user-select:none;
			}
			.page_btn_span.disabled{
				color: #CCC;
			}
			
			.page_btn_span:hover {
				background: rgb(245, 245, 245);
			}
			
			.page_btn_span:not(.disabled).active {
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
	</head>

	<body>
		<div class="model_win_area_div">
			<div class="model_win_div">
				<div class="model_win_head_div">
					<span class="model_win_name_span">编辑</span>
					<span class="fa fa-times"></span>
				</div>
				<div class="model_win_body_div">
					<div class="model_td_div" data-name="mw_user_username">
						<span class="td_name">用户编号：</span>
						<span class="td_value" name="userId">79DC6FA4F265451E8C2947E26FFC7713</span>
					</div>
					<div class="model_td_div" data-name="mw_user_username">
						<span class="td_name">用户名：</span>

						<input type="text" value="阿萨德" class="td_value" name="userName" />
					</div>
					<div class="model_td_div" data-name="mw_user_username">
						<span class="td_name">邮箱：</span>
						<input type="text" class="td_value" name="email" value="512370345@qq.com" />
					</div>
					<div class="model_td_div" data-name="mw_user_username">
						<span class="td_name">密码：</span>
						<input type="text" class="td_value" name="password" value="79DC6FA4F265451E8C2947E26FFC7713" />
					</div>
					<div class="model_td_div" data-name="mw_user_username">
						<span class="td_name">注册时间：</span>
						<span class="td_value">2018-01-24 14:48:33</span>
					</div>
				</div>
				<div class="model_win_footer_div">

				</div>
			</div>
		</div>
		<div class="mycontainer">
			<div class="icons_area_div" align="center">
				<div class="area_col_div">
					<div class="icon_div" title="用户中心" data-key="#usercenter">
						<div class="icon_body_div">
							<span class="fa fa-address-book-o fa-3x"></span>
						</div>
						<div class="icon_footer_div">
							用户中心
						</div>
					</div>
					<div class="icon_div" title="图片中心" data-key="#picturecenter">
						<div class="icon_body_div">
							<span class="fa fa fa-picture-o fa-3x"></span>
						</div>
						<div class="icon_footer_div">
							图片中心
						</div>
					</div>
					<div class="icon_div" title="留言中心" data-key="#messagecenter">
						<div class="icon_body_div">
							<span class="fa fa fa-comments fa-3x"></span>
						</div>
						<div class="icon_footer_div">
							留言中心
						</div>
					</div>
				</div>
			</div>
			<div id="max_win_div" class="pull-right">
				<div class="win_head_div">
					<div class="win_name_div">
						超级窗口
					</div>
					<div class="win_tool_menu_div">
						<span class="fa fa-window-close" aria-hidden="true"></span>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="win_body_div">

				</div>
			</div>
			<div class="clearfix"></div>
			<div class="win_div max" id="usercenter_win">
				<span class="win_size_span"></span>
				<div class="win_head_div">
					<div class="win_name_div">
						<span class="fa fa-address-book-o"></span><span class="win_name_span">用户管理中心</span>
					</div>
					<div class="win_tool_menu_div">
						<span class="fa fa-window-minimize" aria-hidden="true"></span>
						<span class="fa fa-window-maximize" aria-hidden="true"></span>
						<span class="fa fa-window-restore" aria-hidden="true"></span>
						<span class="fa fa-window-close" aria-hidden="true"></span>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="win_body_div">
				<div class="loading_area_div">
					<div class="loading_content_div">
						<span class="fa fa-cog fa-spin"></span>
						<span class="">加载中...</span>
					</div>
				</div>
					<div class="info_condition_menu_div">
						<div class="condition_group_div">
							<div class="menu_title">
								数据过滤<span class="fa fa-search fa-lg"></span>
							</div>
							<div class="condition_div">
								<input type="text" name="cd_user_userId" class="condition_input" placeholder="用户编号" />
							</div>
							<div class="group_btn_div">
								<button class="win_search_btn run_eval run_eval" data-eval="">精确查找</button>
							</div>
							<div class="condition_div">
								<input type="text" name="cd_user_userName" class="condition_input" placeholder="用户名" />
							</div>
							<div class="condition_div">
								<input type="text" name="cd_user_email" class="condition_input" placeholder="邮箱" />
							</div>
							<div class="condition_btn_list_div">
								<div class="btn_row_div">
									<button class="left_btn desc active" data-type="createTime" data-value="desc">最新<span class="fa fa-sort-numeric-desc desc"></span><span class="fa fa-sort-numeric-asc asc"></span></button><button class="right_btn desc" data-value="desc" data-type="userName">用户名<span class="fa fa-sort-alpha-desc desc"></span><span class="fa fa-sort-alpha-asc asc"></span></button>
								</div>

							</div>
							<div class="group_btn_div">
								<button class="win_search_btn run_eval" data-eval="">过 滤</button>
							</div>
						</div>
					</div>
					<div class="data_content_div">
						<div class="data_card_div">
							<div class="user_img_div">
								<img src="static/img/萨尔茨卡默古特地区_10.jpg" />
							</div>
							<div class="user_info_area_div">
								<!--<div class="half_circle"></div>-->
								<div class="user_info_div">
									<div class="info_row user_name_div">
										<span class="info_name_span">用户名：</span>
										<span class="info_value_span">往往往往</span>
									</div>
									<div class="info_row  email_div">
										<span class="info_name_span">邮箱：</span>
										<span class="info_value_span">512370345@qq.com</span>
									</div>
									<div class="info_row create_time_div">
										<span class="info_name_span">注册时间：</span>
										<span class="info_value_span">2018-05-05 22:01:56</span>
									</div>
									<div class="user_is_lock_div">

									</div>
								</div>
							</div>
							<div class="data_card_menu_div">
								<div class="show_info_btn_div">
									<span class="fa fa-info"></span>
								</div>
								<div class="edit_info_btn_div">
									<span class="fa fa-pencil"></span>
								</div>
							</div>
						</div>
						<div class="data_card_div">
							<div class="user_img_div">
								<img src="static/img/萨尔茨卡默古特地区_10.jpg" />
							</div>
							<div class="user_info_area_div">
								<!--<div class="half_circle"></div>-->
								<div class="user_info_div">
									<div class="info_row user_name_div">
										<span class="info_name_span">用户名：</span>
										<span class="info_value_span">往往往往</span>
									</div>
									<div class="info_row  email_div">
										<span class="info_name_span">邮箱：</span>
										<span class="info_value_span">512370345@qq.com</span>
									</div>
									<div class="info_row create_time_div">
										<span class="info_name_span">注册时间：</span>
										<span class="info_value_span">2018-05-05 22:01:56</span>
									</div>
									<div class="user_is_lock_div">

									</div>
								</div>
							</div>
							<div class="data_card_menu_div">
								<div class="show_info_btn_div">
									<span class="fa fa-info"></span>
								</div>
								<div class="edit_info_btn_div">
									<span class="fa fa-pencil"></span>
								</div>
							</div>
						</div>
						<div class="data_card_div">
							<div class="user_img_div">
								<img src="static/img/萨尔茨卡默古特地区_10.jpg" />
							</div>
							<div class="user_info_area_div">
								<!--<div class="half_circle"></div>-->
								<div class="user_info_div">
									<div class="info_row user_name_div">
										<span class="info_name_span">用户名：</span>
										<span class="info_value_span">往往往往</span>
									</div>
									<div class="info_row  email_div">
										<span class="info_name_span">邮箱：</span>
										<span class="info_value_span">512370345@qq.com</span>
									</div>
									<div class="info_row create_time_div">
										<span class="info_name_span">注册时间：</span>
										<span class="info_value_span">2018-05-05 22:01:56</span>
									</div>
									<div class="user_is_lock_div" title="未锁定">

									</div>
								</div>
							</div>
							<div class="data_card_menu_div">
								<div class="show_info_btn_div">
									<span class="fa fa-info"></span>
								</div>
								<div class="edit_info_btn_div">
									<span class="fa fa-pencil"></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="win_div max" id="picturecenter_win">
				<span class="win_size_span"></span>
				<div class="win_head_div">
					<div class="win_name_div">
						<span class="fa fa-picture-o "></span><span class="win_name_span">图片管理中心</span>
					</div>
					<div class="win_tool_menu_div">
						<span class="fa fa-window-minimize" aria-hidden="true"></span>
						<span class="fa fa-window-maximize" aria-hidden="true"></span>
						<span class="fa fa-window-restore" aria-hidden="true"></span>
						<span class="fa fa-window-close" aria-hidden="true"></span>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="win_body_div">
				<div class="loading_area_div">
					<div class="loading_content_div">
						<span class="fa fa-cog fa-spin"></span>
						<span class="">加载中...</span>
					</div>
				</div>
					<div class="info_condition_menu_div">
						<div class="condition_group_div">
							<div class="menu_title">
								数据过滤<span class="fa fa-search fa-lg"></span>
							</div>
							<div class="condition_div">
								<input type="text" name="cd_pictures_pictureId" class="condition_input" placeholder="图片编号" />
							</div>
							<div class="group_btn_div">
								<button class="win_search_btn run_eval" data-eval="getPicturesByKey(1,'id')">精确查找</button>
							</div>
							<div class="condition_div">
								<input type="text" name="cd_pictures_authorId" class="condition_input" placeholder="作者编号" />
							</div>
							<div class="condition_div">
								<input type="text" name="cd_pictures_pictureTitle" class="condition_input" placeholder="标题" />
							</div>
							<div class="condition_div">
								<input type="text" name="cd_pictures_userName" class="condition_input" placeholder="作者" />
							</div>
							<div class="condition_btn_list_div">
								<div class="btn_row_div">
									<button class="top_left_btn desc active" data-type="createTime" data-value="desc">最新<span class="fa fa-sort-numeric-desc desc"></span><span class="fa fa-sort-numeric-asc asc"></span></button><button class="top_right_btn desc" data-value="desc" data-type="pictureTItle">标题<span class="fa fa-sort-alpha-desc desc"></span><span class="fa fa-sort-alpha-asc asc"></span></button>
									<button class="bottom_left_btn desc" data-type="clickCount" data-value="desc">点击量<span class="fa fa-sort-numeric-desc desc"></span><span class="fa fa-sort-numeric-asc asc"></span></button><button class="bottom_right_btn desc" data-value="desc" data-type="download">下载量<span class="fa fa-sort-numeric-desc desc"></span><span class="fa fa-sort-numeric-asc asc"></span></button>
								</div>

							</div>
							<div class="group_btn_div">
								<button class="win_search_btn run_eval" data-eval="getPicturesByKey(1)">过 滤</button>
							</div>
						</div>
						<div class="win_page_area_div">
					<span class="page_span page_btn_span page_up_span" data-value="-1">
					上一页
					</span><span class="page_span  page_info_span" >
						<span class="page_value"></span>
						<span>/</span>
						<span class="total_page_value"></span>
					</span><span class="page_span page_btn_span page_down_span" data-value="1">
						下一页
					</span>
				</div>
					</div>
					<div class="data_content_div pictures_content">
					
					
					</div>
				</div>
			</div>
			<div class="win_div max" id="messagecenter_win">
				<span class="win_size_span"></span>
				<div class="win_head_div">
					<div class="win_name_div">
						<span class="fa fa-comments"></span><span class="win_name_span">留言管理中心</span>
					</div>
					<div class="win_tool_menu_div">
						<span class="fa fa-window-minimize" aria-hidden="true"></span>
						<span class="fa fa-window-maximize" aria-hidden="true"></span>
						<span class="fa fa-window-restore" aria-hidden="true"></span>
						<span class="fa fa-window-close" aria-hidden="true"></span>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="win_body_div">
				<div class="loading_area_div">
					<div class="loading_content_div">
						<span class="fa fa-cog fa-spin"></span>
						<span class="">加载中...</span>
					</div>
				</div>
					<div class="info_condition_menu_div">
						<div class="condition_group_div">
							<div class="menu_title">
								数据过滤<span class="fa fa-search fa-lg"></span>
							</div>
							<div class="condition_div">
								<input type="text" name="cd_user_userId" class="condition_input" placeholder="用户编号" />
							</div>
							<div class="group_btn_div">
								<button class="win_search_btn run_eval" data-eval="">精确查找</button>
							</div>
							<div class="condition_div">
								<input type="text" name="cd_user_userName" class="condition_input" placeholder="用户名" />
							</div>
							<div class="condition_div">
								<input type="text" name="cd_user_email" class="condition_input" placeholder="邮箱" />
							</div>
							<div class="condition_btn_list_div">
								<div class="btn_row_div">
									<button class="left_btn desc active" data-type="createTime" data-value="desc">最新<span class="fa fa-sort-numeric-desc desc"></span><span class="fa fa-sort-numeric-asc asc"></span></button><button class="right_btn desc" data-value="desc" data-type="userName">用户名<span class="fa fa-sort-alpha-desc desc"></span><span class="fa fa-sort-alpha-asc asc"></span></button>
								</div>

							</div>
							<div class="group_btn_div">
								<button class="win_search_btn run_eval" data-eval="">过 滤</button>
							</div>
						</div>
						<div class="msg_footer_div">
							<span class="page_span page_btn_span page_up_span">
							上一页
						</span>
					<span class="page_span  page_info_span">
						3/5
					</span><span class="page_span page_btn_span page_down_span">
						下一页
					</span>
				</div>
					</div>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript">
		$(function() {
			var left, top;
			var moving = false;
			var changing = false;
			$(document).on("mousedown", ".win_div:not('.mining,.min') .win_head_div", function(e) {
				moving = true;
				$(".win_div").removeClass("active");
				$(this).parents(".win_div").addClass("move active");
				left = e.pageX - $(this).offset().left;
				top = e.pageY - $(this).offset().top;
			})
			$(document).on("mousemove", function(e) {
				if(!moving) {
					return;
				}
				var x = e.pageX - left;
				var y = e.pageY - top;
				$(".move").css({
					"left": x,
					"top": y
				});
			}).mouseup(function() {
				moving = false;
				$(".move").removeClass("move");
			})
			/*$(document).on("mouseup", ".moving,.movemodel", function() {
				$(this).removeClass("moving movemodel");
			})*/
			$(document).on("click", ".win_div:not('.min')", function() {
				$(".win_div").removeClass("active");
				$(this).addClass("active");
			})
			/*还原窗口*/
			$(document).on("click", ".win_div.min", function() {
				$(".win_div").removeClass("active");
				$(this).addClass("active maxing");
				$(this).removeClass("min");
				var min_top = $(this).position().top;
				var point = eval("(" + $(this).attr("data-point") + ")");
				$(this).animate(point, 500, function() {
					$(this).removeClass("maxing");
				})
				var $minel = $(".win_div.min");
				for(var i = 0; i < $minel.length; i++) {
					var $el = $minel.eq(i);
					if($el.position().top > min_top) {
						$el.animate({
							"top": "-=3.5em"
						}, 200)
					}
				}

			})
			/*窗口缩小*/
			$(".win_div .win_tool_menu_div .fa-window-minimize").click(function() {
				var $win = $(this).parents(".win_div");
				var point = "{'left':'" + $win.css("left") + "','top':'" + $win.css("top") + "','width':'" + $win.css("width") + "','height':'" + $win.css("height") + "'}";
				var y = ($(".win_div.min,.win_div.mining").length * 3.5 + 5) + "em";
				$win.attr({
					"data-point": point
				});
				$win.addClass("mining");
				$win.animate({
					"width": "10em",
					"left": "100%",
					"height": "3em",
					"top": y
				}, 300, function() {
					$win.addClass("min");
					$win.removeClass("active mining");
				})
			})
			/*点击应用图标*/
			$(".icon_div").dblclick(function() {
				var name = $(this).attr("data-key") + "_win";
				$(name).addClass("show");
				$(name).click();
			})
			/*关闭窗口*/
			$(".win_div .fa-window-close").click(function() {
				$win = $(this).parents(".win_div");
				$win.removeClass("show");
				/*$win.removeAttr("style");*/
			})
			/*关闭超级窗口*/
			$("#max_win_div .fa-window-close").click(function() {
				$max_win = $("#max_win_div");
				$max_win.removeClass("show");
				$(".win_div.max_model").removeClass("max_model");
			})
			$(".win_div .fa-window-maximize").click(function() {
				/*$win = $(this).parents(".win_div")
				$(".win_div.max_model").removeClass("max_model");
				$win.addClass("max_model");
				var html = $win.children(".win_body").html();
				var name = $win.find(".win_name_div").text();
				$max_win = $("#max_win_div");
				$max_win.html(html);
				$max_win.find(".win_name_div").text(name);
				$max_win.addClass("show");*/
				$win = $(this).parents(".win_div");
				/*var width = $win.css("width");
				$win.attr("data-norw", width);*/
				$win.animate({
					"width": "96%",
					"left": "-=18%"
				}, 400, function() {
					$win.addClass("max");
				})
			})
			$(".win_div .fa-window-restore").click(function() {
				$win = $(this).parents(".win_div");
				/*var width=$win.attr("data-norw");*/
				$win.animate({
					"width": "60%",
					"left": "+=18%"
				}, 400, function() {
					$win.removeClass("max");
				})
			})
			$(".model_win_area_div .fa-times").click(function() {
				$(".model_win_area_div").css("display", "none")
			})
			$(document).on("click",".show_info_btn_div",function() {
				$(".model_win_area_div .model_win_div").removeClass("edit");
				$(".model_win_area_div").css("display", "block");

			})
			$(document).on("click",".edit_info_btn_div",function() {
				$(".model_win_area_div").css("display", "block");
				$(".model_win_area_div .model_win_div").addClass("edit");
			})
			$(".win_size_span").mousedown(function() {
				$(this).parent(".win_div").addClass("changeSize");
				changing = true;
			})
			$(document).on("mousemove", function(e) {
				if(!changing) {
					return;
				}
				$win = $(".win_div.changeSize");
				var width = e.pageX - $win.position().left;
				var height = e.pageY - $win.position().top;
				$win.css({
					"width": width,
					"height": height
				})
			}).mouseup(function() {
				changing = false;
				$(".changeSize").removeClass("changeSize");
			})

			$(document).on("click", ".btn_row_div button:not('.active')", function() {
				$(this).parent(".btn_row_div").children("button").removeClass("active");
				$(this).addClass("active");
			})
			$(document).on("click", ".btn_row_div button.active", function() {
				$(this).toggleClass("desc");
				var value = "desc";
				if(!$(this).hasClass("desc")) {
					value = "asc"
				}
				$(this).attr("data-value", value);
			})
			$(document).on("click",".run_eval:not('.disabled')",function(){
				eval($(this).attr("data-eval"));
			})
			
			$(document).on("click","#picturecenter_win .page_btn_span:not('.disabled')",function(){
				var o_page=Number($("#picturecenter_win .page_info_span .page_value").text());
				var page=o_page+Number($(this).attr("data-value"));
				getPicturesByKey(page);
			})
			
		})
		getPicturesByKey(1);
		function getPicturesByKey(page,model){
			var data=getPicturesAjaxData(model);
		 	var $load=$("#picturecenter_win .win_body_div .loading_area_div");
			data.page=page;
			$.ajax({
				"url":"admin/pictures",
				"data":data,
				"dataType":"json",
				 beforeSend:function(){
					$load.css("display","block");
				}, success:function(json){
					createPicturesHTML(json);
					setPageFoot($("#picturecenter_win .page_info_span"),page,json.totalPage)
				},complete:function(){
					$load.css("display","none");
				} 
			})
		}
		
		function getPicturesAjaxData(model){
			var data={"pageSize":"15"};
			if(model){
				var pictureId=$(".condition_input[name='cd_pictures_pictureId']").val();
				return {"pictureId":pictureId};
			}
			var authorId=$(".condition_input[name='cd_pictures_authorId']").val();
			if(authorId)
			{
				data["authorId"]=authorId;
			}
			var pictureTitle=$(".condition_input[name='cd_pictures_pictureTitle']").val();
			var userName=$(".condition_input[name='cd_pictures_userName']").val()
			var $order=$("#picturecenter_win .condition_btn_list_div button.active");
			var orderType=$order.attr("data-type");
			var orderValue=$order.attr("data-value");
			data["pictureTitle"]=pictureTitle;
			data["userName"]=userName;
			data["orderType"]=orderType;
			data["orderValue"]=orderValue;
			return data;
		}
		
		function createPicturesHTML(json){
			var html="";
			var data=json.data;
			$(".data_content_div.pictures_content .data_card_div").remove()
			for(var i=0;i<data.length;i++)
			{
				var el=data[i].pictures[0];
				var userName=data[i].userName;
				var state="green";
				if(el.isLock!="N")
				{
					state="red";
				}
				html+='<div class="data_card_div picture_card_div">'
					+'<div class="user_img_div">'
					+'<img src="user/'+el.authorId+'" /></div>'
					+'<div class="user_info_area_div">'
					+'<div class="user_info_div">'
					+'<div class="info_row user_name_div">'
					+'<span class="info_name_span">标题：</span>'
					+'<span class="info_value_span small">'+el.pictureTitle+'</span></div>'
					+'<div class="info_row  email_div">'
					+'<span class="info_name_span">作者：</span>'
					+'<span class="info_value_span small">'+userName+'</span></div>'
					+'<div class="info_row create_time_div">'
					+'<span class="info_name_span">上传时间：</span>'
					+'<span class="info_value_span small">'+el.createTime+'</span></div>'
					+'<div class="user_is_lock_div '+state+'">'
					+'</div></div></div>'
					+'<div class="picture_div">'
					+'<img src="picture/'+el.pictureId+'/false" /></div>'
					+'<div class="data_card_menu_div">'
					+'<div class="show_info_btn_div">'
					+'<span class="fa fa-info"></span></div>'
					+'<div class="edit_info_btn_div">'
					+'<span class="fa fa-pencil"></span></div></div></div>';
			}
			$(".data_content_div.pictures_content").append(html);
		}
		
		function setPageFoot($el,page,totalPage){
			$el.find(".page_value").text(page);
			$el.find(".total_page_value").text(totalPage);
			if(page<=1){
				$el.prev().addClass("disabled");
			}else{
				$el.prev().removeClass("disabled");
			}
			if(page>=totalPage)
			{
				$el.next().addClass("disabled");
			}else{
				$el.next().removeClass("disabled");
			}
		}
		
		
	</script>

</html>