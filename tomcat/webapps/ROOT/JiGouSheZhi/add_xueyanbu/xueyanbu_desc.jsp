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
    
    <title>ѧ�в����</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

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
  
  
  
  
  <body background="photo/xw_desc_12.jpg">
    
	<% 
	  Connection conn;
	  Statement stmt;
	  ResultSet rs=null;
	  conn = DriverManager
					.getConnection("jdbc:mysql://localhost/mydata?user=root&password=614025581");
	  stmt = conn.createStatement();
	  String id=request.getParameter("id"); 
	  
	  rs = stmt.executeQuery("select * from xueyanbu where id='"+id+"' ");
      
      
      rs.next(); 

    
   %>
   
   <table width="800"  border="1" align="center" >
   <tr>
				<td colspan="2" id="x1" align="center">
				<img src="../photo/jg_1.jpg"></img>
				</td>

			</tr>

   <tr>
				<td colspan="2" id="x1" align="center">
				ѧ�в�
				</td>

			</tr>
<tr>
<td width="500" align="center" id="x2" >
���ż��
</td>

<td  width="300" align="center" id="x2" >
���ų�Ա
</td>

</tr>


<tr height="400">

	<td>
	<table width="500"  border="0" align="center" >
<tr height="100">
<td>
</td>
</tr>

			<tr>
				<td  align="center">
					<textarea style="background-color:#FFFFFF"id="x2"  readonly  style="width:500px;height:300px;" style="overflow-x:hidden;overflow-y:visible;i;border: 0 none" ><%=rs.getString("zhuyaogongzuo")%></textarea>
					
		</table>			
				</td>

<td  >
	<table width="300" height="300" border="0" align="center" >
<td align="center" height="30" id="x2" >
�� &nbsp; ��
</td>
	
<td  id="x2" >
<%=rs.getString("buzhang")%>
</td>
	
   
			<tr height="100">
<td align="center" id="x2" >
��������
</td>
				<td  align="center">
					<textarea style="background-color:#FFFFFF"id="x2"  readonly  style="width:200px;height:100px;" style="overflow-x:hidden;overflow-y:visible;i;border: 0 none" ><%=rs.getString("bumenlishi")%></textarea>
					
					
				</td>
			</tr>

</table>
</td>







			<tr>
				<td colspan="2" align="center" align="center">


					����ߣ�&nbsp;<%=rs.getString("adduser")%>


					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;



					<%=rs.getString("time")%></td>
			</tr>


	
</table>
  </body>
</html>
