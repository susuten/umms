<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String headerName = null;
	headerName = (String)session.getAttribute("name");
	if(headerName == null) {
		headerName = "";
		response.sendRedirect("jsp/login.jsp");
	}
%>
<div class = "header">
	<div class = "container">
		<h3>账户信息管理系统</h3>
		<p><%=headerName%></p>
	</div>
</div>
