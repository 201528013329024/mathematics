<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	

		<link REL=stylesheet href="1.css" type="text/css">
	
	</head>

	<script type="text/JavaScript">
	
		function check() {
			if(form1.txm.value.length != 12)
			alert("���������Ϊ12λ����������д��");
		} 
		
	</script>


	<body>
		<form name="form1" action="add_txm_deal.jsp" method="post">
			<table width="500" height="200" border="1" align="center"
				 bordercolor="#9966FF">
				<tr>
					<td colspan="2" height="30" id="x1">
						<center>
							���������
						</center>
					</td>
				</tr>

			
				<tr>
					<td width="210" height="20" align="center" id="x2">
						������
					</td>
					<td width="463">
						<input id="x3" type="text" name="txm" >
					
					</td>
				</tr>

				

				<td bordercolor="#FFFFFF" colspan="2" height="20" align="center"
					id="x2">
					<input type="reset" value="����" id="x4">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;




					
					<input type="submit" value="�ύ" id="x4" onclick="check()">
				</td>

				
              
				
			</table>
			
			
			
		
		</form>
		
			<<center><a href="HouTai_Control.jsp">���غ�̨����</a></center>
	</body>
</html>
