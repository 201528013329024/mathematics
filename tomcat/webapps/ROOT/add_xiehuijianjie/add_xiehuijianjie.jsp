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
		<title>����ǰ̨Э����</title>
		
		    <style type="text/css">
     #x1 {
	       font-size: 23px;
	       font-family: "����";
		   color:#FF0000;
		   }
	

	  #x2 {
	        font-size: 21px;
	        font-family: "����";
			color:#000000;
			}  
			

    </style>

	</head>


	<body>
			<form name="form1" action="add_xiehuijianjie_deal.jsp" method="post">
	
			<table width="1000" height="683" border="1" align="center">
				<tr>
					<td colspan="2" height="30" >
						<center>
							����ǰ̨Э����<br><br>
						<a href="update.jsp">��--����ǰ������ɾ���ɵ�Э������Ϣ--��</a>
						</center>
					</td>
				</tr>









				<tr>
					<td width="150" height="30" align="center" >
						����ʱ��
					</td>
					<td width="463" >
						<input id="x1" type="text" name="chenglishijian">
					</td>
					
				</tr>

		<tr>
					<td width="150" height="30" align="center" >
						 ���ܵ�λ
					</td>
					<td width="463" >
						<input id="x1" type="text" name="zhuguandanwei">
					</td>
					
				</tr>

		<tr>
					<td width="150" height="30" align="center" >
						 ������ּ
					</td>
					<td width="463" >
						<input id="x1" type="text" name="shetuanzhongzhi">
					</td>
					
				</tr>

		<tr>
					<td width="150" height="30" align="center" >
						ָ����ʦ
					</td>
					<td width="463" >
						<input id="x1" type="text" name="zhidaolaoshi">
					</td>
					
				</tr>

		<tr>
					<td width="150" height="30" align="center" >
						���λ᳤
					</td>
					<td width="463" >
						<input id="x1" type="text" name="xianrenhuizhang">
					</td>
					
				</tr>

		<tr>
					<td width="150" height="30" align="center" >
						Ʒ�ƻ
					</td>
					<td width="463" >
						<input id="x1" type="text" name="pingpaihuodong">
					</td>
					
				</tr>
				<tr>
					<td width="150" height="30" align="center" >
						Э����
					</td>
					<td width="563">
						<textarea id="x2" style="width:900px;height:700px;" name="xiehuijianjie"  wrap="hard" ></textarea>
					</td>
				</tr>






			

				

				<tr>
					<td width="150" height="30" align="center" >
						�����
					</td>
					<td width="463">
						<input id="x2" type="text" name="add_person">
					</td>
				
				</tr>


				<tr>
					<td width="210" height="30" align="center" >
						���ʱ��
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
		</form>
	</body>
</html>
