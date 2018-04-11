<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.sql.Connection,java.sql.DriverManager,java.sql.Statement,java.sql.ResultSet;"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试数据库</title>
<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/header.css">
<link rel="stylesheet" type="text/css" href="css/nav.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>	
	<%@ include file="jsp/header.jsp"%>
	<div class="main">
		<div class="nav">
			<ul>
				<li><a href="jsp/add.jsp">添加账户信息</a></li>
				<li><a href="jsp/del.jsp">删除账户信息</a></li>
				<li><a href="jsp/modify.jsp">修改账户信息</a></li>
				<li><a href="jsp/see.jsp">查看账户信息</a></li>
			</ul>
		</div>
		<div class="content">
			<h4>欢迎来到账号信息管理系统</h4>
			<p>【提示】点击左侧的选项进行操作</p>
		</div>
	</div>
	<%@ include file="jsp/footer.jsp"%>
</body>
</html>