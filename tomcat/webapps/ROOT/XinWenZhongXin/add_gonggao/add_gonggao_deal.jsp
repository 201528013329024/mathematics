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

			String sql = "insert into gonggao values (null,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
           
                        String title = request.getParameter("gonggao_title"); 
			String content = request.getParameter("gonggao_main");
			String adder = request.getParameter("add_person");
			String add_time = request.getParameter("time");
	      
	         
	         
 			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, adder);
			pstmt.setString(4, add_time);
			pstmt.executeUpdate();

if(!title.equals("")&&!content.equals("")&&!adder.equals("")&&!add_time.equals(""))  {
			pstmt.executeUpdate();

	                out.println("<script language='javascript'>alert('信息添加成功！请到网站首页查看！');window.location.href='../../HouTai_Control.jsp';</script>");	}

else {
	                out.println("<script language='javascript'>alert('信息填写不完整！请重新添加！');window.location.href='add_gonggao.jsp';</script>");	
}				%>
	</body>

</html>
