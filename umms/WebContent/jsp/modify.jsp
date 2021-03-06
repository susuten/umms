<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改账号信息</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<link rel="stylesheet" type="text/css" href="../css/header.css">
<link rel="stylesheet" type="text/css" href="../css/nav.css">
<link rel="stylesheet" type="text/css" href="../css/footer.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
<link rel="stylesheet" type="text/css" href="../css/modify.css">
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="main">
		<%@ include file="nav.jsp"%>
		<div class="content">
			<h4>修改账号信息</h4>
			<div class="mod-user">
				<%
					Class.forName("com.mysql.jdbc.Driver");
					Connection conn = DriverManager.getConnection(
							"jdbc:mysql://localhost/ummsdb", "root", "root");
					String sql = "select * from users;";
					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
				%>
				<table border="1" cellspacing="0">
					<tr>
						<th>ID</th>
						<th>用户名</th>
						<th>密码</th>
						<th>年龄</th>
						<th>操作</th>
					</tr>
					<%
						while (true) {
							// 移动到下一条数据
							boolean b = rs.next();
							// 检查下一条数据是否存在
							if (false == b) {
								// 如果下一条数据不存在，就不用再遍历了
								break;
							}
							int id = rs.getInt("id");
							String name = rs.getString("name");
							String password = rs.getString("password");
							int age = rs.getInt("age");
					%>
					<tr>
						<td><%=id%></td>
						<td><%=name%></td>
						<td><%=password%></td>
						<td><%=age%></td>
						<td><a href = modify2.jsp?id=<%=id %>>修改</a></td>
					</tr>
					<%
						}
						rs.close();
						stmt.close();
						conn.close();
					%>
				</table>

			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>