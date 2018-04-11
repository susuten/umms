<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.Connection,java.sql.DriverManager,java.sql.Statement,java.sql.ResultSet;"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>添加账户信息</title>
		<link rel = "stylesheet" type = "text/css" href = "../css/base.css">
		<link rel = "stylesheet" type = "text/css" href = "../css/header.css">
		<link rel = "stylesheet" type = "text/css" href = "../css/nav.css">
		<link rel = "stylesheet" type = "text/css" href = "../css/footer.css">
		<link rel = "stylesheet" type = "text/css" href = "../css/main.css">
		<link rel = "stylesheet" type = "text/css" href = "../css/add.css">
	</head>
	<body>
		<%@ include file = "header.jsp" %>
		<div class = "main">
			<%@ include file = "nav.jsp" %>
			<div class = "content">
			<h4>添加账号信息</h4>
				<div class="add-user">
					<form name = "addform" action = "adduser.jsp" method = "post">
						<table cellspacing="0">
							<tr class = "tr"><th>用户名：</th><td><input class = "input-text" type = "text" name = "name" onblur = "checkname()" placeholder = "请输入要添加的账号名"><span id = "nameMsg"></td></span></tr>
							<tr class = "tr"><th>密码：</th><td><input class = "input-text" type = "text" name = "password" onblur = "checkpw()" placeholder = "请输入密码"><span id = "pwMsg"></span></td></tr>
							<tr><th>年龄：</th><td><input class = "input-text"  type = "text" name = "age" placeholder = "请输入年龄"></td></tr>
							<tr><th colspan = "2"><input class = "btn" type = "submit" value = "添加" onclick = "check()"><input class = "btn" type = "reset" value = "重置"></th>
						</table>
					</form>
				</div>
			</div>
		</div>
		<%@ include file = "footer.jsp" %>
	</body>
	<script>
		function checkname(){
			if(addform.name.value == ""){
				document.getElementById('nameMsg').innerText = "用户名不能为空";
			}else{
				document.getElementById('nameMsg').innerText = "";
			}
		}
		
		function checkpw(){
			if(addform.password.value ==""){
				document.getElementById('pwMsg').innerText = "密码不能为空";
			}else {
				document.getElementById('pwMsg').innerText = "";
			}
		}
		
		function check(){
			if(addform.name.value == "" || addform.password.value == "") {
				return false;
			}
		}
	</script>
</html>