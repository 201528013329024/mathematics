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
    
    <title>����չʾ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

    <style type="text/css">
     #x1 {
	       font-size: 23px;
	       font-family: "����";
		   color:#FF0000;l
		   }
	

	  #x2 {
	        font-size: 21px;
	        font-family: "����";
			color:#000000;
			}  
			

    </style>



  </head>
  
  
  
	<script type="text/javascript">

	function confirmit()
      {
		   if (!confirm("��ȷ��ɾ������������"))
	        {
		     window,event.returnValue = false;
									
			}
		}         
	</script>
  
  <body bgcolor=#999999>
    
	<% 
	  Connection conn;
	  Statement stmt;
	  ResultSet rs=null;
	  conn = DriverManager
					.getConnection("jdbc:mysql://localhost/mydata?user=root&password=614025581");
	  stmt = conn.createStatement();  
	  rs = stmt.executeQuery("select * from liuyan ");
      
      
      

    
   %>
   
   <table width="1150"  border="0" align="center" >
   <tr>
				<td colspan="6" id="x1" align="center">
				<img src="picture/jianmoshiti_logo.jpg"></img>
				</td>
			</tr>



<tr>
	<td width="100"  align="center">
				id
				</td>
	<td width="150"  align="center">
				������
				</td>
	<td width="350"  align="center">
				��������
				</td>
	<td width="350"  align="center">
				�ظ�����
				</td>
	<td width="100"  align="center">
				�ظ���
				</td>
			
	<td width="100"  align="center">
				ɾ������
				</td>

</tr>
			

			
	<tr>
<td colspan="6">
	<table width="1150"   border="1" align="center" >
<% while(rs.next()) {  %> 

<tr>

<td width="100" align="center">



	<%=rs.getString("id")%>
					
	</td>
				<td width="150" d="x2" align="center">
					<center>
					<%=rs.getString("liuyan_person")%>
					<br>
					QQ:<%=rs.getString("qq")%><br>
					<%=rs.getString("liuyan_time")%></td>
					</center>
				</td>

	


<td width="350" >



			
				
			<textarea style="background-color:#999999"id="x2"  readonly  style="width:350px;" style="overflow-x:hidden;overflow-y:visible;i;border: 0 none" ><%=rs.getString("content")%></textarea>
					
					
				</td>

<% if(!(rs.getString("answer_content").equals("null"))) {%>
 <td width="350" d="x2" align="center">
					<textarea style="background-color:#999999"id="x2"  readonly  style="width:350px;" style="overflow-x:hidden;overflow-y:visible;i;border: 0 none" ><%=rs.getString("answer_content")%></textarea>
 </td>
<%  }  else  {%>
<td width="350" align="center"><a  href="LiuYanBan/answer_liuyan.jsp?id=<%=rs.getString("id")%>">�ظ�����</a></td>

<% }%>

 

<% if(!(rs.getString("answer_person").equals("null"))) {%>

<td width="150" d="x2" align="center">
					<center>
					<%=rs.getString("answer_person")%>
					<br>
					<%=rs.getString("answer_time")%></td>
					</center>
				</td>

<%  }  else  {%>

<td width="100" align="center">- - - -</td>

<% }%>





<td width="100" align="center"><a onclick='JavaScript:confirmit()'  href="LiuYanBan/liuyan_delete.jsp?id=<%=rs.getString("id")%>">ɾ��</a></td>


			

					

			</tr>

<%  } %> 






		</table>
		</td>
		</tr>
</table>
  </body>
</html>
