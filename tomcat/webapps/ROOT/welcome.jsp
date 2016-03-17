<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" errorPage=""%>






<%
	request.setCharacterEncoding("gb2312");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>会员身份验证</title>
	</head>
	<body style="background-image: url(bg22.jpg)">
		<%
			Connection conn;
			Statement stmt;
			ResultSet rs = null;
			conn = DriverManager
					.getConnection("jdbc:mysql://localhost/mydata?user=root&password=614025581");
			stmt = conn.createStatement();

			String xuehao = request.getParameter("xuehao");
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String sql = "select * from huiyuan where number='" + xuehao + "'";
			rs = stmt.executeQuery(sql);

			if (!xuehao.equals("") && !password.equals("") && !name.equals("")) {
				if (!rs.next()) {
					out
							.println("<script language='javascript'>alert('输入的用户名不正确，请重新输入');parent.location.href='sxjm.jsp';</script>");
				} else {
					if (rs.getString("pwd").equals(password) && rs.getString("name").equals(name)
							) {
		%>

		<%
			session.setAttribute("name", name);
		%>
		<script language='javascript'>
                          function abb(){
                          parent.location.href='sxjm.jsp';
                          
                          return false;
                          }
                          abb();
                         </script>


		<%
			}

					else
						out
								.println("<script language='javascript'>alert('输入的密码错误');parent.location.href='sxjm.jsp';</script>");

				}
			}

			else
				out
						.println("<script language='javascript'>alert('输入的登录信息不完整，请重新输入');parent.location.href='sxjm.jsp';</script>");
		%>


	</body>
</html>