package org.apache.jsp.LiuYanBan;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;
import java.net.URLEncoder;

public final class liuyan_005fdesc_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=GBK");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

	request.setCharacterEncoding("gb2312");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    \r\n");
      out.write("    <title>留言展示</title>\r\n");
      out.write("    \r\n");
      out.write("\t<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\">    \r\n");
      out.write("\t<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\">\r\n");
      out.write("\t<meta http-equiv=\"description\" content=\"This is my page\">\r\n");
      out.write("\r\n");
      out.write("    <style type=\"text/css\">\r\n");
      out.write("     #x1 {\r\n");
      out.write("\t       font-size: 23px;\r\n");
      out.write("\t       font-family: \"楷体\";\r\n");
      out.write("\t\t   color:#FF0000;l\r\n");
      out.write("\t\t   }\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\t  #x2 {\r\n");
      out.write("\t        font-size: 21px;\r\n");
      out.write("\t        font-family: \"楷体\";\r\n");
      out.write("\t\t\tcolor:#000000;\r\n");
      out.write("\t\t\t}  \r\n");
      out.write("\t\t\t\r\n");
      out.write("\r\n");
      out.write("    </style>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("\tfunction confirmit()\r\n");
      out.write("      {\r\n");
      out.write("\t\t   if (!confirm(\"你确认删除此条留言吗？\"))\r\n");
      out.write("\t        {\r\n");
      out.write("\t\t     window,event.returnValue = false;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}         \r\n");
      out.write("\t</script>\r\n");
      out.write("  \r\n");
      out.write("  <body bgcolor=#999999>\r\n");
      out.write("    \r\n");
      out.write("\t");
 
	  Connection conn;
	  Statement stmt;
	  ResultSet rs=null;
	  conn = DriverManager
					.getConnection("jdbc:mysql://localhost/mydata?user=root&password=614025581");
	  stmt = conn.createStatement();  
	  rs = stmt.executeQuery("select * from liuyan ");
      
      
      

    
   
      out.write("\r\n");
      out.write("   \r\n");
      out.write("   <table width=\"1150\"  border=\"0\" align=\"center\" >\r\n");
      out.write("   <tr>\r\n");
      out.write("\t\t\t\t<td colspan=\"6\" id=\"x1\" align=\"center\">\r\n");
      out.write("\t\t\t\t<img src=\"picture/jianmoshiti_logo.jpg\"></img>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("\t<td width=\"100\"  align=\"center\">\r\n");
      out.write("\t\t\t\tid\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t<td width=\"150\"  align=\"center\">\r\n");
      out.write("\t\t\t\t留言人\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t<td width=\"350\"  align=\"center\">\r\n");
      out.write("\t\t\t\t留言内容\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t<td width=\"350\"  align=\"center\">\r\n");
      out.write("\t\t\t\t回复留言\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t<td width=\"100\"  align=\"center\">\r\n");
      out.write("\t\t\t\t回复人\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t<td width=\"100\"  align=\"center\">\r\n");
      out.write("\t\t\t\t删除留言\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("</tr>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t<tr>\r\n");
      out.write("<td colspan=\"6\">\r\n");
      out.write("\t<table width=\"1150\"   border=\"1\" align=\"center\" >\r\n");
 while(rs.next()) {  
      out.write(" \r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("\r\n");
      out.write("<td width=\"100\" align=\"center\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t");
      out.print(rs.getString("id"));
      out.write("\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t</td>\r\n");
      out.write("\t\t\t\t<td width=\"150\" d=\"x2\" align=\"center\">\r\n");
      out.write("\t\t\t\t\t<center>\r\n");
      out.write("\t\t\t\t\t");
      out.print(rs.getString("liuyan_person"));
      out.write("\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\tQQ:");
      out.print(rs.getString("qq"));
      out.write("<br>\r\n");
      out.write("\t\t\t\t\t");
      out.print(rs.getString("liuyan_time"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t</center>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"350\" >\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t<textarea style=\"background-color:#999999\"id=\"x2\"  readonly  style=\"width:350px;\" style=\"overflow-x:hidden;overflow-y:visible;i;border: 0 none\" >");
      out.print(rs.getString("content"));
      out.write("</textarea>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
 if(!(rs.getString("answer_content").equals("null"))) {
      out.write("\r\n");
      out.write(" <td width=\"350\" d=\"x2\" align=\"center\">\r\n");
      out.write("\t\t\t\t\t<textarea style=\"background-color:#999999\"id=\"x2\"  readonly  style=\"width:350px;\" style=\"overflow-x:hidden;overflow-y:visible;i;border: 0 none\" >");
      out.print(rs.getString("answer_content"));
      out.write("</textarea>\r\n");
      out.write(" </td>\r\n");
  }  else  {
      out.write("\r\n");
      out.write("<td width=\"350\" align=\"center\"><a  href=\"LiuYanBan/answer_liuyan.jsp?id=");
      out.print(rs.getString("id"));
      out.write("\">回复留言</a></td>\r\n");
      out.write("\r\n");
 }
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
 if(!(rs.getString("answer_person").equals("null"))) {
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"150\" d=\"x2\" align=\"center\">\r\n");
      out.write("\t\t\t\t\t<center>\r\n");
      out.write("\t\t\t\t\t");
      out.print(rs.getString("answer_person"));
      out.write("\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t");
      out.print(rs.getString("answer_time"));
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t</center>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
  }  else  {
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"100\" align=\"center\">- - - -</td>\r\n");
      out.write("\r\n");
 }
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"100\" align=\"center\"><a onclick='JavaScript:confirmit()'  href=\"LiuYanBan/liuyan_delete.jsp?id=");
      out.print(rs.getString("id"));
      out.write("\">删除</a></td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\r\n");
  } 
      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("</table>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
