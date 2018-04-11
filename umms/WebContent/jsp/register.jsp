<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>register</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<link rel="stylesheet" type="text/css" href="../css/header.css">
<link rel="stylesheet" type="text/css" href="../css/footer.css">
<link rel="stylesheet" type="text/css" href="../css/login.css">
<link rel="stylesheet" type="text/css" href="../css/register.css">
</head>
<body>
	<%@ include file="header_dlzc.jsp"%>
	<div class = "container">
		<div class = "register">
			<h4>注册</h4>
			<form name = "registerform" action = "register_add.jsp" method = "post">
				<table>
					<tr>
						<th>帐户名：</th>
						<td><input class = "input-text" type = "text" name = "name" onblur = "checkName()" placeholder = "请输入您的账户名"></td>
						<td><span id = "nameMsg"></span></td>
					</tr>
					<tr>
						<th>密码：</th>
						<td><input class = "input-text" type = "password" name = "password" onblur = "checkPW()" placeholder = "请输入您的密码"></td>
						<td><span id = "pwMsg"></span></td>
					</tr>
					<th>年龄：</th>
						<td><input class = "input-text" type = "text" name = "age" onblur = "checkAge()" placeholder = "年龄范围0~120"></td>
						<td><span id = "ageMsg"></span></td>
					<tr class = "btn">
						<td colspan = "2"><input type = "submit" value = "确定"><input type = "reset" value = "重置"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
	<script>
		var age = registerform.password.value;
		var ageMsg = document.getElementById("pwMsg");
		function checkName() {
			if(registerform.name.value == null){
				document.getElementById("nameMsg").innerText = "帐户名不能为空！";
			}else{
				document.getElementById('nameMsg').innerText = "";
			}
		}
		
		function checkPW() {
			if(registerform.password.value == null){
				document.getElementById("pwMsg").innerText = "密码不能为空！";
			}else {
				document.getElementById('pwMsg').innerText = "";
			}
		}
		function checkAge() {
			if(age == null){
				ageMsg.innerText = "年龄不能为空！";
			}else if(age < 0 || age > 120) {
				ageMsg.innerText = "年龄必须在0~120之间！"
			}
			else{
				ageMsg.innerText = "";
			}
		}
	</script>
</body>
</html>