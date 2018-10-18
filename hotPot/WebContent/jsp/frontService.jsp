<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>前台服务</title>
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

<body data-type="widgets">
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
						禁言小张
					</span> <a href="javascript:;" class="tpl-user-panel-action-link"> <span
						class="am-icon-pencil"></span> 账号设置
					</a>
				</div>
			</div>

			<!-- 菜单 -->
			<ul class="sidebar-nav">
				<li class="sidebar-nav-link"><a
					href="<%=basePath%>jsp/index.jsp"> <i
						class="am-icon-home sidebar-nav-link-logo"></i> 首页
				</a></li>
				<li class="sidebar-nav-link"><a
					href="<%=basePath%>order/getOrder.do"> <i
						class="am-icon-table sidebar-nav-link-logo"></i> 买单结算
				</a></li>
				<li class="sidebar-nav-link"><a
					href="<%=basePath%>desk/deskList.do" class="active"> <i
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
							href="<%=basePath%>finance/financeList.do"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 日结算
						</a></li>
						<li class="sidebar-nav-link"><a
							href="<%=basePath%>finance/sumFinanceList.do"> <span
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
							href="<%=basePath%>recipe/recipeListorder.do"> <span
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
							href="<%=basePath%>staff/payStaffList.do"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 发放薪资
						</a></li>
					</ul></li>

			</ul>
		</div>

		<!-- 内容区域 -->
		<div class="tpl-content-wrapper">
			<div class="row-content am-cf">
				<div class="row">
					<div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
						<div class="widget am-cf">
							<div class="widget-head am-cf">
								<div class="widget-title  am-cf">前台服务</div>
							</div>
							<div class="widget-body  am-fr">
<<<<<<< HEAD

								<div class="am-u-sm-12 am-u-md-6 am-u-lg-6">
									<div class="am-form-group">
										<div class="am-btn-toolbar">
											<div class="am-btn-group am-btn-group-xs">
												<button type="button" id="add"
													class="am-btn am-btn-default am-btn-success">
													<span class="am-icon-plus"></span> 新增
												</button>
												<button type="button" id="delete"
													class="am-btn am-btn-default am-btn-danger">
													<span class="am-icon-trash-o"></span> 删除
												</button>
											</div>
										</div>
									</div>
								</div>

								<form action="<%=basePath %>desk/searchDesk.do" method="post">
									<div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
										<div class="am-form-group tpl-table-list-select">
											人数：<input type="text" name="dcount">
										</div>
									</div>
									<div class="am-u-sm-12 am-u-md-12 am-u-lg-3">
										<div
											class="am-input-group am-input-group-sm tpl-form-border-form cl-p">
											<select data-am-selected="{btnSize: 'sm'}" name="dstate">
												<option value="">--餐桌状态--</option>
												<option value="正在使用">正在使用</option>
												<option value="未使用">未使用</option>

											</select> <span class="am-input-group-btn">
												<button
													class="am-btn  am-btn-default am-btn-success tpl-table-list-field am-icon-search"
													type="submit"></button>
											</span>
										</div>
									</div>
								</form>

=======
>>>>>>> branch 'master' of https://github.com/baizehua88/hotpot.git
								<div class="am-u-sm-12">
									<table width="100%"
										class="am-table am-table-compact am-table-striped tpl-table-black "
										id="example-r">
										<thead>
											<tr>
												<th>桌号</th>
												<th>桌名</th>
												<th>可使用的人数</th>
												<th>是否使用</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="desk" items="${deskList}">
<<<<<<< HEAD
												<tr class="gradeX">
													<td>${desk.did}</td>
													<td>${desk.dname}</td>
													<td>${desk.dcount}</td>
													<td>${desk.dstate}</td>
													<td>
														<div class="tpl-table-black-operation">
															<a href="javascript:void(0);" id="${desk.did}"
																name="${desk.dstate}" onClick="GetDetail(this);"> <i
																class="am-icon-pencil"></i> 查看订单
															</a> <a href="javascript:void(0);"
																class="tpl-table-black-operation-del" id="${desk.did}"
																name="${desk.dstate}" onClick="GetFolderId(this);">
																<i class="am-icon-paint-brush"></i> 使用
															</a>
														</div>
													</td>
												</tr>
