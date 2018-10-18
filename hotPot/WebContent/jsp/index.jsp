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
				<div class="row  am-cf">
					<div class="am-u-sm-12 am-u-md-12 am-u-lg-4">
						<div class="widget widget-primary am-cf">
							<div class="widget-statistic-header">本季度利润</div>
							<div class="widget-statistic-body">
								<div class="widget-statistic-value">￥27,294</div>
								<div class="widget-statistic-description">
									本季度比去年多收入 <strong>2593元</strong> 人民币
								</div>
								<span class="widget-statistic-icon am-icon-home"></span>
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
						<div class="widget widget-primary am-cf">
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
							<div class="widget-body-md widget-body tpl-amendment-echarts am-fr" id="main" style="height: 300px;">
							</div>
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

					<div class="am-u-sm-12 am-u-md-6">
						<div class="widget am-cf">
							<div class="widget-body widget-body-md am-fr" id = "tuijian"  style="height: 300px;">
								
							</div>
						</div>
					</div>


					<div
						class="am-u-sm-12 am-u-md-12 am-u-lg-6 widget-margin-bottom-lg">

						<div class="widget am-cf widget-body-lg">

							<div class="widget-body  am-fr">
								<div class="am-scrollable-horizontal ">
									<video src="https://outin-f41c28f1b0dc11e89f4700163e1c955c.oss-cn-shanghai.aliyuncs.com/4f267abdd4c744fa86db7701c9ed678c/1849d8c1eb584552bc6fb2d7b6912023-74ff1929f4d2520f6bf83d87cef973d3-ld.mp4?Expires=1539831766&OSSAccessKeyId=LTAInFumgYEtNMvC&Signature=V3hJ3z%2FpI6iaK8HXMXESVWMOM%2BM%3D" width=100% height=300% loop="loop" autoplay="autoplay">
	 								</video>
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
	<script src="<%=basePath%>assets/js/echarts.min.js"></script>
	<script src="<%=basePath%>assets/js/app.js"></script>
	
	<script type="text/javascript">
		// 基于准备好的dom，初始化echarts实例
	    var myChart = echarts.init(document.getElementById('main'));
	    // 指定图表的配置项和数据
	    myChart.setOption (
		{
			title:{
				text: '好辣火锅门店五天收支情况',
				left: 'center'
			},
		    tooltip : {
		        trigger: 'axis'
		    },
		    legend: {
		        data:['收入','支出'],
		        left: 'right',
		        top: 'top'
		    },
		    calculable: true,
		    xAxis : [
		        {
		        	boundaryGap:false,
		        	data:[]
		        }
		    ],
		    yAxis : {},
		    series : [
		        {
		            name:'收入',
		            type: 'line',
		            itemStyle:{
		            	normal:{
		            		color: 'blue',
		            		lineStyle:{
		            			color: 'blue'
		            		}
		        		}
		        	},
		            data:[]
		        },
		        {
		            name:'支出',
		            type: 'line',
		            itemStyle:{
		            	normal:{
		            		color: 'red',
		            		lineStyle:{
		            			color: 'red'
		            		}
		        		}
		        	},
		            data:[]
		        }
		    ]
		}); 
		//设置定时器加载数据
		myChart.showLoading({text:'数据正在加载中...'});
		
		setTimeout(function() {
			$.ajax({
				url:"<%=basePath%>finance/echarts.do",
				dataType:"json",
				success:function(jsonData){
					myChart.setOption({
						xAxis:{
							data:jsonData.tList
						},
						series:[{
							name:'收入',
							data:jsonData.iList
						},
						{
							name:'支出',
							data:jsonData.eList
						}
						]
					});
					myChart.hideLoading();
				}
			});
		},1000);
		
		
		//饼图
		var tjChart = echarts.init(document.getElementById("tuijian"));
     	
		tjChart.setOption (
		{
			title:{
				text:'菜品推荐（TOP5）',
				left:'center'
			},
     		tooltip: {
     			trigger: 'item',
     			formatter: "{a} <br/>{b} : {c} ({d}%)"
     		},
     		legend: {
	            orient : 'vertical',
	            x : 'left',
	            data:[]
	        },
     		calculable: true,
     		series: [
     			{
     				name: '菜品名称',
     				type: 'pie',
     				radius: '55%',
     				center: ['50%','50%'],
     				data:[].sort(function (a, b) { return a.value - b.value; }),
					animationType: 'scale',
					animationEasing: 'elasticOut',
					animationDelay: function(idx) {
						return Math.random() * 100;
					}
     			}
     		]
   		});
     	
		tjChart.showLoading({text:'数据正在加载中...'});
		
		setTimeout(function() {
			$.ajax({
				url:"<%=basePath%>detail/getTotal.do",
				dataType:"json",
				cache: false,
				success:function(jsonData1){
					var nums = [];
					var names = [];
					$.each(jsonData1,function(key,values){ //此处我返回的是list<String,map<String,String>>循环map
	                      names.push(values.rname);
	                      var obj = new Object();
	                      obj.name = values.rname;
	                      obj.value = values.totapno;
	                      nums.push(obj);
	                   });
					tjChart.setOption({
						legend: {
							data: names
						},
						series:{
							name:'菜品名称',
							data:nums
						}
					});
					tjChart.hideLoading();
				}
			});
		},1000);
	</script>
</body>

</html>