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

			String sql = "insert into liuyan values (null,?,?,?,?,?,'null','null','null')";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
           
                        String zt = request.getParameter("zhuti"); 
			String content = request.getParameter("main");
			String adder = request.getParameter("add_person");
			String qq = request.getParameter("qq");
			String add_time = request.getParameter("time");
	      
	         
	         
 			pstmt.setString(1, zt);
			pstmt.setString(2, content);
			pstmt.setString(3, adder);
			pstmt.setString(4, qq);
			pstmt.setString(5, add_time);


 if(!zt.equals("") && !content.equals("") && !adder.equals("") && !add_time.equals(""))
		{	
		pstmt.executeUpdate();
                out.println("<script language='javascript'>alert('您已成功留言，谢谢您的宝贵意见！！');window.location.href='../sxjm.jsp';</script>");
		}
	else  out.println("<script language='javascript'>alert('您留言的信息不完善，请填写完整，以便交流，谢谢！');window.location.href='../sxjm.jsp';</script>");






			%>

			%>
	</body>

</html>
