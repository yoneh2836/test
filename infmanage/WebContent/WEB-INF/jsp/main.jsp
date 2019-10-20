<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>

<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">

<title>主页</title>

<meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
<meta name="description"
	content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

<!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

<link rel="shortcut icon" href="favicon.ico">
<link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css?v=4.1.0" rel="stylesheet">
</head>

<body class="gray-bg top-navigation">

	<div id="wrapper">
		<div id="page-wrapper" class="gray-bg">
			<div class="row border-bottom white-bg">
				<nav class="navbar navbar-static-top" role="navigation">
					<div class="navbar-header">
						<button aria-controls="navbar" aria-expanded="false"
							data-target="#navbar" data-toggle="collapse"
							class="navbar-toggle collapsed" type="button">
							<i class="fa fa-reorder"></i>
						</button>
						<a class="navbar-brand">${admin.admin_name}</a>
						<p>${msg}<p>
					</div>
					<div class="navbar-collapse collapse" id="navbar">
						<ul class="nav navbar-top-links navbar-right">
							<li><a href="/infmanage/logout"> <i class="fa fa-sign-out"></i><small>退出</small>
							</a></li>
						</ul>
					</div>
				</nav>
			</div>
			<div class="wrapper wrapper-content">
				<div class="row">
					<div class="col-sm-3">
						<div class="ibox float-e-margins">
							<div class="ibox-content mailbox-content">
								<div class="file-manager">
									<a class="btn btn-block btn-primary compose-mail">Welcome</a>
									<div class="space-25"></div>
									<h4>用户管理</h4>
									<ul class="folder-list m-b-md" style="padding: 0">
										<li><a data-toggle="modal" data-target="#myModal">添加</a></li>
										<li><a href="/infmanage/pageinfo">分页查询</a></li>
									</ul>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<br>
									<h5>分类</h5>
									<ul class="category-list" style="padding: 0">
										<li><a href=""> <i class="fa fa-circle text-navy"></i>工作
										</a></li>
										<li><a href=""> <i class="fa fa-circle text-danger"></i>文档
										</a></li>
										<li><a href=""> <i class="fa fa-circle text-primary"></i>社交
										</a></li>
										<li><a href=""> <i class="fa fa-circle text-info"></i>广告
										</a></li>
										<li><a href=""> <i class="fa fa-circle text-warning"></i>客户端
										</a></li>
									</ul>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-9 animated fadeInRight">
						<div class="mail-box">
							<iframe name="iframe0" width="100%" height="560px"
								src="/infmanage/findAllCustomer" frameborder="0"
								data-id="/infmanage/findAllCustomer" seamless></iframe>
						</div>
					</div>
				</div>
			</div>

			<!-- 全局js -->
			<script src="js/jquery.min.js?v=2.1.4"></script>
			<script src="js/bootstrap.min.js?v=3.3.6"></script>



			<script src="js/plugins/jeditable/jquery.jeditable.js"></script>

			<!-- Data Tables -->
			<script src="js/plugins/dataTables/jquery.dataTables.js"></script>
			<script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>

			<!-- 自定义js -->
			<script src="js/content.js?v=1.0.0"></script>


			<!-- Page-Level Scripts -->
			<script>
				$(document).ready(function() {
					$('.dataTables-example').dataTable();

					/* Init DataTables */
					var oTable = $('#editable').dataTable();

					/* Apply the jEditable handlers to the table */
					oTable.$('td').editable('../example_ajax.php', {
						"callback" : function(sValue, y) {
							var aPos = oTable.fnGetPosition(this);
							oTable.fnUpdate(sValue, aPos[0], aPos[1]);
						},
						"submitdata" : function(value, settings) {
							return {
								"row_id" : this.parentNode.getAttribute('id'),
								"column" : oTable.fnGetPosition(this)[2]
							};
						},

						"width" : "90%",
						"height" : "100%"
					});

				});

				function fnClickAddRow() {
					$('#editable').dataTable().fnAddData(
							[ "Custom row", "New row", "New row", "New row",
									"New row" ]);

				}
			</script>

			<script type="text/javascript"
				src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
			<!--统计代码，可删除-->
		</div>
	</div>
	</div>


	<!-- 全局js -->
	<script src="js/jquery.min.js?v=2.1.4"></script>
	<script src="js/bootstrap.min.js?v=3.3.6"></script>



	<!-- 自定义js -->
	<script src="js/content.js?v=1.0.0"></script>


	<!-- iCheck -->
	<script src="js/plugins/iCheck/icheck.min.js"></script>
	<script>
		$(document).ready(function() {
			$('.i-checks').iCheck({
				checkboxClass : 'icheckbox_square-green',
				radioClass : 'iradio_square-green',
			});
		});
	</script>

	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<div class="footer">
		<div class="pull-right">
			By：<a target="_blank">yoneh</a>
		</div>
		<div>
			<strong>Copyright</strong>&copy; 2019
		</div>
	</div>
	</div>
	</div>



	<!--
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
 全局js -->


	<!-- 自定义js -->
	<script src="js/content.js?v=1.0.0"></script>


	<!-- Flot -->
	<script src="js/plugins/flot/jquery.flot.js"></script>
	<script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
	<script src="js/plugins/flot/jquery.flot.resize.js"></script>

	<!-- ChartJS-->
	<script src="js/plugins/chartJs/Chart.min.js"></script>

	<!-- Peity -->
	<script src="js/plugins/peity/jquery.peity.min.js"></script>

	<!-- Peity demo -->
	<script src="js/demo/peity-demo.js"></script>

	<script>
		$(document)
				.ready(
						function() {

							var d1 = [ [ 1262304000000, 6 ],
									[ 1264982400000, 3057 ],
									[ 1267401600000, 20434 ],
									[ 1270080000000, 31982 ],
									[ 1272672000000, 26602 ],
									[ 1275350400000, 27826 ],
									[ 1277942400000, 24302 ],
									[ 1280620800000, 24237 ],
									[ 1283299200000, 21004 ],
									[ 1285891200000, 12144 ],
									[ 1288569600000, 10577 ],
									[ 1291161600000, 10295 ] ];
							var d2 = [ [ 1262304000000, 5 ],
									[ 1264982400000, 200 ],
									[ 1267401600000, 1605 ],
									[ 1270080000000, 6129 ],
									[ 1272672000000, 11643 ],
									[ 1275350400000, 19055 ],
									[ 1277942400000, 30062 ],
									[ 1280620800000, 39197 ],
									[ 1283299200000, 37000 ],
									[ 1285891200000, 27000 ],
									[ 1288569600000, 21000 ],
									[ 1291161600000, 17000 ] ];

							var data1 = [ {
								label : "数据1",
								data : d1,
								color : '#17a084'
							}, {
								label : "数据2",
								data : d2,
								color : '#127e68'
							} ];
							$.plot($("#flot-chart1"), data1, {
								xaxis : {
									tickDecimals : 0
								},
								series : {
									lines : {
										show : true,
										fill : true,
										fillColor : {
											colors : [ {
												opacity : 1
											}, {
												opacity : 1
											} ]
										},
									},
									points : {
										width : 0.1,
										show : false
									},
								},
								grid : {
									show : false,
									borderWidth : 0
								},
								legend : {
									show : false,
								}
							});

							var lineData = {
								labels : [ "一月", "二月", "三月", "四月", "五月", "六月",
										"七月" ],
								datasets : [
										{
											label : "示例数据",
											fillColor : "rgba(220,220,220,0.5)",
											strokeColor : "rgba(220,220,220,1)",
											pointColor : "rgba(220,220,220,1)",
											pointStrokeColor : "#fff",
											pointHighlightFill : "#fff",
											pointHighlightStroke : "rgba(220,220,220,1)",
											data : [ 65, 59, 40, 51, 36, 25, 40 ]
										},
										{
											label : "示例数据",
											fillColor : "rgba(26,179,148,0.5)",
											strokeColor : "rgba(26,179,148,0.7)",
											pointColor : "rgba(26,179,148,1)",
											pointStrokeColor : "#fff",
											pointHighlightFill : "#fff",
											pointHighlightStroke : "rgba(26,179,148,1)",
											data : [ 48, 48, 60, 39, 56, 37, 30 ]
										} ]
							};

							var lineOptions = {
								scaleShowGridLines : true,
								scaleGridLineColor : "rgba(0,0,0,.05)",
								scaleGridLineWidth : 1,
								bezierCurve : true,
								bezierCurveTension : 0.4,
								pointDot : true,
								pointDotRadius : 4,
								pointDotStrokeWidth : 1,
								pointHitDetectionRadius : 20,
								datasetStroke : true,
								datasetStrokeWidth : 2,
								datasetFill : true,
								responsive : true,
							};

							var ctx = document.getElementById("lineChart")
									.getContext("2d");
							var myNewChart = new Chart(ctx).Line(lineData,
									lineOptions);

						});
	</script>

	<script type="text/javascript"
		src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
	<!--统计代码，可删除-->
	<!-- 添加用户模态框-->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">添加用户</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="addCustomer">
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">用户账号</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputEmail3" name="customer_code"
									placeholder="用户账号">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">用户姓名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputPassword3" name="customer_name"
									placeholder="用户姓名">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">住址</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputPassword3" name="customer_adress"
									placeholder="住址">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">电话</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputPassword3" name="customer_phone"
									placeholder="电话">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">密码</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputPassword3" name="customer_password"
									placeholder="密码">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">总资产</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputPassword3" name="customer_allmoney"
									placeholder="总资产">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" onclick="addCustomer()">确定</button>
					<script type="text/javascript">
						var addCustomer = function(){
							var formData = $("#addCustomer").serialize();
							$.post("/infmanage/addCustomer",formData,function(data){
								if(data = "success"){
									alert("添加成功");
									window.location.reload();
								}else{
									alert("添加失败");
									window.location.reload();
								}
								
							})
						}
					</script>
				</div>
			</div>
		</div>
	</div>

</body>

</html>
