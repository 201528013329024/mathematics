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
		<title>����ǰ̨��ϯ�ż��</title>
		
		    <style type="text/css">
     #x1 {
	       font-size: 23px;
	       font-family: "����";
		   color:#000000;
		   }
	

	  #x2 {
	        font-size: 21px;
	        font-family: "����";
			color:#000000;
			}  
			

    </style>

	</head>


	<body>
			<form name="form1" action="add_zhuxituan_deal.jsp" method="post">
	
			<table width="800" height="683" border="1" align="center">
				<tr>
					<td colspan="2" height="30" >
						<center>
							����ǰ̨��ϯ�ż��<br><br>
						<a href="update.jsp">��--����ǰ������ɾ���ɵ���ϯ����Ϣ--��</a>
						</center>
					</td>
				</tr>







				<tr>
					<td width="100" height="30" align="center" >
						���ż��
					</td>
					<td width="500">
						<textarea id="x2" style="width:500px;height:200px;" name="bumenjianjie"  wrap="hard" ></textarea>
					</td>
				</tr>



				<tr>
					<td width="100" height="30" align="center" >
					         �᳤	
					</td>
					<td width="500">
						<input id="x1" type="text" name="huizhang">
					</td>
					
				</tr>

				<tr>
					<td width="100" height="30" align="center" >
						���᳤
					</td>
					<td width="500">
						<textarea id="x2" style="width:300px;height:200px;" name="fuhuizhang"  wrap="hard" ></textarea>
					</td>
				</tr>
			

				<tr>
					<td width="100" height="30" align="center" >
					         �᳤����	
					</td>
					<td width="500">
						<input id="x1" type="text" name="huizhangzhuli">
					</td>
					
				</tr>				

				<tr>
					<td width="100" height="30" align="center" >
						�����
					</td>
					<td width="500">
						<input id="x2" type="text" name="add_person">
					</td>
				
				</tr>


				<tr>
					<td width="100" height="30" align="center" >
						���ʱ��
					</td>
					<td id="x2">
						<script src="time/WdatePicker.js"></script>
						<input type="text" name="time" value="" onclick="WdatePicker()">
					</td>
				
				</tr>
<tr>

				<td colspan="2" height="30" align="center" >
					<input type="reset" value="����">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;








					<input type="submit" value="�ύ" id="x4" onclick="check()">
				</td>

</tr>

			</table>
		</form>
	</body>
</html>
