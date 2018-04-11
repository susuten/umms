<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.sql.Connection,java.sql.DriverManager,java.sql.Statement,java.sql.ResultSet;"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看账户信息</title>
<link rel = "stylesheet" type = "text/css" href = "../css/base.css">
<link rel = "stylesheet" type = "text/css" href = "../css/header.css">
<link rel = "stylesheet" type = "text/css" href = "../css/nav.css">
<link rel = "stylesheet" type = "text/css" href = "../css/footer.css">
<link rel = "stylesheet" type = "text/css" href = "../css/main.css">
<link rel = "stylesheet" type = "text/css" href = "../css/see.css">
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="main">
		<%@ include file="nav.jsp"%>
		<div class="content">
			<h4>查看账号信息</h4>
			<div class="see-user">
				<ul>
					<li><a href = "seeAll.jsp">单击查看所有账户的信息</a></li>
					<li class = "inmsg" onclick = "showInput()">
						<p id = "wenben">单击输入帐户名查看某个账户的信息</p>
						<form class = "seeform" name = "seeform" action = "seeSome.jsp" method = "post">							
							<input class = "inputName" type = "text" name = "name" placeholder = "请输入账户名进行查询"><input class = "sub" type = "submit" value = "OK">
						</form>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
	<script>
		function showInput() {
			document.getElementById("wenben").style.display = "none";
			seeform.style.display = "block";
		}
	</script>
</body>
</html>