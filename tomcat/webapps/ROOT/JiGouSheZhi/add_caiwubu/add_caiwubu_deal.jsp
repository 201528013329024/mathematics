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

			String sql = "insert into caiwubu values (null,?,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
           
                        String bmjj = request.getParameter("bumenjianjie"); 
			String bz = request.getParameter("buzhang");
			String bmls= request.getParameter("bumenlishi");
			String adder = request.getParameter("add_person");
			String add_time = request.getParameter("time");
	      
	         
	         
 			pstmt.setString(1, bmjj);
			pstmt.setString(2, bz);
			pstmt.setString(3, bmls);
			pstmt.setString(4, adder);
			pstmt.setString(5, add_time);
			
if(!bmjj.equals("")&&!bz.equals("")&&!bmls.equals("")&&!adder.equals("")&&!add_time.equals(""))  {
			pstmt.executeUpdate();

	                out.println("<script language='javascript'>alert('信息更新成功！请到网站首页查看！');window.location.href='../../HouTai_Control.jsp';</script>");	}

else {
	                out.println("<script language='javascript'>alert('信息填写不完整！请重新添加！');window.location.href='add_caiwubu.jsp';</script>");	
}
			%>
	</body>

</html>
