<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String ageStr = request.getParameter("age");
	int age = 0;
	if(ageStr == null) {
		age = 0;
	} else {
		age = Integer.parseInt(ageStr);
	}
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ummsdb","root","root");
	String sql = "insert into users(name,password,age) values(?,?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, password);
	pstmt.setInt(3, age);
	int result = pstmt.executeUpdate();
	String msg = "添加失败！单击确定跳转到首页";
	if(result == 1) {
		msg = "添加成功！单击确定跳转到首页";
	}
	pstmt.close();
	conn.close();
%>
<script>
	window.alert('<%=msg%>');
</script>
<%
	response.setHeader("Refresh","1;url=../index.jsp");
%>