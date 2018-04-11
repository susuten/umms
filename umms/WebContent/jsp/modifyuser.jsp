<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String idStr = request.getParameter("id");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String ageStr = request.getParameter("age");
	int age = 0;
	int id = 0;
	if(ageStr == null){
		age =0;
	}
	if(idStr == null) {
		id = 0;
	}
	age = Integer.parseInt(ageStr);
	id = Integer.parseInt(idStr);
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ummsdb","root","root");
	String sql = "update users set name = ?,password = ?,age = ? where id = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, password);
	pstmt.setInt(3, age);
	pstmt.setInt(4,id);
	int result = pstmt.executeUpdate();
	String msg = "修改失败！单击确定跳转到首页";
	if(result == 1) {
		msg = "修改成功！单击确定跳转到首页";
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