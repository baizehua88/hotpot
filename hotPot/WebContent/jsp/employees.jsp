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
<title>员工列表</title>
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
						class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico sidebar-nav-sub-ico-rotate"></span>
				</a>
					<ul class="sidebar-nav sidebar-nav-sub" style="display: block;">
						<li class="sidebar-nav-link"><a
							href="<%=basePath%>staff/staffList.do" class="active"> <span
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
							<div class="widget-body  am-fr">

								<form action="<%=basePath%>staff/search.do" method="post">
									<div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
										<div class="am-form-group tpl-table-list-select">
											<label style="margin-right: 136px;">员工职位</label> <select
												data-am-selected="{btnSize: 'sm'}" name="sposition">

												<option value="">--请选择员工职位--</option>
												<option value="CEO">CEO</option>
												<option value="经理">经理</option>
												<option value="员工">员工</option>

											</select>
										</div>
									</div>

									<div class="am-u-sm-12 am-u-md-12 am-u-lg-3"
										style="float: left;">
										<div
											class="am-input-group am-input-group-sm tpl-form-border-form cl-p">
											<label>员工名称</label> <input type="text" class="am-form-field "
												value="${sname }" name="sname"> <span
												class="am-input-group-btn">
												<button
													class="am-btn  am-btn-default am-btn-success tpl-table-list-field am-icon-search"
													type="submit" style="margin-top: 29px;"></button>
											</span>
										</div>
									</div>
								</form>
								<div class="am-u-sm-12">
									<table width="100%"
										class="am-table am-table-compact am-table-striped tpl-table-black "
										id="example-r">
										<thead>
											<tr>
												<th>ID</th>
												<th>名称</th>
												<th>性别</th>
												<th>电话</th>
												<th>职位</th>
												<th>薪资</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
											<!-- <tr class="gradeX">
												<td>6</td>
												<td>经理</td>
												<td>张三</td>
												<td>男</td>
												<td>23432122</td>
												<td>50000</td>
												<td class="am-text-middle">
                                                    <div class="tpl-table-black-operation">
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 编辑
                                                        </a>
                                                        <a href="javascript:;" class="tpl-table-black-operation-del">
                                                            <i class="am-icon-trash"></i> 删除
                                                        </a>
                                                    </div>
                                                </td>
											</tr> -->
											<c:forEach var="staff" items="${staffList}">
												<tr class="gradeX">
													<td>${staff.sid}</td>
													<td>${staff.sname}</td>
													<td>${staff.ssex}</td>
													<td>${staff.sphone}</td>
													<td>${staff.sposition}</td>
													<td>${staff.salary}</td>
													<td class="am-text-middle">
														<div class="tpl-table-black-operation">
															<a href="javascript:;" id="${staff.sid}"
																onClick="GetEmployeesId(this);"> <i
																class="am-icon-pencil"></i> 编辑
															</a> <a
																href="javascript:if(confirm('确实要删除吗?'))location='<%=basePath %>staff/delStaff.do?id=${staff.sid}'"
																class="tpl-table-black-operation-del"> <i
																class="am-icon-trash"></i> 删除
															</a>
														</div>
													</td>
												</tr>
											</c:forEach>
											<!-- more data -->
										</tbody>
									</table>
								</div>
								<div class="am-u-lg-12 am-cf">

									<div class="am-fr">
										<ul class="am-pagination tpl-pagination">
											<c:choose>
												<c:when test="${page == 1 }">
													<li class="am-disabled"><a href="#">«</a></li>
												</c:when>
												<c:otherwise>
													<li><a href="staffList.do?page=${page-1 }">«</a></li>
												</c:otherwise>
											</c:choose>
											<c:forEach items="${pagelist }" var="item">
												<c:choose>
													<c:when test="${item == page }">
														<li class="am-active"><a
															href="staffList.do?page=${item }">${item }</a></li>
													</c:when>
													<c:otherwise>
														<li><a href="staffList.do?page=${item }">${item }</a>
														</li>
													</c:otherwise>
												</c:choose>
											</c:forEach>
											<c:choose>
												<c:when test="${page == totalpage }">
													<li class="am-disabled"><a href="#">»</a></li>
												</c:when>
												<c:otherwise>
													<li><a href="staffList.do?page=${page+1 }">»</a></li>
												</c:otherwise>
											</c:choose>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 弹出层 -->

		<div class="am-modal am-modal-no-btn" id="calendar-edit-box"
			style="width: 100%; margin: auto;">
			<div class="am-modal-dialog tpl-model-dialog" style="width: 40%;">
				<div class="am-modal-hd">
					<a href="javascript: void(0)"
						class="am-close edit-box-close am-close-spin" data-am-modal-close>&times;</a>
				</div>
				<div class="widget-body am-fr">

					<form class="am-form tpl-form-line-form"
						action="<%=basePath%>staff/updateEmployees.do" method="post"
						enctype="multipart/form-data">
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">会员姓名
								<span class="tpl-form-line-small-title"></span>
							</label>
							<div class="am-u-sm-9">
								<input type="hidden" class="tpl-form-input" id="sid" name="sid"
									value="${employeesById.sid}"> <input type="text"
									class="tpl-form-input" id="sname" name="sname"
									value="${employeesById.sname}">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">性别
								<span class="tpl-form-line-small-title"></span>
							</label>
							<div class="am-u-sm-9">
								<input type="text" class="tpl-form-input" id="ssex" name="ssex"
									value="${employeesById.ssex}">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">电话
								<span class="tpl-form-line-small-title"></span>
							</label>
							<div class="am-u-sm-9">
								<input type="text" class="tpl-form-input" id="sphone"
									name="sphone" value="${employeesById.sphone}">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">职位
								<span class="tpl-form-line-small-title"></span>
							</label>
							<div class="am-u-sm-9">
								<input type="text" class="tpl-form-input" id="sposition"
									name="sposition" value="${employeesById.sposition}">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-name" class="am-u-sm-3 am-form-label">薪资
								<span class="tpl-form-line-small-title"></span>
							</label>
							<div class="am-u-sm-9">
								<input type="text" class="tpl-form-input" id="salary"
									name="salary" value="${employeesById.salary}">
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

	</div>
	<script src="<%=basePath%>assets/js/amazeui.min.js"></script>
	<script src="<%=basePath%>assets/js/amazeui.datatables.min.js"></script>
	<script src="<%=basePath%>assets/js/dataTables.responsive.min.js"></script>
	<script src="<%=basePath%>assets/js/app.js"></script>

	<script type="text/javascript"
		src="assets/js/jquery-1.7.2.js"></script>
	<script type="text/javascript">
	var editBox = $('#calendar-edit-box');
	function GetEmployeesId(_this){
		//  弹出框
		//$('#rid').val(_this.id);
		//alert(_this.id);
		$.post("<%=basePath%>staff/getEmployeesById.do", {
				sid : _this.id
			}, function(data) {
				editBox.modal();
				$("#sid").val(data.sid);
				$("#sname").val(data.sname);
				$("#ssex").val(data.ssex);
				$("#sphone").val(data.sphone);
				$("#sposition").val(data.sposition);
				$("#salary").val(data.salary);
			}, "json");

		}
	</script>

</body>

</html>