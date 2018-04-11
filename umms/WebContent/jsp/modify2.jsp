<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改账户信息</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<link rel="stylesheet" type="text/css" href="../css/header.css">
<link rel="stylesheet" type="text/css" href="../css/nav.css">
<link rel="stylesheet" type="text/css" href="../css/footer.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link rel="stylesheet" type="text/css" href="../css/realmodify.css">
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="main">
		<%@ include file="nav.jsp"%>
		<div class="content">
			<h4>修改账号信息</h4>
			<div class="mod-user">
				<%
					String idStr = request.getParameter("id");
					/* 取出来的东西有可能为null，要加以判断 */
					int id = Integer.parseInt(idStr == null || "".equals(idStr)?"0":idStr); 
					Class.forName("com.mysql.jdbc.Driver"); 
					Connection conn = DriverManager.getConnection(
							"jdbc:mysql://localhost:3306/ummsdb", "root", "root");
					String sql = "select * from users where id = ?";
					PreparedStatement pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, id);
					ResultSet rs = pstmt.executeQuery();
					if (rs.next()) {
						String name = rs.getString("name");
						String password = rs.getString("password");
						int age = rs.getInt("age");
				%>
				<form name="modifyform" action="modifyuser.jsp" method="post">
					<input type="hidden" name="id" value="<%=id%>">
					<table cellspacing="0">
						<tr><th>用户名：</th><td><input class = "input-text" type="text" name="name" value="<%=name%>"></td></tr>
						<tr><th>密码：</th><td><input class = "input-text" type = "password" name = "password" value="<%=password%>"></td></tr>
						<tr><th>年龄：</th><td><input class = "input-text" type = "text" name = "age" value="<%=age%>"></td></tr>
						<tr><th colspan = "2"><input class = "btn" type = "submit" value = "修改"><input class = "btn" type = "reset" value = "重置"></th>
					</table>
				</form>
				<%
					}
					rs.close();
					pstmt.close();
					conn.close();
				%>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>