<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>��ѧ��ģЭ���»�Աע��</title>

		<link REL=stylesheet href="1.css" type="text/css">
		
</head>

	<body>
		<form name="form1" action="HY_Regist_deal.jsp" method="post">
			<table width="700" height="400" border="1" align="center"
				background="images/1.png" bordercolor="#9966FF">
				<tr>
					<td colspan="2" height="30" id="x1">
						<center>
							��ѧ��ģЭ���Աע��
						</center>
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						����
					</td>
					<td width="463">
						<input id="x3" type="text" name="name" >
						
					</td>
				</tr>

				
				<tr>
					<td width="210" height="30" align="center" id="x2">
						ѧ��
					</td>
					<td width="463">
						<input id="x3" type="text" name="number">
						
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						�꼶
					</td>
					<td>
						<select name="class" id="x3">
							<option value="2010" selected>
								2010
							</option>
							<option value="2011">
								2011
							</option>
							<option value="2012">
								2012
							</option>
							<option value="2013">
								2013
							</option>
						</select>
				</tr>

				

				

				<tr>
					<td width="210" height="30" align="center" id="x2">
						����
					</td>
					<td width="463">
						<input id="x3" type="password" name="pwd">
					
					</td>
				</tr>

				


			


				<td bordercolor="#FFFFFF" colspan="2" height="30" "
					id="x3">
					
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="����" id="x4">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;







					
					<input type="submit" value="�ύ" id="x4" onclick="check()">
				</td>





				<tr>
					<td colspan="2" height="120" id="x3"></td>
				</tr>

				<tr>
					<td colspan="2" height="20" id="x5" align="center">
						����ʦ����ѧ ����ѧԺ ��ѧ��ģЭ�� ��ƹ�
						<br>
						<a href="administrator_yanzheng.jsp">����Ա��¼</a>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
