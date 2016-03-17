<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="java.sql.*" errorPage=""%>

<%
	request.setCharacterEncoding("gb2312");
%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>表单提交</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body>
		<%
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/mydata?user=root&password=614025581";
			Connection conn = DriverManager.getConnection(url);
			
			String sql = "insert into txm values (null,?,'- - -')";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			Statement stmt = conn.createStatement();

			String add_txm_number = request.getParameter("txm");
			

			pstmt.setString(1, add_txm_number);
			
			
			int flag=0;
			int flag1=0;
			
           if (1 == 1) {
				PreparedStatement psm = conn
						.prepareStatement("select * from txm where txm_number='"
								+ add_txm_number + "'");
				ResultSet rs = psm.executeQuery();

				if (rs.next()) {
					flag1 = 1;
				}
			}
           
           if(flag1==1)  {out.println("<script language='javascript'>alert('该条形码已存在，条形码添加失败！');window.location.href='add_txm.jsp';</script>");}
            
        else{
            if(add_txm_number.length() == 12 )
			{
				pstmt.executeUpdate();
				pstmt.close();
				conn.close();				
		    	out.println("<script language='javascript'>alert('恭喜，条形码添加成功！');window.location.href='add_txm.jsp';</script>");
			}
			
			else out.println("<script language='javascript'>alert('条形码添加失败！');window.location.href='add_txm.jsp';</script>");
		}			
		%>
	</body>
</html>
