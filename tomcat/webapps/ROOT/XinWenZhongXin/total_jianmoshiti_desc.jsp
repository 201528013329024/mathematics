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
    
    <title>建模真题</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

    <style type="text/css">

a:link {
	color: #000000;
	text-decoration: none;
}

a:visited {
	color: #000000;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
	color: #FF0000;
}

a:active {
	text-decoration: none;
}
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
  
  
  
  
  <body background="photo/xw_desc_12.jpg">
   <table width='900' border='1' align='center'>
 <tr>
				<td colspan="2" id="x1" align="center">
				<img src="../photo/jmzt_1.jpg"></img>
				</td>

</tr>
<tr>
<td>
	<% 
     

	 
		   int rowcount=0;
    	           int pagecount=0;
   		   int pagesize=15;

		   Connection conn;
		   Statement stmt;
		   ResultSet rs=null;
		   try
		   {
		    Class.forName("com.mysql.jdbc.Driver");
		   }   
		   catch(ClassNotFoundException e)
		   {
		   	out.print("类找不到");
		   }
		   
		
		   
		   	conn = DriverManager
					.getConnection("jdbc:mysql://localhost/mydata?user=root&password=614025581");
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from jianmotimu order by time desc");
			
			
			
			
			


if(!rs.next()) { out.println("No  Record");}
	else{  rs.last();
		rowcount=rs.getRow();
		int  showpage=1;





pagecount=((rowcount%pagesize)==0?(rowcount/pagesize):(rowcount/pagesize)+1);
String top=request.getParameter("page");

if(top!=null){
	showpage=Integer.parseInt(top);
		if(showpage>pagecount){
			showpage=pagecount;
					}
			else  if(showpage<=0){
					showpage=1;
					}
}

rs.absolute((showpage-1)*pagesize+1);






for(int i=1; i<=pagesize; i++) {

           out.print("<table width='850' border='0' align='center'>");
	   out.print("<tr>");
	   out.print("<td width='10' align='center' colspan='3'>");
	   out.print(" <font color='#00FFFF'>");
	   out.print(" >");
	   out.print("</font>");
	   out.print("</td>");
	   out.print("<td width='700' id='x2'>");


                        String idd = rs.getString("id");  
			String s="XinWenZhongXin/add_jianmoshiti/jianmoshiti_desc.jsp?id="+idd+" ";
			
			out.print(" <a href="+s+"> ");
			    
				out.print(rs.getString("name"));   out.print("</a>");  

	   out.print("<td width='140'>");
out.print(rs.getString("time")); 
	   out.print("</td>");
	   out.print("<tr>");
		             if(!rs.next())
				break;
				 }  
			 out.print("</table>");     %> 

<br>
<center>
当前页数：[<%=showpage %>]&nbsp;

<a href="../XinWenZhongXin/total_jianmoshiti_desc.jsp?page=1">第一页</a>&nbsp;&nbsp;

<a href="../XinWenZhongXin/total_jianmoshiti_desc.jsp?page=<%=showpage-1 %>">上一页</a>&nbsp;&nbsp;

<a href="../XinWenZhongXin/total_jianmoshiti_desc.jsp?page=<%=showpage+1 %>">下一页</a> &nbsp;&nbsp;

 <a href="../XinWenZhongXin/total_jianmoshiti_desc.jsp?page=<%=pagecount%>">最后一页&nbsp;</a>&nbsp;&nbsp;

</center>
<%  }%>

</td>
</tr>
</table>
  </body>
</html>
