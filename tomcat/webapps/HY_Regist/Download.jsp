<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.io.*" pageEncoding="gb2312"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>文件下载</title>
    </head>
    
    <body>
      <%
      OutputStream outStream1=response.getOutputStream();
      byte b[]=new byte[700];
      File fileLoad=new File("E:/tomcat/webapps/HY_Regist/","1.doc");
      response.setHeader("Content-disposition","attachment; filename =1.doc ");
      response.setContentType("application/nsword");
      long filelength=fileLoad.length();
      String length=String.valueOf(filelength);
      response.setHeader("Content_length",length);
      FileInputStream in=new FileInputStream(fileLoad);
      int n=0;
      while((n=in.read(b))!=-1)
      {outStream1.write(b,0,n);}
      
      %>
    </body>
    </html>