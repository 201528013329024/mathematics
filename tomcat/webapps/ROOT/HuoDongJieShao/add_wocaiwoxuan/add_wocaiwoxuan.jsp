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
		<title>更新前台我才我炫活动介绍</title>
		
		    <style type="text/css">
     #x1 {
	       font-size: 23px;
	       font-family: "楷体";
		   color:#FF0000;
		   }
	

	  #x2 {
	        font-size: 21px;
	        font-family: "楷体";
			color:#000000;
			}  
			

    </style>

	</head>


	<body>
			<form name="form1" action="add_wocaiwoxuan_deal.jsp" method="post">
	
			<table width="1000" height="683" border="1" align="center">
				<tr>
					<td colspan="2" height="30" >
						<center>
						更新前台我才我炫活动介绍<br><br>
						<a href="update.jsp">！--更新前请点击我删除旧的我才我炫活动介绍信息--！</a>
						</center>
					</td>
				</tr>









			



				<tr>
					<td width="150" height="30" align="center" >
						 文本内容
					</td>
					<td width="563">
						<textarea id="x2" style="width:900px;height:700px;" name="main"  wrap="hard" ></textarea>
					</td>
				</tr>






			

				

				<tr>
					<td width="150" height="30" align="center" >
						添加者
					</td>
					<td width="463">
						<input id="x2" type="text" name="add_person">
					</td>
				
				</tr>


				<tr>
					<td width="210" height="30" align="center" >
						添加时间
					</td>
					<td id="x2">
						<script src="time/WdatePicker.js"></script>
						<input type="text" name="time" value="" onclick="WdatePicker()">
					</td>
				
				</tr>


				<td colspan="2" height="30" align="center" >
					<input type="reset" value="重置">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;








					<input type="submit" value="提交" id="x4" onclick="check()">
				</td>



			</table>
		</form>
	</body>
</html>
