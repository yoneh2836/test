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

<title>update</title>

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
	<h1>分頁查詢</h1>
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
				<c:forEach items="${page.list}" var="customer">
					<tr>
						<td>${customer.customer_code}</td>
						<td>${customer.customer_name}</td>
						<td>${customer.customer_adress}</td>
						<td>${customer.customer_phone }</td>
						<td>${customer.customer_password}</td>
						<td>${customer.customer_allmoney}</td>
						<td><a onclick="editInfo(this)">修改</a> <a
							onclick="deleteCustomer(${customer.customer_code})">删除</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<span>总共:${page.totalNum}条记录,当前显示:${page.pageSize}条记录
		<a href="/infmanage/pageinfo?currentPage=${page.currentPage-1}">上一页</a>
		<a href="/infmanage/pageinfo?currentPage=${page.currentPage+1}">下一页</a>
		</span>
	</div>
</body>
</html>