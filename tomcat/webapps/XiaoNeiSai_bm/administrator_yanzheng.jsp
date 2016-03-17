<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'administrator_yanzheng.jsp' starting page</title>
    
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
		<form action="administrator_yanzheng_deal.jsp" method="post";">
			<table width="400" height="200" border=1 align="center">
				<tr>
					<td align="center">
						管理员名称
					</td>
					<td>
						<input type="text" name="admi_name">
					</td>
				</tr>

				<tr>
					<td align="center">
						密码
					</td>
					<td>
						<input type="password" name="pwd" value="">
					</td>
				</tr>

				<tr>
					<td align="center">
						<input type="reset" value="重置">
						<br>
					</td>
					<td align="center">
						<input type="submit" value="登录">


					</td>
				</tr>
			</table>
			
				<center>
			<a href="XiaoNeiSai_bm.jsp">返回前台界面</a>
		</center>
	</body>
</html>
