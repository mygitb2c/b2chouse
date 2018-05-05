<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Share Picture</title>
		<link rel="stylesheet" type="text/css" href="static/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="static/css/font-awesome.css" />
		<link rel="stylesheet" type="text/css" href="static/css/buttons.css" />
		<link rel="stylesheet" type="text/css" href="static/css/css_main.css" />
		<script src="static/js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/popper.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<div class="progress_div reload_div">
			<div class="text-center">
				<span><i class="fa fa-spinner fa-pulse" aria-hidden="true"></i> 加载中...</span>
			</div>
		</div>
		<div class="progress_div tip_msg_div">
			<span class="tip_msg_value"></span>
		</div>
		<div class="row navbar_div show">
			<div class="nav_link_btn_div">
				<span class="fa fa-angle-double-up fa-2x"></span>
				<span class="fa fa-angle-double-down fa-2x"></span>
			</div>
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
		</div>
		<style type="text/css">

		</style>
		<div class="page_area_div">
			<div class="page_content_div">
			</div>
		</div>

		<div id="mycontainer">
			<div class="order_menu_div">
				<div class="order_col_div active">
					<div class="order_btn_div">
						<div class="order_btn_part_div desc_div active" data-value="desc">
							<span class="order_btn_span"> <i
							class="fa fa-sort-amount-desc"></i>
						</span>
						</div>
						<div class="order_btn_part_div asc_div " data-value="asc">
							<span class="order_btn_span"> <i
							class="fa fa-sort-amount-asc" aria-hidden="true"></i>
						</span>
						</div>
					</div>
					<div class="order_type_div" data-type="clickCount">
						<span class="order_type_value">热度</span>
					</div>
				</div>
				<div class="order_col_div">
					<div class="order_btn_div">
						<div class="order_btn_part_div desc_div " data-value="desc">
							<span class="order_btn_span"> <i
							class="fa fa-sort-amount-desc"></i>
						</span>
						</div>
						<div class="order_btn_part_div asc_div " data-value="asc">
							<span class="order_btn_span"> <i
							class="fa fa-sort-amount-asc" aria-hidden="true"></i>
						</span>
						</div>
					</div>
					<div class="order_type_div" data-type="createTime">
						<span class="order_type_value ">最新</span>
					</div>
				</div>
				<div class="order_col_div">
					<div class="order_btn_div">
						<div class="order_btn_part_div desc_div " data-value="desc">
							<span class="order_btn_span"> <i
							class="fa fa-sort-amount-desc"></i>
						</span>
						</div>
						<div class="order_btn_part_div asc_div " data-value="asc">
							<span class="order_btn_span"> <i
							class="fa fa-sort-amount-asc" aria-hidden="true"></i>
						</span>
						</div>
					</div>
					<div class="order_type_div">
						<span class="order_type_value">收藏量</span>
					</div>
				</div>
				<div class="order_col_div">
					<div class="order_btn_div">
						<div class="order_btn_part_div desc_div " data-value="desc">
							<span class="order_btn_span"> <i
							class="fa fa-sort-amount-desc"></i>
						</span>
						</div>
						<div class="order_btn_part_div asc_div " data-value="asc">
							<span class="order_btn_span"> <i
							class="fa fa-sort-amount-asc" aria-hidden="true"></i>
						</span>
						</div>
					</div>
					<div class="order_type_div" data-type="download">
						<span class="order_type_value">下载量</span>
					</div>
				</div>
				<div class="order_center_div">
					<div class="order_center_value pull-right">center</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div id="content">
				<div class="waterfall_div" isover="N">
					<div class="waterfall_col_div"></div>
					<div class="waterfall_col_div"></div>
					<div class="waterfall_col_div"></div>
					<div class="waterfall_col_div"></div>
					<div class="clearfix"></div>
				</div>
				<div class="progress_div footer_loading_div">
					<div class="footer_loading_content_div">
						<span><i class="fa fa-spinner fa-pulse fa-2x fa-fw"></i></span>
						<span>加载中...</span>
					</div>
				</div>
			</div>
	</body>
	<script type="text/javascript">
		var userId = "${userId}";
	</script>
	<script src="static/js/js_main.js" type="text/javascript" charset="utf-8"></script>

</html>