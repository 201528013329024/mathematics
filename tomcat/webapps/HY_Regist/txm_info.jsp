<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
	<body>
		<%
			Connection conn;
			Statement stmt;
			ResultSet rs = null;
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				out.print("���Ҳ���");
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
				out.print("<td align='center'>������</td>");
				out.print("<td align='center'>�Ƿ��ѱ�ע��</td>");

				out.print("</tr>");

				while (rs.next()) {
					out.print("<tr>");
					out.print("<td align='center'>" + rs.getString("id")
							+ "</td>");
					out.print("<td align='center'>"
							+ rs.getString("txm_number") + "</td>");
					out.print("<td align='center'>" + rs.getString("is_use")
							+ "</td>");
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
			<a href="HouTai_Control.jsp">���غ�̨����</a>
		</center>


	</body>
</html>