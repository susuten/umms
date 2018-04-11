<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*;"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看账户信息</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<link rel="stylesheet" type="text/css" href="../css/header.css">
<link rel="stylesheet" type="text/css" href="../css/nav.css">
<link rel="stylesheet" type="text/css" href="../css/footer.css">
<link rel="stylesheet" type="text/css" href="../css/main.css">
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="main">
		<%@ include file="nav.jsp"%>
		<div class="content">
			<div class="add-user">
				<h4>查看账号信息</h4>
				<%
					request.setCharacterEncoding("UTF-8");
					String name = request.getParameter("name");
					Class.forName("com.mysql.jdbc.Driver");
					Connection conn = DriverManager.getConnection(
							"jdbc:mysql://localhost/ummsdb", "root", "root");
					String sql = "select * from users where name = ?";
					PreparedStatement pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, name);
					ResultSet rs = pstmt.executeQuery();
					boolean b = rs.next();
					if (b == false) {
				%>
				<p>【提示】没有此账户</p>
				<%
					} else {
				%>
				<table border="1" cellspacing="0">
					<tr>
						<th>ID</th>
						<th>用户名</th>
						<th>密码</th>
						<th>年龄</th>
					</tr>
					<%
						while (true) {
								int id = rs.getInt("id");
								name = rs.getString("name");
								String password = rs.getString("password");
								int age = rs.getInt("age");
					%>
					<tr>
						<td><%=id%></td>
						<td><%=name%></td>
						<td><%=password%></td>
						<td><%=age%></td>
					</tr>
					<%
						b = rs.next();
								if (b == false) {
									break;
								}
							}
						}
						rs.close();
						pstmt.close();
						conn.close();
					%>
				</table>
				
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>