=======
												<tr class="gradeX" >
												<td>${desk.did}</td>
												<td>${desk.dname}</td>
												<td>${desk.dcount}</td>
												<td>${desk.dstate}</td>
												<td>
													<div class="tpl-table-black-operation">
														<a href="javascript:void(0);" id="${desk.did}" name="${desk.dstate}" onClick="GetDetail(this);"> <i class="am-icon-pencil"></i>
															查看订单
														</a> <a href="javascript:void(0);"
															class="tpl-table-black-operation-del" id="${desk.did}" name="${desk.dstate}" onClick="GetFolderId(this);">
															<i class="am-icon-paint-brush"></i> 使用
														</a>
													</div>
												</td>
											</tr>							
>>>>>>> branch 'master' of https://github.com/baizehua88/hotpot.git
											</c:forEach>
											<!-- more data -->
										</tbody>
									</table>
								</div>
<<<<<<< HEAD
								<div class="am-u-lg-12 am-cf">
									<div class="am-fr">
										<ul class="am-pagination tpl-pagination">
											<li class="am-disabled"><a href="#">«</a></li>
											<li class="am-active"><a href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#">5</a></li>
											<li><a href="#">»</a></li>
										</ul>
									</div>
								</div>

							</div>
=======
>>>>>>> branch 'master' of https://github.com/baizehua88/hotpot.git
						</div>
					</div>
				</div>
			</div>
		</div>

<<<<<<< HEAD
		<!-- 删除信息弹出层 -->
		<div class="am-modal am-modal-no-btn" id="calendar-edit-box-delete"
			style="width: 100%; margin: auto;">
			<div class="am-modal-dialog tpl-model-dialog" style="width: 40%;">
				<div class="am-modal-hd">
					<a href="javascript: void(0)"
						class="am-close edit-box-close am-close-spin" data-am-modal-close>&times;</a>
				</div>
=======
	<!-- 查看订单弹出层 -->

	<div class="am-modal am-modal-no-btn" id="calendar-edit-box1"
		style="width: 100%; margin: auto;">
		<div class="am-modal-dialog tpl-model-dialog" style="width: 55%;">
			<div class="am-modal-hd">
				<a href="javascript: void(0)"
					class="am-close edit-box-close am-close-spin" data-am-modal-close>&times;</a>
			</div>
			<div class="am-modal-bd tpl-am-model-bd am-cf">

				<form class="am-form tpl-form-border-form" 
				action="javascript: void(0);" method="post" enctype="multipart/form-data">			
					<div >
						<font style="float:left;font-size: 20px;">桌号</font>	
						<div style="float: left; width: 20px; margin-left: 15px;">
							<input type=text name="did" id="did">
							<input type="hidden" id="oid" >
						</div>
					</div>
					<div style="margin-top: 60px;">
					<font style="text-align:center;font-size: 30px;">订单详情</font>
					</div>
					<div class="am-u-sm-12">
						<table width="100%" id="table_details1"
							class="am-table am-table-compact am-table-striped tpl-table-black ">
							<thead>
								<tr >
									<th style="text-align: center;">名称</th>
									<th style="text-align: center;">单价</th>
									<th style="text-align: center;">数量</th>
									<th style="text-align: center;">小计</th>
								</tr>
							</thead>
							<tbody id="detail">
																
							</tbody>
						</table>				
					</div>	
				</form>
			</div>
		</div>
	</div>
	
		<!-- 使用弹出层 -->
>>>>>>> branch 'master' of https://github.com/baizehua88/hotpot.git

				<form action="<%=basePath%>desk/delFrontService.do" method="post">
					请输入想要删除的桌号：<input type="text" name="did"> <input
						type="submit" value="提交" onclick="javascript:return ConfirmDel();">
					<div class="am-form-group"></div>
				</form>
			</div>
		</div>

