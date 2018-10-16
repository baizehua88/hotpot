<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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
<title>导入入库单</title>
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
				<li class="sidebar-nav-link"><a href="<%=basePath%>order/getOrder.do">
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
							href="<%=basePath%>jsp/orderList.jsp"> <span
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
						class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico sidebar-nav-sub-ico-rotate"></span>
				</a>
					<ul class="sidebar-nav sidebar-nav-sub" style="display: block;">
						<li class="sidebar-nav-link"><a
							href="<%=basePath%>recipe/recipeListorder.do"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 在线订货
						</a></li>

						<li class="sidebar-nav-link"><a
							href="<%=basePath%>jsp/GRN.jsp" class="active"> <span
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
			<div class="row-content am-cf">
				<div class="row">
					<div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
						<div class="widget am-cf">
							<div class="widget-body  am-fr">
								<div style="float: left;">
									<form action="<%=basePath%>recipe/load.do" enctype="multipart/form-data" id="form1" method="post" onsubmit="return checkData();">
										<span style="float: left;">导入入库单</span>
										<input type="file" id="upfile" name="upfile" style="float: left; margin-left: 20px;">
										<input type="submit" value="搜索" >
										<input type="hidden" id="total" value="${totallist }"/>
									</form>
								</div>
								<div class="am-u-sm-12 am-u-md-6 am-u-lg-6" style="float: left;">
									<div class="am-form-group">
										<div class="am-btn-toolbar">
										</div>
									</div>
								</div>

								<div class="am-u-sm-12">
									<table width="100%"
										class="am-table am-table-compact am-table-striped tpl-table-black "
										id="example-r">
										<thead>
											<tr>
												<th><input id="allAndNotAll" name="allAndNotAll" type="checkbox"></th>
												<th>名称</th>
												<th>数量</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${Dlist }" var="recipe" step="1" varStatus="statu">
												<tr class="gradeX" id="mytr">
													<td><input type="checkbox" id="check${statu.count }" name="checkitem"></td>
													<td class="am-text-middle" id="rname${statu.count }">${recipe.rname }</td>
													<td class="am-text-middle" id="stock${statu.count }">${recipe.stock }</td>
												</tr>
											</c:forEach>
											<!-- more data -->
										</tbody>
									</table>
								</div>
							</div>
							<div class="am-form-group">
									<button type="button" style="margin-left: 20px;"
										class="am-btn am-btn-primary tpl-btn-bg-color-success " onclick="getInt();">入库</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="<%=basePath%>assets/js/amazeui.min.js"></script>
	<script src="<%=basePath%>assets/js/amazeui.datatables.min.js"></script>
	<script src="<%=basePath%>assets/js/dataTables.responsive.min.js"></script>
	<script src="<%=basePath%>assets/js/app.js"></script>
	<script src="<%=basePath%>assets/js/jquery-3.1.1.min.js"></script>
	<script src="<%=basePath%>assets/js/jquery.form.js"></script>
	<script type="text/javascript">
		//JS校验form表单信息
		function checkData() {
			var fileDir = $("#upfile").val();
			var suffix = fileDir.substr(fileDir.lastIndexOf("."));
			if("" == fileDir){
				alert("选择需要导入的Excel文件！");
				return false;
			}else if (".xls" != suffix && ".xlsx" != suffix) {
				alert("选择Excel格式的文件导入！");
				return false;
			}
			return true;
		}
		
		$("#allAndNotAll").click(function () {
		    if ($("#allAndNotAll").prop('checked')) {
		        $("#allAndNotAll").prop("checked", true);
		        $("input[name=checkitem]:checkbox").prop("checked", true);
		    } else {
		        $("#allAndNotAll").prop("checked", false);
		        $("input[name=checkitem]:checkbox").prop("checked", false);
		    }
		});
				
		//当其中不勾选某一个选项的时候,则去掉全选复选框
		$(":checkbox[name=checkitem]").click(function () {
		    $("#allAndNotAll").prop('checked',
		        $(":checkbox[name=checkitem]").length == $(":checkbox[name='checkitem']:checked").length);
		});
		
		function getInt() {
			var total = $("#total").val();
			var k;
			var att= {};    //创建一个空的json
			var rname,stock;
			var Array = [];
			$("#mytr").each(function(){
				for(k=1;k<total+1;k++){
					if($("#check"+k).prop('checked')){
						rname = document.getElementById('rname'+k).innerText;
						stock = document.getElementById('stock'+k).innerText;
						att = {
								'rname':rname,
								'stock':stock,
							};
						Array.push(att);
					}
				}
			})
			console.log(Array);
			$.ajax({
				type: "POST",
				url: "<%=basePath%>stock/addStock.do",
				data: {
					ds:JSON.stringify(Array)
				},
				//dataType: "json",
				success: function(msg) {
					if (msg == "OK") {
						window.location.href = "<%=basePath%>recipe/load.do?";
						alert("入库成功！");
					}else {
						alert("入库失败！");
					}
				}
			});
		}
	</script>

</body>

</html>