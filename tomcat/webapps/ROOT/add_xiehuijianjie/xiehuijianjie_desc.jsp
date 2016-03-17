<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="java.sql.*"%>
<%@page import="java.net.URLEncoder"%>
<%
	request.setCharacterEncoding("gb2312");
%>


<%@ page contentType="text/html;charset=GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>协会简介</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

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
  
  
  
  
  <body  background="photo/xw_desc_12.jpg">
    
	<% 
	  Connection conn;
	  Statement stmt;
	  ResultSet rs=null;
	  conn = DriverManager
					.getConnection("jdbc:mysql://localhost/mydata?user=root&password=614025581");
	  stmt = conn.createStatement();
	  String id=request.getParameter("id"); 
	  
	  rs = stmt.executeQuery("select * from xiehuijianjie where id='"+id+"'");
      
      
      rs.next(); 

    
   %>
   
   <table width="1010"  border="1" align="center" >
   <tr height="170">
				<td colspan="2" id="x1" align="center">
				<img src="../photo/xhjj_1.jpg" width=1010></img>
				</td>

			</tr>
	<tr >
<td width="100"  align="center">
成立时间
</td>

<td id="x2">
&nbsp;
<%=rs.getString("chenglishijian")%>
</td>
</tr>

	<tr >
<td  align="center">
主管单位
</td>

<td id="x2">
&nbsp;
<%=rs.getString("zhuguandanwei")%>
</td>
</tr>

	<tr >
<td  align="center">
社团宗旨
</td>

<td id="x2">
&nbsp;
<%=rs.getString("shetuanzhongzhi")%>
</td>
</tr>

	<tr >
<td  align="center">
指导老师
</td>

<td id="x2">
&nbsp;
<%=rs.getString("zhidaolaoshi")%>
</td>
</tr>

	<tr>
<td  align="center">
现任会长
</td>

<td id="x2">
&nbsp;
<%=rs.getString("xianrenhuizhang")%>
</td>
</tr>
		
	

	<tr >
<td align="center">
品牌活动
</td>

<td id="x2">
&nbsp;
<%=rs.getString("pingpaihuodong")%>
</td>
</tr>
		
	<tr>
<td>
协会简介
</td>
	<td>
	<table width="930"  border="0" align="right" >
   
			<tr>
				<td colspan="2"  align="right">
					<textarea style="background-color:#FFFFFF"id="x2"  readonly  style="width:900px;height:100px;" style="overflow-x:hidden;overflow-y:visible;i;border: 0 none" ><%=rs.getString("xiehuijianjie")%></textarea>
					
					
				</td>
			</tr>







<tr>
				<td colspan="2" height="100" id="x2" align="center">
			
				</td>


			</tr>



			<tr>
				<td align="center" align="center">


					添加者：&nbsp;<%=rs.getString("adduser")%>


					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;



					<%=rs.getString("time")%></td>
			</tr>


		</table>
		</td>
		</tr>
</table>
  </body>
</html>