<<<<<<< HEAD
		<!-- 添加信息弹出层 -->
		<div class="am-modal am-modal-no-btn" id="calendar-edit-box-add"
			style="width: 100%; margin: auto;">
			<div class="am-modal-dialog tpl-model-dialog" style="width: 40%;">
				<div class="am-modal-hd">
					<a href="javascript: void(0)"
						class="am-close edit-box-close am-close-spin" data-am-modal-close>&times;</a>
				</div>
				<div class="widget-body am-fr">

					<form class="am-form tpl-form-line-form"
						action="<%=basePath%>desk/addFrontService.do" method="post"
						enctype="multipart/form-data">
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">桌名
								<span class="tpl-form-line-small-title"></span>
							</label>
							<div class="am-u-sm-9">
								<input type="text" class="tpl-form-input" id="dname"
									name="dname">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">可使用的人数
								<span class="tpl-form-line-small-title"></span>
							</label>
							<div class="am-u-sm-9">
								<input type="text" class="tpl-form-input" id="dcount"
									name="dcount">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">是否使用
								<span class="tpl-form-line-small-title"></span>
							</label>
							<div class="am-u-sm-9">
								<input type="text" class="tpl-form-input" id="dstate"
									name="dstate" value="未使用">
							</div>
						</div>

						<div class="am-form-group">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<button type="submit"
									class="am-btn am-btn-primary tpl-btn-bg-color-success ">提交</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>


		<!-- 查看订单弹出层 -->

		<div class="am-modal am-modal-no-btn" id="calendar-edit-box1"
			style="width: 100%; margin: auto;">
			<div class="am-modal-dialog tpl-model-dialog" style="width: 55%;">
				<div class="am-modal-hd">
					<a href="javascript: void(0)"
						class="am-close edit-box-close am-close-spin" data-am-modal-close>&times;</a>
				</div>
				<div class="am-modal-bd tpl-am-model-bd am-cf">

					<form class="am-form tpl-form-border-form"
						action="javascript: void(0);" method="post"
						enctype="multipart/form-data">
						<div>
							<font style="float: left; font-size: 20px;">桌号</font>
							<div style="float: left; width: 20px; margin-left: 15px;">
								<input type=text name="did" id="did"> <input
									type="hidden" id="oid">
							</div>
						</div>
						<div style="margin-top: 60px;">
							<font style="text-align: center; font-size: 30px;">订单</font>
						</div>
						<div class="am-u-sm-12">
							<table width="100%" id="table_details1"
								class="am-table am-table-compact am-table-striped tpl-table-black ">
								<thead>
									<tr>
										<th style="text-align: center;">名称</th>
										<th style="text-align: center;">单价</th>
										<th style="text-align: center;">数量</th>
										<th style="text-align: center;">小计</th>
									</tr>
								</thead>
								<tbody id="detail">
									<%-- id="nm${recipe.rid}" rname="${recipe.rname}" rprice="${recipe.rprice}" rno="" rtotal="" --%>

									<!-- more data -->

								</tbody>
							</table>
						</div>
						<!-- <div >
=======
				<form class="am-form tpl-form-border-form" 
				action="javascript: void(0);" method="post" enctype="multipart/form-data">			
					<div style="margin-top: 60px;">
					<font style="text-align:center;font-size: 30px;">菜单</font>
					</div>
					<div class="am-u-sm-12">
						<table width="100%" id="table_details"
							class="am-table am-table-compact am-table-striped tpl-table-black ">
							<thead>
								<tr>
									<th style="text-align: center;">图片</th>
									<th style="text-align: center;">名称</th>
									<th style="text-align: center;">类别</th>
									<th style="text-align: center;">单价</th>
									<th style="text-align: center;">库存</th>
									<th style="text-align: center;">小计</th>
								</tr>
							</thead>
							<tbody id="orderRecipe">								
								<!-- more data -->								
							</tbody>
						</table>				
					</div>	
					<div >
>>>>>>> branch 'master' of https://github.com/baizehua88/hotpot.git
						<font style="font-size: 20px;float: left;">总计：</font>						
						<font style="font-size: 20px;margin-left: 20px;text-align: left;float: left;">用餐人数</font>
						<div style="margin-left: 20px;">
							<div style="float: left; width: 20px; font-size: 20px;">
								<input type=button value="-" onClick="javascript:if(this.form.man.value>0) this.form.oprice.value =  Number(this.form.oprice.value) - Number(5);if(this.form.man.value>0) this.form.man.value--;">
							</div>
							<div style="float: left; width: 40px; margin-left: 15px;">
								<input type=text value=0 name=man>
							</div>
							<div style="float: left; width: 20px; font-size: 20px; margin-left: 15px;">
								<input type=button value="+" onClick="javascript:this.form.oprice.value =  Number(this.form.oprice.value) + Number(5);this.form.man.value++;">
							</div>
						</div>																		
						<font style="font-size: 20px;margin-left: 60px;text-align: left;float: left;">数量</font>
						<div style="float: left; width: 40px; margin-left: 15px;">
							<input type=text value=0 name=count >
						</div>										
						<font style="font-size: 20px;margin-left: 60px;text-align: left;float: left;">总金额</font>
						<div style="float: left; width: 40px; margin-left: 15px;">
							<input type=text value=0 name=oprice id="oprice">
						</div>
					</div>
					<div class="am-form-group" ">
						<div class="am-u-sm-12 am-u-sm-push-12" style="margin-top: 60px;">
							<button type="submit" onclick="Order(this)"
								class="am-btn am-btn-primary tpl-btn-bg-color-success ">下单</button>
						</div>
					</div> -->

					</form>

				</div>
			</div>
		</div>
