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
  
  <body background="photo/bj_6.jpg">


	<table width="930" border="1" align="center">
<tr>
<td>



		<table width="930" border="0" align="center">
<tr>
<td>
<img src="../photo/glydl.jpg"></img>
</td>
</tr>

<tr height="100">
<td>
</td>
</tr>


<tr>
<td>

		<form action="administrator_yanzheng_deal.jsp" method="post";">
			<table width="400" height="200" border=1 align="center">
				<tr>
					<td align="center">
						����Ա����
					</td>
					<td>
						<input type="text" name="admi_name">
					</td>
				</tr>

				<tr>
					<td align="center">
						����
					</td>
					<td>
						<input type="password" name="pwd" value="">
					</td>
				</tr>

				<tr>
					<td align="center">
						<input type="reset" value="����">
						<br>
					</td>
					<td align="center">
						<input type="submit" value="��¼">


					</td>
				</tr>
			</table>

<tr height="100">
<td>
</td>
</tr>


<tr style="background-image:url(photo/yj_3.jpg)" height="70" width="930">
				<td colspan="4" align="center" >
<font color="#333333" face="����" size="2">
					Copyright 2012-2013 ����ʦ����ѧ ����ѧԺ ��ѧ��ģЭ�� ��ƹ�&nbsp;&nbsp;&nbsp; <a class="a1" href="administrator_yanzheng.jsp">����Ա��½</a></font>


				</td>
			</tr>


</td>
</tr>
</table>




</td>
</tr>
</table>
	</body>
</html>
