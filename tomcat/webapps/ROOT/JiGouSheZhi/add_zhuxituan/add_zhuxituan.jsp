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
		<title>更新前台主席团简介</title>
		
		    <style type="text/css">
     #x1 {
	       font-size: 23px;
	       font-family: "楷体";
		   color:#000000;
		   }
	

	  #x2 {
	        font-size: 21px;
	        font-family: "楷体";
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
							更新前台主席团简介<br><br>
						<a href="update.jsp">！--更新前请点击我删除旧的主席团信息--！</a>
						</center>
					</td>
				</tr>







				<tr>
					<td width="100" height="30" align="center" >
						部门简介
					</td>
					<td width="500">
						<textarea id="x2" style="width:500px;height:200px;" name="bumenjianjie"  wrap="hard" ></textarea>
					</td>
				</tr>



				<tr>
					<td width="100" height="30" align="center" >
					         会长	
					</td>
					<td width="500">
						<input id="x1" type="text" name="huizhang">
					</td>
					
				</tr>

				<tr>
					<td width="100" height="30" align="center" >
						副会长
					</td>
					<td width="500">
						<textarea id="x2" style="width:300px;height:200px;" name="fuhuizhang"  wrap="hard" ></textarea>
					</td>
				</tr>
			

				<tr>
					<td width="100" height="30" align="center" >
					         会长助理	
					</td>
					<td width="500">
						<input id="x1" type="text" name="huizhangzhuli">
					</td>
					
				</tr>				

				<tr>
					<td width="100" height="30" align="center" >
						添加者
					</td>
					<td width="500">
						<input id="x2" type="text" name="add_person">
					</td>
				
				</tr>


				<tr>
					<td width="100" height="30" align="center" >
						添加时间
					</td>
					<td id="x2">
						<script src="time/WdatePicker.js"></script>
						<input type="text" name="time" value="" onclick="WdatePicker()">
					</td>
				
				</tr>
<tr>

				<td colspan="2" height="30" align="center" >
					<input type="reset" value="重置">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;








					<input type="submit" value="提交" id="x4" onclick="check()">
				</td>

</tr>

			</table>
		</form>
	</body>
</html>
