<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>首页</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png"
	href="<%=basePath%>assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="<%=basePath%>assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<script src="<%=basePath%>assets/js/echarts.min.js"></script>
<link rel="stylesheet" href="<%=basePath%>assets/css/amazeui.min.css" />
<link rel="stylesheet"
	href="<%=basePath%>assets/css/amazeui.datatables.min.css" />
<link rel="stylesheet" href="<%=basePath%>assets/css/app.css">
<script src="<%=basePath%>assets/js/jquery.min.js"></script>

</head>

<body data-type="index">
	<script src="<%=basePath%>assets/js/theme.js"></script>
	<div class="am-g tpl-g">
		<!-- 头部 -->
		<header>
			<!-- logo -->
			<div class="am-fl tpl-header-logo">
				<a href="javascript:;"><strong>好辣火锅</strong></a>
			</div>
			<!-- 右侧内容 -->
			<div class="tpl-header-fluid">
				<!-- 侧边切换 -->
				<div class="am-fl tpl-header-switch-button am-icon-list">
					<span> </span>
				</div>
				<!-- 搜索 -->
				<div class="am-fl tpl-header-search">
					<form class="tpl-header-search-form" action="javascript:;">
						<button class="tpl-header-search-btn am-icon-search"></button>
						<input class="tpl-header-search-box" type="text"
							placeholder="搜索内容...">
					</form>
				</div>
				<!-- 其它功能-->
				<div class="am-fr tpl-header-navbar">
					<ul>
						<!-- 欢迎语 -->
						<li class="am-text-sm tpl-header-navbar-welcome"><a
							href="javascript:;">欢迎你, <span>admin</span>
						</a></li>

						<!-- 新邮件 -->
						<li class="am-dropdown tpl-dropdown" data-am-dropdown><a
							href="javascript:;"
							class="am-dropdown-toggle tpl-dropdown-toggle"
							data-am-dropdown-toggle> <i class="am-icon-envelope"></i> <span
								class="am-badge am-badge-success am-round item-feed-badge">4</span>
						</a> <!-- 弹出列表 -->
							<ul class="am-dropdown-content tpl-dropdown-content">
								<li class="tpl-dropdown-menu-messages"><a
									href="javascript:;"
									class="tpl-dropdown-menu-messages-item am-cf">
										<div class="menu-messages-ico">
											<img src="<%=basePath%>assets/img/user04.png" alt="">
										</div>
										<div class="menu-messages-time">3小时前</div>
										<div class="menu-messages-content">
											<div class="menu-messages-content-title">
												<i class="am-icon-circle-o am-text-success"></i> <span>夕风色</span>
											</div>
											<div class="am-text-truncate">Amaze UI 的诞生，依托于 GitHub
												及其他技术社区上一些优秀的资源；Amaze UI 的成长，则离不开用户的支持。</div>
											<div class="menu-messages-content-time">2016-09-21 下午
												16:40</div>
										</div>
								</a></li>

								<li class="tpl-dropdown-menu-messages"><a
									href="javascript:;"
									class="tpl-dropdown-menu-messages-item am-cf">
										<div class="menu-messages-ico">
											<img src="<%=basePath%>assets/img/user02.png" alt="">
										</div>
										<div class="menu-messages-time">5天前</div>
										<div class="menu-messages-content">
											<div class="menu-messages-content-title">
												<i class="am-icon-circle-o am-text-warning"></i> <span>禁言小张</span>
											</div>
											<div class="am-text-truncate">为了能最准确的传达所描述的问题，
												建议你在反馈时附上演示，方便我们理解。</div>
											<div class="menu-messages-content-time">2016-09-16 上午
												09:23</div>
										</div>
								</a></li>
								<li class="tpl-dropdown-menu-messages"><a
									href="javascript:;"
									class="tpl-dropdown-menu-messages-item am-cf"> <i
										class="am-icon-circle-o"></i> 进入列表…
								</a></li>
							</ul></li>

						<!-- 新提示 -->
						<li class="am-dropdown" data-am-dropdown><a
							href="javascript:;" class="am-dropdown-toggle"
							data-am-dropdown-toggle> <i class="am-icon-bell"></i> <span
								class="am-badge am-badge-warning am-round item-feed-badge">5</span>
						</a> <!-- 弹出列表 -->
							<ul class="am-dropdown-content tpl-dropdown-content">
								<li class="tpl-dropdown-menu-notifications"><a
									href="javascript:;"
									class="tpl-dropdown-menu-notifications-item am-cf">
										<div class="tpl-dropdown-menu-notifications-title">
											<i class="am-icon-line-chart"></i> <span> 有6笔新的销售订单</span>
										</div>
										<div class="tpl-dropdown-menu-notifications-time">12分钟前
										</div>
								</a></li>
								<li class="tpl-dropdown-menu-notifications"><a
									href="javascript:;"
									class="tpl-dropdown-menu-notifications-item am-cf">
										<div class="tpl-dropdown-menu-notifications-title">
											<i class="am-icon-star"></i> <span> 有3个来自人事部的消息</span>
										</div>
										<div class="tpl-dropdown-menu-notifications-time">30分钟前
										</div>
								</a></li>
								<li class="tpl-dropdown-menu-notifications"><a
									href="javascript:;"
									class="tpl-dropdown-menu-notifications-item am-cf">
										<div class="tpl-dropdown-menu-notifications-title">
											<i class="am-icon-folder-o"></i> <span> 上午开会记录存档</span>
										</div>
										<div class="tpl-dropdown-menu-notifications-time">1天前</div>
								</a></li>


								<li class="tpl-dropdown-menu-notifications"><a
									href="javascript:;"
									class="tpl-dropdown-menu-notifications-item am-cf"> <i
										class="am-icon-bell"></i> 进入列表…
								</a></li>
							</ul></li>

						<!-- 退出 -->
						<li class="am-text-sm"><a href="javascript:;"> <span
								class="am-icon-sign-out"></span> 退出
						</a></li>
					</ul>
				</div>
			</div>

		</header>
		<!-- 风格切换 -->
		<div class="tpl-skiner">
			<div class="tpl-skiner-toggle am-icon-cog"></div>
			<div class="tpl-skiner-content">
				<div class="tpl-skiner-content-title">选择主题</div>
				<div class="tpl-skiner-content-bar">
					<span class="skiner-color skiner-white" data-color="theme-white"></span>
					<span class="skiner-color skiner-black" data-color="theme-black"></span>
				</div>
			</div>
		</div>
		<!-- 侧边导航栏 -->
		<div class="left-sidebar">
			<!-- 用户信息 -->
			<div class="tpl-sidebar-user-panel">
				<div class="tpl-user-panel-slide-toggleable">
					<div class="tpl-user-panel-profile-picture">
						<img src="<%=basePath%>assets/img/user04.png" alt="">
					</div>
					<span class="user-panel-logged-in-text"> <i
						class="am-icon-circle-o am-text-success tpl-user-panel-status-icon"></i>
						小张
					</span> <a href="javascript:;" class="tpl-user-panel-action-link"> <span
						class="am-icon-pencil"></span> 账号设置
					</a>
				</div>
			</div>

			<!-- 菜单 -->
			<ul class="sidebar-nav">
				<li class="sidebar-nav-link"><a
					href="<%=basePath%>jsp/index.jsp" class="active"> <i
						class="am-icon-home sidebar-nav-link-logo"></i> 首页
				</a></li>
				<li class="sidebar-nav-link"><a href="<%=basePath%>jsp/pay.jsp">
						<i class="am-icon-table sidebar-nav-link-logo"></i> 买单结算
				</a></li>
				<li class="sidebar-nav-link"><a
					href="<%=basePath%>desk/deskList.do"> <i
						class="am-icon-calendar sidebar-nav-link-logo"></i> 前台服务
				</a></li>

				<li class="sidebar-nav-link"><a href="javascript:;"
					class="sidebar-nav-sub-title"> <i
						class="am-icon-table sidebar-nav-link-logo"></i> 菜品管理 <span
						class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
				</a>
					<ul class="sidebar-nav sidebar-nav-sub">
						<li class="sidebar-nav-link"><a
							href="<%=basePath%>recipe/recipeList.do"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 菜品列表
						</a></li>

						<li class="sidebar-nav-link"><a
							href="<%=basePath%>jsp/form.jsp"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 添加菜品
						</a></li>
					</ul></li>
				<li class="sidebar-nav-link"><a href="javascript:;"
					class="sidebar-nav-sub-title"> <i
						class="am-icon-table sidebar-nav-link-logo"></i> 会员管理 <span
						class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
				</a>
					<ul class="sidebar-nav sidebar-nav-sub">
						<li class="sidebar-nav-link"><a
							href="<%=basePath%>customer/customerList.do"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 会员列表
						</a></li>

						<li class="sidebar-nav-link"><a
							href="<%=basePath%>jsp/addMembers.jsp"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 添加会员
						</a></li>
					</ul></li>
				<li class="sidebar-nav-link"><a href="javascript:;"
					class="sidebar-nav-sub-title"> <i
						class="am-icon-table sidebar-nav-link-logo"></i> 财务管理 <span
						class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
				</a>
					<ul class="sidebar-nav sidebar-nav-sub">
						<li class="sidebar-nav-link"><a
							href="<%=basePath%>order/orderList.do"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 订单列表
						</a></li>

						<li class="sidebar-nav-link"><a
							href="<%=basePath%>jsp/day.jsp"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 日结算
						</a></li>
						<li class="sidebar-nav-link"><a
							href="<%=basePath%>jsp/sum.jsp"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 总结算
						</a></li>
					</ul></li>
				<li class="sidebar-nav-link"><a href="javascript:;"
					class="sidebar-nav-sub-title"> <i
						class="am-icon-table sidebar-nav-link-logo"></i> 库存管理 <span
						class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
				</a>
					<ul class="sidebar-nav sidebar-nav-sub">
						<li class="sidebar-nav-link"><a
							href="<%=basePath%>jsp/order.jsp"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 在线订货
						</a></li>

						<li class="sidebar-nav-link"><a
							href="<%=basePath%>jsp/GRN.jsp"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 导入入库单
						</a></li>
					</ul></li>
				<li class="sidebar-nav-link"><a href="javascript:;"
					class="sidebar-nav-sub-title"> <i
						class="am-icon-table sidebar-nav-link-logo"></i> 员工管理 <span
						class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
				</a>
					<ul class="sidebar-nav sidebar-nav-sub">
						<li class="sidebar-nav-link"><a
							href="<%=basePath%>staff/staffList.do"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 员工列表
						</a></li>

						<li class="sidebar-nav-link"><a
							href="<%=basePath%>jsp/addEmployees.jsp"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 添加员工
						</a></li>
						<li class="sidebar-nav-link"><a
							href="<%=basePath%>jsp/payroll.jsp"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 发放薪资
						</a></li>
					</ul></li>

			</ul>
		</div>


		<!-- 内容区域 -->
		<div class="tpl-content-wrapper">

			<div class="container-fluid am-cf">
				<div class="row">
					<div class="am-u-sm-12 am-u-md-12 am-u-lg-9">
						<div class="page-header-heading">
							<span class="am-icon-home page-header-heading-icon"></span> 首页 <small>好辣火锅</small>
						</div>
						<p class="page-header-description" id="title">好辣火锅，汤底味美，醇厚，配菜种类多样，菜品新鲜可口！</p>
					</div>
					<div class="am-u-lg-3 tpl-index-settings-button">
						<button type="button" class="page-header-button" id="set">
							<span class="am-icon-paint-brush"></span> 设置
						</button>
					</div>
				</div>

			</div>

			<div class="row-content am-cf">
				<div class="row  am-cf">
					<div class="am-u-sm-12 am-u-md-12 am-u-lg-4">
						<div class="widget am-cf">
							<div class="widget-head am-cf">
								<div class="widget-title am-fl">月度财务收支计划</div>
								<div class="widget-function am-fr">
									<a href="javascript:;" class="am-icon-cog"></a>
								</div>
							</div>
							<div class="widget-body am-fr">
								<div class="am-fl">
									<div class="widget-fluctuation-period-text">
										￥61746.45
										<button class="widget-fluctuation-tpl-btn">
											<i class="am-icon-calendar"></i> 更多月份
										</button>
									</div>
								</div>
								<div class="am-fr am-cf">
									<div class="widget-fluctuation-description-amount text-success"
										am-cf>+￥30420.56</div>
									<div class="widget-fluctuation-description-text am-text-right">
										8月份收入</div>
								</div>
							</div>
						</div>

					</div>
					<div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
						<div class="widget widget-primary am-cf">
							<div class="widget-statistic-header">本季度利润</div>
							<div class="widget-statistic-body">
								<div class="widget-statistic-value">￥27,294</div>
								<div class="widget-statistic-description">
									本季度比去年多收入 <strong>2593元</strong> 人民币
								</div>
								<span class="widget-statistic-icon am-icon-credit-card-alt"></span>
							</div>
						</div>
					</div>
					<div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
						<div class="widget widget-purple am-cf">
							<div class="widget-statistic-header">本季度利润</div>
							<div class="widget-statistic-body">
								<div class="widget-statistic-value">￥27,294</div>
								<div class="widget-statistic-description">
									本季度比去年多收入 <strong>2593元</strong> 人民币
								</div>
								<span class="widget-statistic-icon am-icon-support"></span>
							</div>
						</div>
					</div>
				</div>

				<div class="row am-cf">
					<div class="am-u-sm-12 am-u-md-8">
						<div class="widget am-cf">
							<div class="widget-head am-cf">
								<div class="widget-title am-fl">月度财务收支计划</div>
								<div class="widget-function am-fr">
									<a href="javascript:;" class="am-icon-cog"></a>
								</div>
							</div>
							<div
								class="widget-body-md widget-body tpl-amendment-echarts am-fr"
								id="tpl-echarts"></div>
						</div>
					</div>



					<div
						class="am-u-sm-12 am-u-md-12 am-u-lg-4 widget-margin-bottom-lg ">
						<div class="tpl-user-card am-text-center widget-body-lg">
							<div class="tpl-user-card-title">小张</div>
							<div class="achievement-subheading">月度最佳员工</div>
							<img class="achievement-image"
								src="<%=basePath%>assets/img/user07.png" alt="">
							<div class="achievement-description">
								小张在 <strong>30天内</strong> 销售额高达 <strong>10000</strong>元。
							</div>
						</div>
					</div>

				</div>


				<div class="row am-cf">

					<div class="am-u-sm-12 am-u-md-4">
						<div class="widget am-cf">
							<div class="widget-head am-cf">
								<div class="widget-title am-fl">商家推荐菜品</div>
								<div class="widget-function am-fr">
									<a href="javascript:;" class="am-icon-cog"></a>
								</div>
							</div>
							<div class="widget-body widget-body-md am-fr">

								<div class="am-progress-title">
									羊肉卷 <span class="am-fr am-progress-title-more">28% /
										100%</span>
								</div>
								<div class="am-progress">
									<div class="am-progress-bar" style="width: 15%"></div>
								</div>
								<div class="am-progress-title">
									肥牛卷 <span class="am-fr am-progress-title-more">28% /
										100%</span>
								</div>
								<div class="am-progress">
									<div class="am-progress-bar  am-progress-bar-warning"
										style="width: 75%"></div>
								</div>
								<div class="am-progress-title">
									生菜 <span class="am-fr am-progress-title-more">28% / 100%</span>
								</div>
								<div class="am-progress">
									<div class="am-progress-bar am-progress-bar-danger"
										style="width: 35%"></div>
								</div>
							</div>
						</div>
					</div>


					<div
						class="am-u-sm-12 am-u-md-12 am-u-lg-8 widget-margin-bottom-lg">

						<div class="widget am-cf widget-body-lg">

							<div class="widget-body  am-fr">
								<div class="am-scrollable-horizontal ">
									<table width="100%"
										class="am-table am-table-compact am-text-nowrap tpl-table-black "
										id="example-r">
										<thead>
											<tr>
												<th>热门菜品</th>
												<th>推荐指数</th>
												<th>客户评价</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
											<tr class="gradeX">
												<td>冻豆腐</td>
												<td>5颗星</td>
												<td>非常满意</td>
												<td>
													<div class="tpl-table-black-operation">
														<a href="javascript:;"> <i class="am-icon-pencil"></i>
															编辑
														</a> <a href="javascript:;"
															class="tpl-table-black-operation-del"> <i
															class="am-icon-trash"></i> 删除
														</a>
													</div>
												</td>
											</tr>
											<tr class="even gradeC">
												<td>冻豆腐</td>
												<td>5颗星</td>
												<td>非常满意</td>
												<td>
													<div class="tpl-table-black-operation">
														<a href="javascript:;"> <i class="am-icon-pencil"></i>
															编辑
														</a> <a href="javascript:;"
															class="tpl-table-black-operation-del"> <i
															class="am-icon-trash"></i> 删除
														</a>
													</div>
												</td>
											</tr>
											<tr class="gradeX">
												<td>冻豆腐</td>
												<td>5颗星</td>
												<td>非常满意</td>
												<td>
													<div class="tpl-table-black-operation">
														<a href="javascript:;"> <i class="am-icon-pencil"></i>
															编辑
														</a> <a href="javascript:;"
															class="tpl-table-black-operation-del"> <i
															class="am-icon-trash"></i> 删除
														</a>
													</div>
												</td>
											</tr>
											<tr class="even gradeC">
												<td>冻豆腐</td>
												<td>5颗星</td>
												<td>非常满意</td>
												<td>
													<div class="tpl-table-black-operation">
														<a href="javascript:;"> <i class="am-icon-pencil"></i>
															编辑
														</a> <a href="javascript:;"
															class="tpl-table-black-operation-del"> <i
															class="am-icon-trash"></i> 删除
														</a>
													</div>
												</td>
											</tr>
											<tr class="even gradeC">
												<td>冻豆腐</td>
												<td>5颗星</td>
												<td>非常满意</td>
												<td>
													<div class="tpl-table-black-operation">
														<a href="javascript:;"> <i class="am-icon-pencil"></i>
															编辑
														</a> <a href="javascript:;"
															class="tpl-table-black-operation-del"> <i
															class="am-icon-trash"></i> 删除
														</a>
													</div>
												</td>
											</tr>


											<!-- more data -->
										</tbody>
									</table>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 弹出层 -->
	<div class="am-modal am-modal-no-btn" id="calendar-edit-box">
		<div class="am-modal-dialog tpl-model-dialog">
			<div class="am-modal-hd">
				<a href="javascript: void(0)"
					class="am-close edit-box-close am-close-spin" data-am-modal-close>&times;</a>
			</div>
			<div class="am-modal-bd tpl-am-model-bd am-cf">

				<form class="am-form tpl-form-border-form">
					<div class="am-form-group am-u-sm-12">
						<label for="user-name"
							class="am-u-sm-12 am-form-label am-text-left">个性宣传语</label>
						<div class="am-u-sm-12">
							<input type="text"
								class="tpl-form-input am-margin-top-xs calendar-edit-box-title"
								id="user-name">
						</div>
						<div class="am-form-group">
							<div class="am-u-sm-12 am-u-sm-push-12" style="margin-top: 10px;">
								<button type="button"
									class="am-btn am-btn-primary tpl-btn-bg-color-success ">提交</button>
							</div>
						</div>
					</div>

				</form>

			</div>
		</div>
	</div>

	<script src="<%=basePath%>assets/js/amazeui.min.js"></script>
	<script src="<%=basePath%>assets/js/amazeui.datatables.min.js"></script>
	<script src="<%=basePath%>assets/js/dataTables.responsive.min.js"></script>
	<script src="<%=basePath%>assets/js/app.js"></script>

	<script>
		$(function() {
			var editBox = $('#calendar-edit-box');
			//var title = $("#title");
			$("#set").click(function() {
				//$('.calendar-edit-box-title').val(title)
				//  弹出框
				editBox.modal();
			});

		});
	</script>

</body>

</html>