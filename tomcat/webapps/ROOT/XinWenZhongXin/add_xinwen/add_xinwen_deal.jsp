<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="java.sql.*" errorPage=""%>
<%@ page language="java" import="com.jspsmart.upload.*" %>

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
    
    <title>��Ϣ�ύ</title>
    
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
    SmartUpload su = new SmartUpload();
    su.initialize(pageContext) ; // ��ʼ���ϴ�
    su.setAllowedFilesList("jpg,bmp,gif");
    su.upload() ;     // ׼���ϴ�
    su.save("/pic");   
    String pic_url="pic/"+su.getFiles().getFile(0).getFileName() ;
   
   %>
  
<%
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/mydata?user=root&password=614025581";
			Connection conn = DriverManager.getConnection(url);

			String sql = "insert into xinwen values (null,?,?,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
           
                        String title = su.getRequest().getParameter("xinwen_title"); 
			String content = su.getRequest().getParameter("xinwen_main");
			String pic_title = su.getRequest().getParameter("picture_title");
			String adder = su.getRequest().getParameter("add_person");
			String add_time = su.getRequest().getParameter("time");
	      
	         
	         
 			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, pic_url);
			pstmt.setString(4, pic_title);
			pstmt.setString(5, adder);
			pstmt.setString(6, add_time);
			pstmt.executeUpdate();
if(!bmjj.equals("")&&!bz.equals("")&&!bmls.equals("")&&!adder.equals("")&&!add_time.equals(""))  {
			pstmt.executeUpdate();

	                out.println("<script language='javascript'>alert('��Ϣ��ӳɹ����뵽��վ��ҳ�鿴��');window.location.href='../../HouTai_Control.jsp';</script>");	}

else {
	                out.println("<script language='javascript'>alert('��Ϣ��д����������������ӣ�');window.location.href='add_xinwen.jsp';</script>");	
}		
			%>
	</body>

</html>
