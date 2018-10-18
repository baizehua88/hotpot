<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>菜品列表</title>
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
<link rel="stylesheet" href="<%=basePath%>assets/css/amazeui.min.css" />
<link rel="stylesheet"
	href="<%=basePath%>assets/css/amazeui.datatables.min.css" />
<link rel="stylesheet" href="<%=basePath%>assets/css/app.css">
<script src="<%=basePath%>assets/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		//点击courseimg文本框触发上传按钮
		$("#rimage").click(function() {
			$("#doc-form-file").trigger("click");
		});
		$("#doc-form-file").change(function(){
			//获取FileUpload对象
			var x = document.getElementById("doc-form-file").files;
			$("#rimage").val(x[0].name);
			document.getElementById('image').src = "<%=basePath%>assets/img/"+document.getElementById('rimage').value;
		})
		
	});
	function show(f) {
		var rd = new FileReader();//创建文件读取对象       
		var files = f.files[0];//获取file组件中的文件        
		rd.readAsDataURL(files);//文件读取转换为base64类型       
		rd.onloadend = function(e) { //加载完毕之后获取结果赋值给img            
			document.getElementById("image").src = this.result;
		}
	}
	</script>
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
						class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico sidebar-nav-sub-ico-rotate"></span>
				</a>
					<ul class="sidebar-nav sidebar-nav-sub" style="display: block;">
						<li class="sidebar-nav-link"><a
							href="<%=basePath%>recipe/recipeList.do" class="active"> <span
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
								<div class="widget-title  am-cf">菜品列表</div>

							</div>
							<div class="widget-body  am-fr">
								<form action="<%=basePath %>recipe/searchRecipe.do">
									<div class="am-u-sm-12 am-u-md-6 am-u-lg-6">
										<div class="am-form-group">
											<div class="am-btn-toolbar">
												<div class="am-btn-group am-btn-group-xs"></div>
											</div>
										</div>
									</div>
									<div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
										<div class="am-form-group tpl-table-list-select">
											<span style="margin-right: 136px;">菜品类别</span> <select
												data-am-selected="{btnSize: 'sm'}" name="rsort">
												<option value="">所有类别</option>
												<option value="荤菜">荤菜</option>
												<option value="素菜">素菜</option>
												<option value="蔬菜">蔬菜</option>
												<option value="水果">水果</option>
												<option value="丸子">丸子</option>
												<option value="熟">熟菜</option>
												<option value="蘸酱">蘸酱</option>
											</select>
										</div>
									</div>
									<div class="am-u-sm-12 am-u-md-12 am-u-lg-3">
										<div
											class="am-input-group am-input-group-sm tpl-form-border-form cl-p">
											<span>是否热门</span> <select data-am-selected="{btnSize: 'sm'}"
												name="rstate">
												<option value="">是否热门</option>
												<option value="热门" >热门</option>
												<option value="一般">一般</option>
											</select> <span class="am-input-group-btn">
												<button style="margin-top: 24px;"
													class="am-btn  am-btn-default am-btn-success tpl-table-list-field am-icon-search"
													type="submit"></button>
											</span>
										</div>
									</div>
								</form>
								<div class="am-u-sm-12">
									<table width="100%"
										class="am-table am-table-compact am-table-striped tpl-table-black ">
										<thead>
											<tr>
												<th>图片</th>
												<th>名称</th>
												<th>类别</th>
												<th>进价</th>
												<th>售价</th>
												<th>库存</th>
												<th>是否热门</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="recipe" items="${recipeList}">
												<tr class="gradeX">
													<td><img
														src="<%=basePath%>assets/img/${recipe.rimage}"
														style="height: 90px; width: 100%"
														class="tpl-table-line-img" alt=""></td>
													<td class="am-text-middle">${recipe.rname}</td>
													<td class="am-text-middle">${recipe.rsort}</td>
													<td class="am-text-middle">${recipe.rbid}</td>
													<td class="am-text-middle">${recipe.rprice}</td>
													<td class="am-text-middle">${recipe.rstock}</td>
													<td class="am-text-middle">${recipe.rstate}</td>
													<td class="am-text-middle"><input type="hidden"
														name="rid" id="id" value="${recipe.rid}"></td>
													<td class="am-text-middle">
														<div class="tpl-table-black-operation">
															<a href="javascript:void(0);" id="${recipe.rid}"
																onClick="GetRecipeId(this);"> <i
																class="am-icon-pencil"></i> 编辑
															</a> <a
																href="javascript:if(confirm('确定要删除吗？'))location='<%=basePath %>recipe/delRecipe.do?id=${recipe.rid }'"
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
													<li><a href="recipeList.do?page=${page-1 }">«</a></li>
												</c:otherwise>
											</c:choose>
											<c:forEach items="${pagelist }" var="item">
												<c:choose>
													<c:when test="${item == page }">
														<li class="am-active"><a
															href="recipeList.do?page=${item }">${item }</a></li>
													</c:when>
													<c:otherwise>
														<li><a href="recipeList.do?page=${item }">${item }</a>
														</li>
													</c:otherwise>
												</c:choose>
											</c:forEach>
											<c:choose>
												<c:when test="${page == totalpage }">
													<li class="am-disabled"><a href="#">»</a></li>
												</c:when>
												<c:otherwise>
													<li><a href="recipeList.do?page=${page+1 }">»</a></li>
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
					action="<%=basePath%>recipe/updateRecipe.do" method="post"
					enctype="multipart/form-data">
					<div class="am-form-group">
						<label for="user-name" class="am-u-sm-3 am-form-label">菜品名称
							<span class="tpl-form-line-small-title"></span>
						</label>
						<div class="am-u-sm-9">
							<input type="hidden" class="tpl-form-input" id="rid" name="rid"
								value="${recipeById.rid}"> <input type="text"
								class="tpl-form-input" id="rname" name="rname"
								value="${recipeById.rname}">
						</div>
					</div>
					<%-- 

									<div class="am-form-group">
										<label for="user-weibo" class="am-u-sm-3 am-form-label">菜品缩略图
											<span class="tpl-form-line-small-title"></span>
										</label>
										<div class="am-u-sm-9">
											<div class="am-form-group am-form-file">
												<div class="tpl-form-file-img">
													<img src="<%=basePath %>assets/img/${recipeById.rimage}" alt="" style="width: 250px;height: 200px;">
												</div>
												<button type="button" class="am-btn am-btn-danger am-btn-sm">
													<i class="am-icon-cloud-upload"></i> 添加菜品图片
												</button>
												<input id="doc-form-file" type="file" multiple="" name="rimage" >
											</div>

										</div>
									</div> --%>
					<div class="am-form-group">
						<label for="user-weibo" class="am-u-sm-3 am-form-label">菜品缩略图
							<span class="tpl-form-line-small-title"></span>
						</label>
						<div class="am-u-sm-9">
							<div class="am-form-group am-form-file">
								<div class="tpl-form-file-img"
									style="vertical-align: left; text-align: left;">
									<img src="<%=basePath %>assets/img/${recipeById.rimage}"
										id="image" alt="" style="width: 250px; height: 200px;">
								</div>
								<button type="button" class="am-btn am-btn-danger am-btn-sm"
									style="float: left;">
									<i class="am-icon-cloud-upload"></i> 更换菜品图片
								</button>
								<input id="doc-form-file" type="file" name="file" multiple=""
									onchange="show(this)"> <input type="hidden" id="rimage"
									name="rimage" value="${recipeById.rimage}"
									style="width: 100%; height: 100%">
							</div>

						</div>
					</div>
					<div class="am-form-group">
						<label for="user-name" class="am-u-sm-3 am-form-label">进价
							<span class="tpl-form-line-small-title"></span>
						</label>
						<div class="am-u-sm-9">
							<input type="text" class="tpl-form-input" id="rbid" name="rbid"
								value="${recipeById.rbid}">
						</div>
					</div>

					<div class="am-form-group">
						<label for="user-name" class="am-u-sm-3 am-form-label">售价
							<span class="tpl-form-line-small-title"></span>
						</label>
						<div class="am-u-sm-9">
							<input type="text" class="tpl-form-input" id="rprice"
								name="rprice" value="${recipeById.rprice}">
						</div>
					</div>

					<div class="am-form-group">
						<label for="user-name" class="am-u-sm-3 am-form-label">类别
							<span class="tpl-form-line-small-title"></span>
						</label>
						<div class="am-u-sm-9">
							<input type="text" class="tpl-form-input" id="rsort" name="rsort"
								value="${recipeById.rsort}">
						</div>
					</div>

					<div class="am-form-group">
						<label for="user-name" class="am-u-sm-3 am-form-label">库存
							<span class="tpl-form-line-small-title"></span>
						</label>
						<div class="am-u-sm-9">
							<input type="text" class="tpl-form-input" id="rstock"
								name="rstock" value="${recipeById.rstock}">
						</div>
					</div>

					<div class="am-form-group" hidden>
						<label for="user-name" class="am-u-sm-3 am-form-label">热销
							<span class="tpl-form-line-small-title"></span>
						</label>
						<div class="am-u-sm-9">
							<input type="text" class="tpl-form-input" id="rstate"
								name="rstate" value="${recipeById.rstate}">
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

	<script src="<%=basePath%>assets/js/amazeui.min.js"></script>
	<script src="<%=basePath%>assets/js/app.js"></script>
	<script type="text/javascript" src="assets/js/jquery-1.7.2.js"></script>
	<script type="text/javascript">
    /* $(function() {
		var editBox = $('#calendar-edit-box');
		$("#modify").click(function() {
			//  弹出框
			editBox.modal();
		});

	}); */
	var editBox = $('#calendar-edit-box');
	function GetRecipeId(_this){
		//  弹出框
		//$('#rid').val(_this.id);
		alert(_this.id);
		$.post("<%=basePath%>recipe/getRecipeById.do",{
			rid : _this.id
			},
			 function(data){
				  editBox.modal();
				 $("#rid").val(data.rid);
			     $("#rname").val(data.rname);
			     $("#rsort").val(data.rsort);
			     $("#rbid").val(data.rbid);
			     $("#rprice").val(data.rprice);
			     $("#rstock").val(data.rstock);
			     $("#rstate").val(data.rstate);
			     $("#rimage").val(data.rimage);
			     <%-- $("img").attr("src",<%=basePath %>assets/img/data.rimage); --%>
			     document.getElementById('image').src = "<%=basePath%>assets/img/"+document.getElementById('rimage').value;
			   },
			"json");
		
	}
    </script>

</body>

</html>