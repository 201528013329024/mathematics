package org.apache.jsp.JianMoZhiShi;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;
import java.net.URLEncoder;

public final class total_005fjianmozhishi_005fdesc_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>建模知识</title>\r\n");
      out.write("    \r\n");
      out.write("\t<meta http-equiv=\"pragma\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"cache-control\" content=\"no-cache\">\r\n");
      out.write("\t<meta http-equiv=\"expires\" content=\"0\">    \r\n");
      out.write("\t<meta http-equiv=\"keywords\" content=\"keyword1,keyword2,keyword3\">\r\n");
      out.write("\t<meta http-equiv=\"description\" content=\"This is my page\">\r\n");
      out.write("\r\n");
      out.write("    <style type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("a:link {\r\n");
      out.write("\tcolor: #000000;\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("a:visited {\r\n");
      out.write("\tcolor: #000000;\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("a:hover {\r\n");
      out.write("\ttext-decoration: underline;\r\n");
      out.write("\tcolor: #FF0000;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("a:active {\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("}\r\n");
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
      out.write("   <table width='930' border='1' align='center'>\r\n");
      out.write("  <tr>\r\n");
      out.write("\t\t\t\t<td colspan=\"2\" id=\"x1\" align=\"center\">\r\n");
      out.write("\t\t\t\t<img src=\"../photo/jmzs_1.jpg\"></img>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("\t");
 
     

	 
		   int rowcount=0;
    	           int pagecount=0;
   		   int pagesize=15;

		   Connection conn;
		   Statement stmt;
		   ResultSet rs=null;
		   try
		   {
		    Class.forName("com.mysql.jdbc.Driver");
		   }   
		   catch(ClassNotFoundException e)
		   {
		   	out.print("类找不到");
		   }
		   
		
		   
		   	conn = DriverManager
					.getConnection("jdbc:mysql://localhost/mydata?user=root&password=614025581");
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from jianmozhishi order by time desc");
			
			
			
			
			


if(!rs.next()) { out.println("No  Record");}
	else{  rs.last();
		rowcount=rs.getRow();
		int  showpage=1;





pagecount=((rowcount%pagesize)==0?(rowcount/pagesize):(rowcount/pagesize)+1);
String top=request.getParameter("page");

if(top!=null){
	showpage=Integer.parseInt(top);
		if(showpage>pagecount){
			showpage=pagecount;
					}
			else  if(showpage<=0){
					showpage=1;
					}
}

rs.absolute((showpage-1)*pagesize+1);






for(int i=1; i<=pagesize; i++) {

           out.print("<table width='850' border='0' align='center'>");
	   out.print("<tr>");
	   out.print("<td width='10' align='center' colspan='3'>");
	   out.print(" <font color='#00FFFF'>");
	   out.print(" >");
	   out.print("</font>");
	   out.print("</td>");
	   out.print("<td width='700' id='x2'>");


                        String idd = rs.getString("id");  
			String s="JianMoZhiShi/add_jianmozhishi/jianmozhishi_desc.jsp?id="+idd+" ";
			
			out.print(" <a href="+s+"> ");
			    
				out.print(rs.getString("name"));   out.print("</a>");  

	   out.print("<td width='140'>");
out.print(rs.getString("time")); 
	   out.print("</td>");
	   out.print("<tr>");
		             if(!rs.next())
				break;
				 }  
			 out.print("</table>");     
      out.write(" \r\n");
      out.write("\r\n");
      out.write("<br>\r\n");
      out.write("<center>\r\n");
      out.write("当前页数：[");
      out.print(showpage );
      out.write("]&nbsp;\r\n");
      out.write("\r\n");
      out.write("<a href=\"../JianMoZhiShi/total_jianmozhishi_desc.jsp?page=1\">第一页</a>&nbsp;&nbsp;\r\n");
      out.write("\r\n");
      out.write("<a href=\"../JianMoZhiShi/total_jianmozhishi_desc.jsp?page=");
      out.print(showpage-1 );
      out.write("\">上一页</a>&nbsp;&nbsp;\r\n");
      out.write("\r\n");
      out.write("<a href=\"../JianMoZhiShi/total_jianmozhishi_desc.jsp?page=");
      out.print(showpage+1 );
      out.write("\">下一页</a> &nbsp;&nbsp;\r\n");
      out.write("\r\n");
      out.write(" <a href=\"../JianMoZhiShi/total_jianmozhishi_desc.jsp?page=");
      out.print(pagecount);
      out.write("\">最后一页&nbsp;</a>&nbsp;&nbsp;\r\n");
      out.write("\r\n");
      out.write("</center>\r\n");
  }
      out.write("\r\n");
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
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
