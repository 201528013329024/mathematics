<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
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

		<title>My JSP 'administrator_yanzheng_deal.jsp' starting page</title>

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
			String username = request.getParameter("admi_name");
			String password = request.getParameter("pwd");

			if (username.equals("shumo2012") && password.equals("xhg1993")) {
		%>
		<script language="javascript">
   window.location.href="HouTai_Control.jsp";
   </script>
		<%
			} else {
		%>

		<script language="javascript">
		 alert("登录信息错误，请重新输入。");
		 window.location.href="administrator_yanzheng.jsp";
		 </script>
		<%
			}
		%>
	</body>
</html>
