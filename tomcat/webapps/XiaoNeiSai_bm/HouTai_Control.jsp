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

		<title>My JSP 'HouTai_Control.jsp' starting page</title>

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
		<table width="400" height="300" border="1" align="center">
			<tr>
				<td colspan="2" height="30" id="x1">
					<center>
						У����������̨����ϵͳ
					</center>
				</td>
			</tr>

			<tr>
				<td colspan="2" height="30" id="x1">
					<center>
						<a href="bm_info.jsp">������Ϣ�鿴</a>
					</center>
				</td>
			</tr>

			<tr>
				<td colspan="2" height="30" id="x1">
					<center>
						<a href="bm_info_delete.jsp">ɾ��������Ϣ</a>
					</center>
				</td>
			</tr>


			<tr>
				<td colspan="2" height="30" id="x1">
					<center>
						<a href="txm_info.jsp">������ע������鿴</a>
					</center>
				</td>
			</tr>


			<tr>
				<td colspan="2" height="30" id="x1">
					<center>
						<a href="add_txm.jsp">���������</a>
					</center>
				</td>
			</tr>

			<tr>
				<td colspan="2" height="30" id="x1">
					<center>
						<a href="txm_delete.jsp">ɾ��������</a>
					</center>
				</td>
			</tr>


		</table>

		
		<center>
			<a href="XiaoNeiSai_bm.jsp">����ǰ̨����</a>
		</center>
	</body>
</html>
