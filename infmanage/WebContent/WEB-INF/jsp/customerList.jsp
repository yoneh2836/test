<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<body>
	<div class="row">
		<div class="col-sm-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>customerlist</h5>
					<div class="ibox-tools">
						<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
						</a> <a class="dropdown-toggle" data-toggle="dropdown"
							href="table_data_tables.html#"> <i class="fa fa-wrench"></i>
						</a>
						<ul class="dropdown-menu dropdown-user">
							<li><a href="table_data_tables.html#">选项1</a></li>
							<li><a href="table_data_tables.html#">选项2</a></li>
						</ul>
						<a class="close-link"> <i class="fa fa-times"></i>
						</a>
					</div>
				</div>
				<div class="ibox-content">
					<table
						class="table table-striped table-bordered table-hover dataTables-example">
						<thead>
							<tr>
								<th>用户账号</th>
								<th>用户姓名</th>
								<th>住址</th>
								<th>电话</th>
								<th>密码</th>
								<th>总资产</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${customerList}" var="customer">
								<tr>
									<td>${customer.customer_code}</td>
									<td>${customer.customer_name}</td>
									<td>${customer.customer_adress}</td>
									<td>${customer.customer_phone }</td>
									<td>${customer.customer_password}</td>
									<td>${customer.customer_allmoney}</td>
									<td>
										<a onclick="editInfo(this)">修改</a> 
										<a onclick="deleteCustomer(${customer.customer_code})">删除</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
											/*		var updateCustomer = function(customer_code){
														$.ajax({
															type:"get",
															url:"/infmanage/findCustomerByCode",
															data:{"customer_code":customer_code},
															success:function(data){
																$("#customer_name").val(data.customer_name);
																$("#customer_adress").val(data.customer_adress);
															}
															
														})
													}    */
 
										 			var editInfo = function(obj) {  
														var tds= $(obj).parent().parent().find('td');
														$('#customer_code').val(tds.eq(0).text());
														$('#customer_name').val(tds.eq(1).text());
														$('#customer_adress').val(tds.eq(2).text());
														$('#customer_phone').val(tds.eq(3).text());
														$('#customer_password').val(tds.eq(4).text());
														$('#customer_allmoney').val(tds.eq(5).text());
													    $('#myModal2').modal('show');  
													} 

										var updateCustomer = function(){
											var formData = $("#updateCustomer").serialize();
											$.post("/infmanage/updateCustomer",formData,function(data){
												if(data = "success"){
													alert("修改成功");
													window.location.reload();
												}else{
													alert("修改失败");
													window.location.reload();
												}
												
											})
										}            
										
													var deleteCustomer = function(customer_code){
														if(confirm("确认删除该客户吗？")){
															$.post("/infmanage/deleteCustomer",{"Customer_code":customer_code},function(data){
																if(data = "success"){
																	alert("成功删除");
																	window.location.reload();
																}else{
																	alert("删除失败");
																	window.location.reload();
																}
															})
														}
													}
	</script>
	<!-- 修改用户模态框 -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改客户信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="updateCustomer">	
						<div class="form-group">
							<label class="col-sm-2 control-label">用户账号</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="customer_code" name="customer_code" readonly="readonly"/>
							</div>
						</div>
						<div class="form-group">
							<label 	style="float: left; padding: 7px 15px 0 27px;">用户姓名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="customer_name" name="customer_name"/>
							</div>
						</div>
						<div class="form-group">
							<label style="float: left; padding: 7px 15px 0 27px;">用户住址</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="customer_adress" name="customer_adress"/>
							</div>
						</div>
						<div class="form-group">
							<label 	style="float: left; padding: 7px 15px 0 27px;">用户电话</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="customer_phone" name="customer_phone"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">密码</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="customer_password" name="customer_password"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">总资产</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="customer_allmoney" name="customer_allmoney"/>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" onclick="updateCustomer()">保存修改</button>
				</div>
			</div>
		</div>
	</div>
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
        $(document).ready(function () {
            $('.dataTables-example').dataTable();

            /* Init DataTables */
            var oTable = $('#editable').dataTable();

            /* Apply the jEditable handlers to the table */
            oTable.$('td').editable('../example_ajax.php', {
                "callback": function (sValue, y) {
                    var aPos = oTable.fnGetPosition(this);
                    oTable.fnUpdate(sValue, aPos[0], aPos[1]);
                },
                "submitdata": function (value, settings) {
                    return {
                        "row_id": this.parentNode.getAttribute('id'),
                        "column": oTable.fnGetPosition(this)[2]
                    };
                },

                "width": "90%",
                "height": "100%"
            });


        });

        function fnClickAddRow() {
            $('#editable').dataTable().fnAddData([
                "Custom row",
                "New row",
                "New row",
                "New row",
                "New row"]);
			}
    </script>
</body>
</html>