<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>

	<script type="text/javascript">

	function confirmit()
      {
		   if (!confirm("你确认删除此条形码？"))
	        {
		     window,event.returnValue = false;
									
			}
		}         
	</script>
	<body>
		<%
			int flag = 0;
			Connection conn;
			Statement stmt;
			ResultSet rs = null;
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				out.print("类找不到");
			}

			try {
				conn = DriverManager
						.getConnection("jdbc:mysql://localhost/mydata?user=root&password=614025581");
				stmt = conn.createStatement();
				rs = stmt.executeQuery("select * from txm");

				out
						.print("<table width='80%' hight='40%' border='2' align='center'>");

				out.print("<tr>");
				out.print("<td align='center'>ID</td>");
				out.print("<td align='center'>条形码</td>");
				out.print("<td align='center'>是否已被注册</td>");
				out.print("<td align='center'>删除条形码</td>");
				out.print("</tr>");

				while (rs.next()) {
					out.print("<td align='center'>" + rs.getString("id")
							+ "</td>");
					out.print("<td align='center'>"
							+ rs.getString("txm_number") + "</td>");
					out.print("<td align='center'>" + rs.getString("is_use")
							+ "</td>");

					out
							.print("<td align='center'><a onclick='JavaScript:confirmit()'  href='txm_delete_deal.jsp?id="
									+ rs.getString("id") + "'>删除</a></td>");

					out.print("</tr>");
				}
				out.print("</table>");
			} catch (SQLException ex) {
				System.out.println("SQLException: " + ex.getMessage());
				System.out.println("SQLState: " + ex.getSQLState());
				System.out.println("VendorError: " + ex.getErrorCode());
			}
		%>

		<
		<center>
			<a href="HouTai_Control.jsp">返回后台管理</a>
		</center>
	</body>
</html>