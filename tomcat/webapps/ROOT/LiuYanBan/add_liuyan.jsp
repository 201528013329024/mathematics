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
		<title>���԰�</title>
		

	</head>


	<body background="../photo/xw_desc_12.jpg">
<form name="form1" action="add_liuyan_deal.jsp" method="post">
	
	
		<table width="930" border="1" align="center">
<tr>
<td>
<img src="../photo/lyb_1.jpg"></img>
</td>
</tr>

<tr height="30">
<td>
<marquee scrollamount="4" 
						scrollAmount="2" scrollDelay="2" direction="left" class="gonggao-p">

���ã�Ϊ����ѧ��ģЭ��ĸ��÷�չ�������������ı�����������ǻ�������������ʱ�ظ������Ϣ�������͵�����QQ���䡣ͬʱҲϣ���㲻Ҫ�������ԣ�лл������
</marquee>	
</td>
</tr>

<tr>
<td>		
			<table width="500" height="400" border="1" align="center">
				<tr>
					<td colspan="2" height="30" >
						<center>
							ǩд����
						</center>
					</td>
				</tr>









				<tr>
					<td width="150" height="30" align="center" >
						����
					</td>
					<td width="463" >
						<input id="x1" type="text" name="zhuti">
					</td>
					
				</tr>




				<tr>
					<td width="150" height="30" align="center" >
						 ��������
					</td>
					<td width="350">
						<textarea id="x2" style="width:350px;height:100px;" name="main"  wrap="hard" ></textarea>
					</td>
				</tr>






			

				

				<tr>
					<td width="150" height="30" align="center" >
						������
					</td>
					<td width="350">
						<input id="x2" type="text" name="add_person">
					</td>
				
				</tr>

				<tr>
					<td width="150" height="30" align="center" >
						QQ
					</td>
					<td width="463" >
						<input id="x1" type="text" name="qq">
					</td>
					
				</tr>

				<tr>
					<td width="150" height="30" align="center" >
						����ʱ��
					</td>
					<td id="x2">
						<script src="time/WdatePicker.js"></script>
						<input type="text" name="time" value="" onclick="WdatePicker()">
					</td>
				
				</tr>


				<td colspan="2" height="30" align="center" >
					<input type="reset" value="����">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;








					<input type="submit" value="�ύ" id="x4" onclick="check()">
				</td>



			</table>

</td></tr>
		</form>
	</body>
</html>
