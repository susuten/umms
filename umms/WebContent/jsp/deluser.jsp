<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<%
	String idStr = request.getParameter("id");
	int id = Integer.parseInt(idStr == null || "".equals(idStr)?"0":idStr); 
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(
		"jdbc:mysql://localhost/ummsdb", "root", "root");
	String sql = "delete from users where id = ?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1,id);
	int result = pstmt.executeUpdate();
	String msg = "删除失败！单击确定跳转到主页";
	if(result == 1) {
		int userId = 0;
		userId = (int)session.getAttribute("id");
		if(userId == id) {
			response.sendRedirect("jsp/login.jsp");
		}else{
			msg = "删除成功！单击确定跳转到主页";
		}
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