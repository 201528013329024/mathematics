<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*"%>
<html>
	<body>
		<% 
		   Connection conn;
		   Statement stmt;
		   ResultSet rs=null;
		   try
		   {
		    Class.forName("com.mysql.jdbc.Driver");
		   }   
		   catch(ClassNotFoundException e)
		   {
		   	out.print("���Ҳ���");
		   }
		   
		   try
		   {
		   	conn = DriverManager
					.getConnection("jdbc:mysql://localhost/mydata?user=root&password=614025581");
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from XiaoNeiSai_bm");
			
			int t = 0;
			
			out.print("<table width='80%' hight='40%' border='2' align='center'>");
			
			out.print("<tr>");
			out.print("<td align='center'>ID</td>");
			out.print("<td align='center'>����</td>");
			out.print("<td align='center'>ѧ��</td>");
			out.print("<td align='center'>�꼶</td>");
			out.print("<td align='center'>רҵ</td>");
			out.print("<td align='center'>ѧԺ</td>");
			out.print("<td align='center'>�Ա�</td>");
			out.print("<td align='center'>��ϵ�绰</td>");
			out.print("<td align='center'>ע��������</td>");
            out.print("</tr>");
            
            
            
            
			while (rs.next()) {
			    out.print("<tr>");
				out.print("<td align='center'>"+rs.getString("id")+"</td>");
				out.print("<td align='center'>"+rs.getString("name")+"</td>");
				out.print("<td align='center'>"+rs.getString("number")+"</td>");
				out.print("<td align='center'>"+rs.getString("class")+"</td>");
				out.print("<td align='center'>"+rs.getString("major")+"</td>");
				out.print("<td align='center'>"+rs.getString("xueyuan")+"</td>");
				out.print("<td align='center'>"+rs.getString("sex")+"</td>");
				out.print("<td align='center'>"+rs.getString("tel")+"</td>");
				out.print("<td align='center'>"+rs.getString("txm")+"</td>");
				out.print("</tr>");
				t++;
				if(t%3==0){
			    out.print("<tr>");
				out.print("<td align='center'>- - -</td>");
				out.print("<td align='center'>- - - -</td>");
				out.print("<td align='center'>- - - -</td>");
				out.print("<td align='center'>- - - -</td>");
				out.print("<td align='center'>- - - -</td>");
				out.print("<td align='center'>- - - -</td>");
				out.print("<td align='center'>- - - -</td>");
				out.print("<td align='center'>- - - - - - - -</td>");
				out.print("<td align='center'>- - - - -</td>");
				out.print("</tr>");
				}
			   
			}
			out.print("</table>");
		   } catch (SQLException ex) {
			System.out.println("SQLException: " + ex.getMessage());
			System.out.println("SQLState: " + ex.getSQLState());
			System.out.println("VendorError: " + ex.getErrorCode());
	    	}    
		 %>
		 
	<<center><a href="HouTai_Control.jsp">���غ�̨����</a></center>
	</body>
</html>