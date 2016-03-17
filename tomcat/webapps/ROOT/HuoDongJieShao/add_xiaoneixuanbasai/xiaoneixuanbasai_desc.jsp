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
    
    <title>数学建模校内选拔赛介绍</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

    <style type="text/css">
     #x1 {
	       font-size: 23px;
	       font-family: "楷体";
		   color:#FF0000;l
		   }
	

	  #x2 {
	        font-size: 21px;
	        font-family: "楷体";
			color:#000000;
			}  
			

    </style>



  </head>
  
  
  
  
  <body background="photo/xw_desc_12.jpg">
    
	<% 
	  Connection conn;
	  Statement stmt;
	  ResultSet rs=null;
	  conn = DriverManager
					.getConnection("jdbc:mysql://localhost/mydata?user=root&password=614025581");
	  stmt = conn.createStatement();
	  String id=request.getParameter("id"); 
	  
	  rs = stmt.executeQuery("select * from xiaoneixuanbasai where id=1 ");
      
      
      if(rs.next())  { 

    
   %>
   
   <table width="930"  border="1" align="center" >
   <tr>
				<td colspan="2" id="x1" align="center">
				<img src="../photo/hdjs_1.jpg"></img>
				</td>
			</tr>
			
	<tr>
	<td>
	<table width="930"  border="0" align="center" >
 


			<tr>
			
				<td align="right">
					<textarea style="background-color:#FFFFFF"id="x2"  readonly  style="width:900px;height:100px;" style="overflow-x:hidden;overflow-y:visible;i;border: 0 none" ><%=rs.getString("content")%></textarea>
					
					
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
<% }  else  {out.print("No recond!");}%>
</table>
  </body>
</html>