<<<<<<< HEAD

		<!-- 使用弹出层 -->
=======
	</div>
	
	
	
	<script src="<%=basePath%>assets/js/amazeui.min.js"></script>
	<script src="<%=basePath%>assets/js/amazeui.datatables.min.js"></script>
	<script src="<%=basePath%>assets/js/dataTables.responsive.min.js"></script>
	<script src="<%=basePath%>assets/js/app.js"></script>
>>>>>>> branch 'master' of https://github.com/baizehua88/hotpot.git

<<<<<<< HEAD
		<div class="am-modal am-modal-no-btn" id="calendar-edit-box"
			style="width: 100%; margin: auto;">
			<div class="am-modal-dialog tpl-model-dialog" style="width: 55%;">
				<div class="am-modal-hd">
					<a href="javascript: void(0)"
						class="am-close edit-box-close am-close-spin" data-am-modal-close>&times;</a>
				</div>
				<div class="am-modal-bd tpl-am-model-bd am-cf">

					<form class="am-form tpl-form-border-form"
						action="javascript: void(0);" method="post"
						enctype="multipart/form-data">
						<div>
							<font style="float: left; font-size: 20px;">桌号</font>
							<div style="float: left; width: 20px; margin-left: 15px;">
								<input type=text name="did" id="did">
							</div>
						</div>
						<div style="margin-top: 60px;">
							<font style="text-align: center; font-size: 30px;">菜单</font>
						</div>
						<div class="am-u-sm-12">
							<table width="100%" id="table_details"
								class="am-table am-table-compact am-table-striped tpl-table-black ">
								<thead>
									<tr>
										<th>图片</th>
										<th>名称</th>
										<th>类别</th>
										<th>单价</th>
										<th>库存</th>
										<th>小计</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="recipe" items="${recipeList}">
										<%-- rname="${recipe.rname}" rprice="${recipe.rprice}" rno="" rtotal="" --%>
										<tr class="gradeX" id="nm${recipe.rid}"
											rname="${recipe.rname}" rprice="${recipe.rprice}" rno=""
											rtotal="">
											<td class="am-text-middle"><input type="hidden"
												name="rid" value="${recipe.rid}"></td>
											<td><img src="<%=basePath%>assets/img/${recipe.rimage}"
												class="tpl-table-line-img" alt=""></td>
											<td class="am-text-middle">${recipe.rname}</td>
											<td class="am-text-middle">${recipe.rsort}</td>
											<td class="am-text-middle">${recipe.rprice}</td>
											<td class="am-text-middle">${recipe.rstock}</td>
											<td class="am-text-middle">
												<div style="float: left; width: 40px; margin-left: 15px;">
													<input type=text value=0 name=sum${recipe.rid}>
												</div>
											</td>
											<td class="am-text-middle">
												<div>
													<div style="float: left; width: 20px; font-size: 20px;">
														<input type=button value="-"
															onClick="javascript:
												if(this.form.count.value>=0 && this.form.num${recipe.rid}.value>0) this.form.count.value--;
												if(this.form.num${recipe.rid}.value>0) this.form.oprice.value = this.form.oprice.value - ${recipe.rprice};
												if(this.form.num${recipe.rid}.value>0) this.form.num${recipe.rid}.value= Number(this.form.num${recipe.rid}.value) - Number(1);
												if(this.form.num${recipe.rid}.value>=0) this.form.sum${recipe.rid}.value=${recipe.rprice}*this.form.num${recipe.rid}.value;
												$('#nm${recipe.rid}').attr('rno',this.form.num${recipe.rid}.value);
												$('#nm${recipe.rid}').attr('sno',this.form.sum${recipe.rid}.value);
												">
													</div>
													<div style="float: left; width: 40px; margin-left: 15px;">
														<input type=text value=0 name=num${recipe.rid}>
													</div>
													<div
														style="float: left; width: 20px; font-size: 20px; margin-left: 15px;">
														<input type=button value="+"
															onClick="javascript:
												this.form.num${recipe.rid}.value= Number(this.form.num${recipe.rid}.value) + Number(1);												
												this.form.sum${recipe.rid}.value=${recipe.rprice}*this.form.num${recipe.rid}.value;											
												this.form.count.value++;
												this.form.oprice.value =  Number(this.form.oprice.value) +  Number(${recipe.rprice});
												$('#nm${recipe.rid}').attr('rno',this.form.num${recipe.rid}.value);
												$('#nm${recipe.rid}').attr('rtotal',this.form.sum${recipe.rid}.value);
												">
													</div>
												</div>
											</td>
										</tr>
									</c:forEach>
									<!-- more data -->

								</tbody>
							</table>
						</div>
						<div>
							<font style="font-size: 20px; float: left;">总计：</font> <font
								style="font-size: 20px; margin-left: 20px; text-align: left; float: left;">用餐人数</font>
							<div style="margin-left: 20px;">
								<div style="float: left; width: 20px; font-size: 20px;">
									<input type=button value="-"
										onClick="javascript:if(this.form.man.value>0) this.form.oprice.value =  Number(this.form.oprice.value) - Number(5);if(this.form.man.value>0) this.form.man.value--;">
								</div>
								<div style="float: left; width: 40px; margin-left: 15px;">
									<input type=text value=0 name=man>
								</div>
								<div
									style="float: left; width: 20px; font-size: 20px; margin-left: 15px;">
									<input type=button value="+"
										onClick="javascript:this.form.oprice.value =  Number(this.form.oprice.value) + Number(5);this.form.man.value++;">
								</div>
							</div>
							<font
								style="font-size: 20px; margin-left: 60px; text-align: left; float: left;">数量</font>
							<div style="float: left; width: 40px; margin-left: 15px;">
								<input type=text value=0 name=count>
							</div>
							<font
								style="font-size: 20px; margin-left: 60px; text-align: left; float: left;">总金额</font>
							<div style="float: left; width: 40px; margin-left: 15px;">
								<input type=text value=0 name=oprice id="oprice">
							</div>
						</div>
						<div class="am-form-group"">
							<div class="am-u-sm-12 am-u-sm-push-12" style="margin-top: 60px;">
								<button type="submit" onclick="Order(this)"
									class="am-btn am-btn-primary tpl-btn-bg-color-success ">下单</button>
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

		<script type="text/javascript">
		
		function ConfirmDel() {
			if (confirm("真的要删除吗？")){
			    return true;
			}else{
			    return false;
			}
		}
		
		//添加
		$(function() {
		var editBox = $('#calendar-edit-box-add');
		$("#add").click(function() {
			//  弹出框
			editBox.modal();
		});

	}); 
		
		//删除
		$(function() {
		var editBox = $('#calendar-edit-box-delete');
		$("#delete").click(function() {
			//  弹出框
			editBox.modal();
		});

	});
		
