<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ummsdb","root","root");
	String sql = "select * from users where name = ? and password = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, password);
	ResultSet rs = pstmt.executeQuery();
	String msg = "登录成功，单击确定进入主页";
	if(rs.next()){
		session.setAttribute("name",name);
		session.setAttribute("password",password);
		response.sendRedirect("../index.jsp");
	}
	else {
		 msg = "账户名或密码错误，单击确定继续";
		 response.sendRedirect("login.jsp");
	}
	pstmt.close();
	conn.close();
%>
<script>
	window.alert('<%=msg%>');
</script>
