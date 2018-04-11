<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<link rel="stylesheet" type="text/css" href="../css/header.css">
<link rel="stylesheet" type="text/css" href="../css/footer.css">
<link rel="stylesheet" type="text/css" href="../css/login.css">
</head>
<body>
	<%@ include file="header_dlzc.jsp"%>
	<div class = "container">
		<div class = "login">
		<h4>登录</h4>
			<form name = "loginform" action = "login_check.jsp" method = "post">
				<table>
					<tr>
						<th>帐户名：</th>
						<td><input class = "input-text" type = "text" name = "name" onblur = "checkName()" placeholder = "请输入账户名"></td>
						<td><span id = "nameMsg"></span></td>
					</tr>
					<tr>
						<th>密码：</th>
						<td><input class = "input-text" type = "password" name = "password" onblur = "checkPW()" placeholder = "请输入密码"></td>
						<td><span id = "pwMsg"></span></td>
					</tr>
					<tr>
						<td colspan = "2">
							<div class = "btn">
								<input type = "submit" value = "登录"><a href = "register.jsp">注册</a>
							</div>
						</td>
					</tr>
					<tr>
						<td colspan = "2"><span>未注册？请先注册</span></td>
					</tr>
					
				</table>
			</form>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
	<script>
		function checkName() {
			if(loginform.name.value == null){
				document.getElementById("nameMsg").innerText = "帐户名不能为空！";
			}else{
				document.getElementById('nameMsg').innerText = "";
			}
		}
		
		function checkPW() {
			if(loginform.password.value == null){
				document.getElementById("pwMsg").innerText = "密码不能为空！";
			}else {
				document.getElementById('pwMsg').innerText = "";
			}
		}
	</script>
</body>
</html>