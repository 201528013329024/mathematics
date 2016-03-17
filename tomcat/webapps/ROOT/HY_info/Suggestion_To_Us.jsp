<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
	<body>
	<% 


		   int rowcount=0;
    	           int pagecount=0;
   		   int pagesize=30;

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
			rs = stmt.executeQuery("select * from huiyuan order by number desc");
			
			out.print("<table width='80%' hight='40%' border='2' align='center'>");
			
			out.print("<tr>");
			out.print("<td align='center'>姓名</td>");
			out.print("<td align='center'>学号</td>");
			out.print("<td align='center'>年级</td>");
			out.print("<td align='center'>专业</td>");
			out.print("<td align='center'>学院</td>");
			out.print("<td align='center'>性别</td>");
			out.print("<td align='center'>QQ</td>");
			out.print("<td align='center'>联系电话</td>");
			out.print("<td align='center'>会员对我们的建议</td>");
            out.print("</tr>");
            
		
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

			    out.print("<tr>");
				out.print("<td align='center'>"+rs.getString("name")+"</td>");
				out.print("<td align='center'>"+rs.getString("number")+"</td>");
				out.print("<td align='center'>"+rs.getString("class")+"</td>");
				out.print("<td align='center'>"+rs.getString("major")+"</td>");
				out.print("<td align='center'>"+rs.getString("xueyuan")+"</td>");
				out.print("<td align='center'>"+rs.getString("sex")+"</td>");
				out.print("<td align='center'>"+rs.getString("qq")+"</td>");
				out.print("<td align='center'>"+rs.getString("tel")+"</td>");
				out.print("<td align='center'>"+rs.getString("suggestion")+"</td>");
			
		             if(!rs.next())
				break;
				 }  
			 out.print("</table>");     %> 

<br>
<center>
当前页数：[<%=showpage %>]&nbsp;

<a href="HuiYuan_information.jsp?page=1">第一页</a>&nbsp;&nbsp;

<a href="HuiYuan_information.jsp?page=<%=showpage-1 %>">上一页</a>&nbsp;&nbsp;

<a href="HuiYuan_information.jsp?page=<%=showpage+1 %>">下一页</a> &nbsp;&nbsp;

 <a href="HuiYuan_information.jsp?page=<%=pagecount%>">最后一页&nbsp;</a>&nbsp;&nbsp;

</center>
<%  }%>


	</body>
</html>