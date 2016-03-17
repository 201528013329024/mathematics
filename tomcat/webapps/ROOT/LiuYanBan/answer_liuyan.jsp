<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="java.sql.*"%>
<%@page import="java.net.URLEncoder"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">



<html>
	<head>
		<title>回复留言</title>
		
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
<% 
	  Connection conn;
	  Statement stmt;
	  ResultSet rs=null;
	  conn = DriverManager
					.getConnection("jdbc:mysql://localhost/mydata?user=root&password=614025581");
	  stmt = conn.createStatement();  

	  String idd = request.getParameter("id");
      
      

    
   %>
			<form name="form1" action=answer_liuyan_deal.jsp?id=<%=request.getParameter("id")%> " method="post">
	
			<table width="500" height="400" border="1" align="center">
				<tr>
					<td colspan="2" height="30" >
						<center>
							回复留言
						</center>
					</td>
				</tr>









				
				<tr>
					<td width="150" height="30" align="center" >
						 回复内容
					</td>
					<td width="350">
						<textarea id="x2" style="width:350px;height:100px;" name="answer"  wrap="hard" ></textarea>
					</td>
				</tr>






			

				

				<tr>
					<td width="150" height="30" align="center" >
						回复人
					</td>
					<td width="350">
						<input id="x2" type="text" name="answer_person">
					</td>
				
				</tr>


				<tr>
					<td width="150" height="30" align="center" >
						回复时间
					</td>
					<td id="x2">
						<script src="time/WdatePicker.js"></script>
						<input type="text" name="answer_time" value="" onclick="WdatePicker()">
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
