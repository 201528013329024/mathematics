<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="java.sql.*" errorPage=""%>

<%
	request.setCharacterEncoding("gb2312");
%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>信息提交</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
  
<%
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/mydata?user=root&password=614025581";
			Connection conn = DriverManager.getConnection(url);

			String sql = "insert into huiyuan values (null,?,'- - -',?,?,'- - -','- - -',?,'-','- - -','- - -','- - -')";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
           
                        String hy_name = request.getParameter("name"); 
			String hy_xuehao = request.getParameter("number");
			String nianji = request.getParameter("class");
			String hy_pwd = request.getParameter("pwd");
	      
	         
	         
 			pstmt.setString(1, hy_name);
 			pstmt.setString(2, hy_xuehao);
 			pstmt.setString(3, nianji);
 			pstmt.setString(4, hy_pwd );
 	


			pstmt.executeUpdate();
out
							.println("<script language='javascript'>alert('已成功添加！');window.location.href='HY_Regist.jsp';</script>");

			%>
	</body>

</html>
