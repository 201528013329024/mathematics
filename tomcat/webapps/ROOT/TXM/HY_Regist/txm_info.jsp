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
			ResultSet rs = null;
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				out.print("���Ҳ���");
			}

			
				conn = DriverManager
						.getConnection("jdbc:mysql://localhost/mydata?user=root&password=614025581");
				stmt = conn.createStatement();
				rs = stmt.executeQuery("select * from txm");

				out
						.print("<table width='80%' hight='40%' border='2' align='center'>");

				out.print("<tr>");
				out.print("<td align='center'>ID</td>");
				out.print("<td align='center'>������</td>");
				out.print("<td align='center'>�Ƿ��ѱ�ע��</td>");

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
					out.print("<td align='center'>" + rs.getString("id")
							+ "</td>");
					out.print("<td align='center'>"
							+ rs.getString("txm_number") + "</td>");
					out.print("<td align='center'>" + rs.getString("is_use")
							+ "</td>");
					out.print("</tr>");
		    if(!rs.next())
				break;
				 }  		
				out.print("</table>");  %>
			
			
		

 

<br>
<center>
��ǰҳ����[<%=showpage %>]&nbsp;

<a href="txm_info.jsp?page=1">��һҳ</a>&nbsp;&nbsp;

<a href="txm_info.jsp?page=<%=showpage-1 %>">��һҳ</a>&nbsp;&nbsp;

<a href="txm_info.jsp?page=<%=showpage+1 %>">��һҳ</a> &nbsp;&nbsp;

 <a href="txm_info.jsp?page=<%=pagecount%>">���һҳ&nbsp;</a>&nbsp;&nbsp;

</center>
<%  }%>


	</body>
</html>