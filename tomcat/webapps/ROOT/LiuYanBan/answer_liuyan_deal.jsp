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
		<title>���԰�</title>
		
		    <style type="text/css">
     #x1 {
	       font-size: 23px;
	       font-family: "����";
		   color:#FF0000;
		   }
	

	  #x2 {
	        font-size: 21px;
	        font-family: "����";
			color:#000000;
			}  
			

    </style>

	</head>


	<body>
<% 
	 		Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/mydata?user=root&password=614025581";
			Connection conn = DriverManager.getConnection(url);
		
           	        String ans = request.getParameter("answer"); 
	  		String id = request.getParameter("id");
			String ans_p = request.getParameter("answer_person"); 
			String ans_time = request.getParameter("answer_time"); 
		
			String sql_1 = "update liuyan set answer_content='"+ans+"',answer_time='"+ans_time+"',answer_person='"+ans_p+"'  where id='" + id + "' ";
	
			PreparedStatement pstmt = conn.prepareStatement(sql_1);

			
if(!answer.equals("")&&!answer_person.equals("")&&!answer_time.equals(""))  {
			pstmt.executeUpdate();

	                out.println("<script language='javascript'>alert('�ѳɹ��ظ����ԣ�');window.location.href='../../HouTai_Control.jsp';</script>");	}

else {
	                out.println("<script language='javascript'>alert('��Ϣ��д����������������ӣ�');window.location.href='answer_liuyan.jsp';</script>");	
}				



    
   %>
   
	
	</body>
</html>
