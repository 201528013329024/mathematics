<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="java.sql.*" errorPage=""%>

<%
	request.setCharacterEncoding("gb2312");
%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>





<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body>
		<%
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/mydata?user=root&password=614025581";
			Connection conn = DriverManager.getConnection(url);

			String id = request.getParameter("id");
			String sql = "delete from xiaoneisai_bm where id='" + id + "'";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			Statement stmt = conn.createStatement();

			pstmt.executeUpdate();
			pstmt.close();
			conn.close();

			out
					.println("<script language='javascript'>window.location.href='bm_info_delete.jsp';</script>");
		%>
	</body>
</html>
