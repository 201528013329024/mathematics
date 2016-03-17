package org.apache.jsp.JiGouSheZhi.add_005fzhuxituan;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class add_005fzhuxituan_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=gb2312");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');

	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<title>更新前台主席团简介</title>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t    <style type=\"text/css\">\r\n");
      out.write("     #x1 {\r\n");
      out.write("\t       font-size: 23px;\r\n");
      out.write("\t       font-family: \"楷体\";\r\n");
      out.write("\t\t   color:#000000;\r\n");
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
      out.write("\t</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\t\t<form name=\"form1\" action=\"add_zhuxituan_deal.jsp\" method=\"post\">\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t<table width=\"800\" height=\"683\" border=\"1\" align=\"center\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td colspan=\"2\" height=\"30\" >\r\n");
      out.write("\t\t\t\t\t\t<center>\r\n");
      out.write("\t\t\t\t\t\t\t更新前台主席团简介<br><br>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"update.jsp\">！--更新前请点击我删除旧的主席团信息--！</a>\r\n");
      out.write("\t\t\t\t\t\t</center>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"100\" height=\"30\" align=\"center\" >\r\n");
      out.write("\t\t\t\t\t\t部门简介\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"500\">\r\n");
      out.write("\t\t\t\t\t\t<textarea id=\"x2\" style=\"width:500px;height:200px;\" name=\"bumenjianjie\"  wrap=\"hard\" ></textarea>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"100\" height=\"30\" align=\"center\" >\r\n");
      out.write("\t\t\t\t\t         会长\t\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"500\">\r\n");
      out.write("\t\t\t\t\t\t<input id=\"x1\" type=\"text\" name=\"huizhang\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"100\" height=\"30\" align=\"center\" >\r\n");
      out.write("\t\t\t\t\t\t副会长\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"500\">\r\n");
      out.write("\t\t\t\t\t\t<textarea id=\"x2\" style=\"width:300px;height:200px;\" name=\"fuhuizhang\"  wrap=\"hard\" ></textarea>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"100\" height=\"30\" align=\"center\" >\r\n");
      out.write("\t\t\t\t\t         会长助理\t\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"500\">\r\n");
      out.write("\t\t\t\t\t\t<input id=\"x1\" type=\"text\" name=\"huizhangzhuli\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\t\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"100\" height=\"30\" align=\"center\" >\r\n");
      out.write("\t\t\t\t\t\t添加者\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"500\">\r\n");
      out.write("\t\t\t\t\t\t<input id=\"x2\" type=\"text\" name=\"add_person\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"100\" height=\"30\" align=\"center\" >\r\n");
      out.write("\t\t\t\t\t\t添加时间\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td id=\"x2\">\r\n");
      out.write("\t\t\t\t\t\t<script src=\"time/WdatePicker.js\"></script>\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"time\" value=\"\" onclick=\"WdatePicker()\">\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<td colspan=\"2\" height=\"30\" align=\"center\" >\r\n");
      out.write("\t\t\t\t\t<input type=\"reset\" value=\"重置\">\r\n");
      out.write("\t\t\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<input type=\"submit\" value=\"提交\" id=\"x4\" onclick=\"check()\">\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</body>\r\n");
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
