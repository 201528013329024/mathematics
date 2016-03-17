package org.apache.jsp.JiGouSheZhi.add_005fzhuxituan;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;
import java.net.URLEncoder;

public final class zhuxituan_005fdesc_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>主席团简介</title>\r\n");
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
      out.write("\t\t   color:#FF0000;\r\n");
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
      out.write("  \r\n");
      out.write("  <body background=\"photo/xw_desc_12.jpg\">\r\n");
      out.write("    \r\n");
      out.write("\t");
 
	  Connection conn;
	  Statement stmt;
	  ResultSet rs=null;
	  conn = DriverManager
					.getConnection("jdbc:mysql://localhost/mydata?user=root&password=614025581");
	  stmt = conn.createStatement();
	  String id=request.getParameter("id"); 
	  
	  rs = stmt.executeQuery("select * from zhuxituan where id=1 ");
      
      
      rs.next(); 

    
   
      out.write("\r\n");
      out.write("   \r\n");
      out.write("   <table width=\"930\"  border=\"1\" align=\"center\" >\r\n");
      out.write("   <tr>\r\n");
      out.write("\t\t\t\t<td colspan=\"2\" id=\"x1\" align=\"center\">\r\n");
      out.write("\t\t\t\t<img src=\"../photo/jg_1.jpg\" width=\"970\"></img>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("   <tr>\r\n");
      out.write("\t\t\t\t<td colspan=\"2\" id=\"x1\" align=\"center\">\r\n");
      out.write("\t\t\t\t主席团\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td width=\"500\" align=\"center\" id=\"x2\" >\r\n");
      out.write("部门简介\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("<td  width=\"400\" align=\"center\" id=\"x2\" >\r\n");
      out.write("部门成员\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<tr height=\"400\">\r\n");
      out.write("\r\n");
      out.write("\t<td>\r\n");
      out.write("\t<table width=\"500\"  border=\"0\" align=\"center\" >\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td  align=\"center\">\r\n");
      out.write("\t\t\t\t\t<textarea style=\"background-color:#FFFFFF\"id=\"x2\"  readonly  style=\"width:500px;height:300px;\" style=\"overflow-x:hidden;overflow-y:visible;i;border: 0 none\" >");
      out.print(rs.getString("zhuyaogongzuo"));
      out.write("</textarea>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t</table>\t\t\t\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("<td  >\r\n");
      out.write("\t<table width=\"450\" height=\"400\" border=\"0\" align=\"center\" >\r\n");
      out.write("<tr>\r\n");
      out.write("<td align=\"center\" height=\"50\" id=\"x2\" >\r\n");
      out.write("会 长\r\n");
      out.write("</td>\r\n");
      out.write("\t\r\n");
      out.write("<td  id=\"x2\" >&nbsp;\r\n");
      out.print(rs.getString("huizhang"));
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\t\r\n");
      out.write("\r\n");
      out.write("<tr   height=\"300\" >\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td align=\"center\" id=\"x2\">\r\n");
      out.write("副会长\r\n");
      out.write("</td>\r\n");
      out.write("\t\r\n");
      out.write("<td  align=\"center\">\r\n");
      out.write("<table>\r\n");
      out.write("<tr height=\"100\" >\r\n");
      out.write("<td>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("\t\t\t\t\t<textarea style=\"background-color:#FFFFFF\"id=\"x2\"  readonly  style=\"width:300px;height:200px;\" style=\"overflow-x:hidden;overflow-y:visible;i;border: 0 none\" >");
      out.print(rs.getString("fuhuizhang"));
      out.write("</textarea>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\t\r\n");
      out.write("   \r\n");
      out.write("\t\t\t<tr height=\"100\">\r\n");
      out.write("<td align=\"center\" id=\"x2\" >\r\n");
      out.write("会长助理\r\n");
      out.write("</td>\r\n");
      out.write("\t\t\t\t<td  id=\"x2\">&nbsp;\r\n");
      out.write("\t\t\t\t\t");
      out.print(rs.getString("huizhangzhuli"));
      out.write("\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td colspan=\"2\" align=\"center\" align=\"center\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t添加者：&nbsp;");
      out.print(rs.getString("adduser"));
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t");
      out.print(rs.getString("time"));
      out.write("</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
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