=======
	<script type="text/javascript">
>>>>>>> branch 'master' of https://github.com/baizehua88/hotpot.git
		var editBox = $('#calendar-edit-box');
		var editBox1 = $('#calendar-edit-box1');
		var ooid ;
		
		//查看订单
		function GetDetail(_this){
<<<<<<< HEAD
			//  弹出框
			$('#did').val(_this.id);			
			if (_this.name=="正在使用") {
				$.post("<%=basePath%>order/getDetailOid.do",{
					did : $('#did').val(),					
					},function(data){
						ooid = data;
						$('#oid').val(data);
						alert("订单ID："+ooid);
						//getChecked();
						$.ajax({
							type: "post",
							url : "<%=basePath%>detail/getDetailByOid.do",
							//dataType: "json",
							cache: true,
							data:{'oid':ooid},
							success: function (data) {
								var t1 = document.getElementById("table_details1");
								var rowNum = t1.rows.length;
								var i;
								if(rowNum>1){
									for(i=1;i<rowNum;i++){
										t1.deleteRow(i);
										rowNum = rowNum - 1;
										i = i - 1;
									}
								}
								
								$.each(data,function(key,values){
									$("#detail").append(
										"<tr class='gradeX'>"
                                    	+"<td>"+values.rname+"</td>"
                                    	+"<td>"+values.rtotal+"</td>"
                                    	+"<td>"+values.rno+"</td>"
                                    	+"<td>"+values.rprice+"</td></tr>"
									);
								});
								editBox1.modal();
							}						
					   }); 				  
					
					   
					}); 
				
			}else {				
				window.alert("该餐位还未使用");
				<%-- window.location.href = "<%=basePath%>desk/deskList.do"; --%>
			} 
		}
		function Open() {
			editBox1.modal();	
		}
		
		//使用
		function GetFolderId(_this){
=======
>>>>>>> branch 'master' of https://github.com/baizehua88/hotpot.git
			//  弹出框
<<<<<<< HEAD
			//alert(_this.id);
			//alert(typeof(_this.name));
			$('#did').val(_this.id);			
			if (_this.name=="未使用") {
				editBox.modal();
			}else {				
				window.alert("该餐位正在使用");
				<%-- window.location.href = "<%=basePath%>desk/deskList.do"; --%>
=======
			$('#did').val(_this.id);			
			if (_this.name=="正在使用") {
				$.post("<%=basePath%>order/getDetailOid.do",{
					did : $('#did').val(),					
					},function(data){
						ooid = data;
						$('#oid').val(data);
						//getChecked();
						$.ajax({
							type: "post",
							url : "<%=basePath%>detail/getDetailByOid.do",
							//dataType: "json",
							cache: true,
							data:{'oid':ooid},
							success: function (data) {
								var t1 = document.getElementById("table_details1");
								var rowNum = t1.rows.length;
								var i;
								if(rowNum>1){
									for(i=1;i<rowNum;i++){
										t1.deleteRow(i);
										rowNum = rowNum - 1;
										i = i - 1;
									}
								}
								
								$.each(data,function(key,values){
									$("#detail").append(
										"<tr class='gradeX'>"
		                            	+"<td>"+values.rname+"</td>"
		                            	+"<td>"+values.rtotal+"</td>"
		                            	+"<td>"+values.rno+"</td>"
		                            	+"<td>"+values.rprice+"</td></tr>"
	                            	);
								});
								editBox1.modal();
							}						
					   }); 				  
					
					   
					}); 
				
			}else {				
				window.alert("该餐位还未使用");
>>>>>>> branch 'master' of https://github.com/baizehua88/hotpot.git
			} 
		}
<<<<<<< HEAD
 		function Order(_this){	
 			//getChecked();
			//  下单
			$.post("<%=basePath%>order/addOrder.do",{
				did : $('#did').val(),
				oprice : $('#oprice').val(),
				
				},function(data){
					ooid = data;
					alert("订单号："+ooid);
					getChecked();
					$.ajax({
						type: "post",
						url : "<%=basePath%>detail/addDetail.do",
						//dataType: "json",
						cache: true,
						data:{'detailList':JSON.stringify(array)},
						/* contentType:"application/json", */
						success: function (data) {
							<%-- $.post("<%=basePath%>desk/deskList.do"); --%>
							//alert("1111111111111");
							window.location.href = "<%=basePath%>desk/deskList.do";
						}						
				   });
				}); 
			
		}
		
 		var array = new Array();
		var ohjInfo = "";
		var ohjInfoEnd = "";
		
		
		function getChecked() {
			//alert("进来了");
			//alert("长度："+$('#table_details tbody tr').length);			
=======
		function Open() {
			editBox1.modal();	
		}
		
		//使用
		function GetFolderId(_this){
			$('#did').val(_this.id);			
			if (_this.name=="未使用") {
				$.ajax({
					type: "post",
					url : "<%=basePath%>recipe/orderRecipe.do",
					dataType: "json",
					cache: true,
					data:{'oid':ooid},
					success: function (data) {
						var t1 = document.getElementById("table_details");
						var rowNum = t1.rows.length;
						var i;
						if(rowNum>1){
							for(i=1;i<rowNum;i++){
								t1.deleteRow(i);
								rowNum = rowNum - 1;
								i = i - 1;
							}
						}
						$.each(data,function(key,values){
							$("#orderRecipe").append(
									"<tr class='gradeX' id='nm"+values.rid+"' rname="+values.rname+" rprice="+values.rprice+" rno='' rtotal='' >"
									+"<td>"
										+"<img src='<%=basePath%>assets/img/"+values.rimage+"' style='width:100%;height:90px;' class='tpl-table-line-img' alt=''>"
									+"</td>"
									+"<td>"+values.rname+"</td>"
									+"<td>"+values.rsort+"</td>"
									+"<td>"+values.rprice+"</td>"
									+"<td>"+values.rstock+"</td>"
									+"<td>"
										+"<div style='float: left; width: 40px; margin-left: 15px;'>"
											+"<input type=text value=0 name=sum"+values.rid+" >"																				
										 +"</div>"
									+"</td>"
									+"<td>"
										+"<div>"
											+"<div style='float: left; width: 20px; font-size: 20px;'>"
												+"<input type='button' value='-' onClick=\"javascript:"
													+"if(this.form.count.value>=0 && this.form.num"+values.rid+".value>0) this.form.count.value--;"
													+"if(this.form.num"+values.rid+".value>0) this.form.oprice.value = this.form.oprice.value - "+values.rprice+";"
													+"if(this.form.num"+values.rid+".value>0) this.form.num"+values.rid+".value= Number(this.form.num"+values.rid+".value) - Number(1);"
													+"if(this.form.num"+values.rid+".value>=0) this.form.sum"+values.rid+".value="+values.rprice+"*this.form.num"+values.rid+".value;"
													+"$('#nm"+values.rid+"').attr('rno',this.form.num"+values.rid+".value);"
													+"$('#nm"+values.rid+"').attr('sno',this.form.sum"+values.rid+".value);\">"
											+"</div>"
											+"<div style='float: left; width: 40px; margin-left: 15px;'>"
												+"<input type=text value=0 name=num"+values.rid+" >"
											+"</div>"
											+"<div style='float: left; width: 20px; font-size: 20px; margin-left: 15px;'>"
												+"<input type='button' value='+' onClick=\"javascript:"
													+"this.form.num"+values.rid+".value= Number(this.form.num"+values.rid+".value) + Number(1);"												
													+"this.form.sum"+values.rid+".value="+values.rprice+"*this.form.num"+values.rid+".value;"											
													+"this.form.count.value++;"
													+"this.form.oprice.value =  Number(this.form.oprice.value) +  Number("+values.rprice+");"
													+"$('#nm"+values.rid+"').attr('rno',this.form.num"+values.rid+".value);"
													+"$('#nm"+values.rid+"').attr('rtotal',this.form.sum"+values.rid+".value);\">"
											+"</div>"
										+"</div>"
									+"</td>"
								+"</tr>"
							);
						});
						editBox.modal();
					}						
		   		}); 
			}else {				
				window.alert("该餐位正在使用");
				<%-- window.location.href = "<%=basePath%>desk/deskList.do"; --%>
			} 
		}
 		function Order(_this){	
 			//getChecked();
			//  下单
			$.post("<%=basePath%>order/addOrder.do",{
				did : $('#did').val(),
				oprice : $('#oprice').val(),
				},function(data){
					ooid = data;
					getChecked();
					$.ajax({
						type: "post",
						url : "<%=basePath%>detail/addDetail.do",
						//dataType: "json",
						cache: true,
						data:{'detailList':JSON.stringify(array)},
						/* contentType:"application/json", */
						success: function (data) {
							window.location.href = "<%=basePath%>desk/deskList.do";
						}						
				   });
				}); 
			
		}
		
 		var array = new Array();
		var ohjInfo = "";
		var ohjInfoEnd = "";
		
		
		function getChecked() {
>>>>>>> branch 'master' of https://github.com/baizehua88/hotpot.git
			var rname="";
			var rno="";
			var rprice="";
			var rtotal="";
			var oid ="";
			$('#table_details tbody tr').each(function(index){
					rname += $(this).attr('rname') + ",";
					rno += $(this).attr('rno') + ",";
					rprice += $(this).attr('rprice') + ",";
					rtotal += $(this).attr('rtotal') + ",";
					oid += ooid + ",";				 
					if($(this).attr('rno') != "" && $(this).attr('rno') != 0){
						var PayObj = new Object();
						PayObj.rname = $(this).attr('rname');
						PayObj.rno =  $(this).attr('rno');
						PayObj.rprice = $(this).attr('rprice');
						PayObj.rtotal = $(this).attr('rtotal');
						PayObj.oid = ooid;						
						array.push(PayObj);
					} 
			});
			console.log(array);
		}	
		
	</script>
</body>

</html>