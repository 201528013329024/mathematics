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
		   	out.print("类找不到");
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
			out.print("<td align='center'>姓名</td>");
			out.print("<td align='center'>学号</td>");
			out.print("<td align='center'>年级</td>");
			out.print("<td align='center'>专业</td>");
			out.print("<td align='center'>学院</td>");
			out.print("<td align='center'>性别</td>");
			out.print("<td align='center'>联系电话</td>");
			out.print("<td align='center'>注册条形码</td>");
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
		 
	<<center><a href="HouTai_Control.jsp">返回后台管理</a></center>
	</body>
</html>