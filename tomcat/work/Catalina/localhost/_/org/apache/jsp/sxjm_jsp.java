package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;

public final class sxjm_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");

	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<title>数学建模网站</title>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"jquery-1.3.2.min.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"index.js\"></script>\r\n");
      out.write("\t\t<script src=\"jquery.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\t\t<script src=\"main.js\" type=\"text/javascript\"></script>\r\n");
      out.write("\t\t<link REL=stylesheet href=\"index.css\" type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t");

			Connection conn;
			Statement stmt_gonggao;
			ResultSet rs_gonggao = null;
			conn = DriverManager
					.getConnection("jdbc:mysql://localhost/mydata?user=root&password=614025581");
			stmt_gonggao = conn.createStatement();
			rs_gonggao = stmt_gonggao
					.executeQuery("select * from gonggao order by time desc");

			Statement stmt_xinwen;
			stmt_xinwen = conn.createStatement();
			ResultSet rs_xinwen = null;
			rs_xinwen = stmt_xinwen
					.executeQuery("select * from xinwen order by time desc");

			Statement stmt_shiti;
			stmt_shiti = conn.createStatement();
			ResultSet rs_shiti = null;
			rs_shiti = stmt_shiti
					.executeQuery("select * from jianmotimu order by time desc");

			Statement stmt_tuijian;
			stmt_tuijian = conn.createStatement();
			ResultSet rs_tuijian = null;
			rs_tuijian = stmt_tuijian
					.executeQuery("select * from jingcaituijian order by time desc");


			Statement stmt_xhjj;
			stmt_xhjj = conn.createStatement();
			ResultSet rs_xhjj = null;
			rs_xhjj = stmt_xhjj
					.executeQuery("select * from xiehuijianjie order by time desc");

			Statement stmt_wangluobu ;
			stmt_wangluobu  = conn.createStatement();
			ResultSet rs_wangluobu  = null;
			rs_wangluobu  = stmt_wangluobu 
					.executeQuery("select * from wangluobu order by time desc");

			Statement stmt_bangongshi ;
			stmt_bangongshi  = conn.createStatement();
			ResultSet rs_bangongshi  = null;
			rs_bangongshi  = stmt_bangongshi
					.executeQuery("select * from bangongshi order by time desc");


			Statement stmt_wailianbu ;
			stmt_wailianbu = conn.createStatement();
			ResultSet rs_wailianbu  = null;
			rs_wailianbu  = stmt_wailianbu
					.executeQuery("select * from wailianbu order by time desc");


			Statement stmt_xueyanbu ;
			stmt_xueyanbu = conn.createStatement();
			ResultSet rs_xueyanbu  = null;
			rs_xueyanbu  = stmt_xueyanbu
					.executeQuery("select * from xueyanbu order by time desc");


			Statement stmt_cehuabu ;
			stmt_cehuabu  = conn.createStatement();
			ResultSet rs_cehuabu   = null;
			rs_cehuabu   = stmt_cehuabu 
					.executeQuery("select * from cehuabu  order by time desc");



			Statement stmt_xuanchuanbu ;
			stmt_xuanchuanbu  = conn.createStatement();
			ResultSet rs_xuanchuanbu   = null;
			rs_xuanchuanbu    = stmt_xuanchuanbu  
					.executeQuery("select * from xuanchuanbu   order by time desc");




			Statement stmt_renzhengbu ;
			stmt_renzhengbu = conn.createStatement();
			ResultSet rs_renzhengbu   = null;
			rs_renzhengbu   = stmt_renzhengbu  
					.executeQuery("select * from renzhengbu  order by time desc");


			Statement stmt_caiwubu ;
			stmt_caiwubu = conn.createStatement();
			ResultSet rs_caiwubu   = null;
			rs_caiwubu   = stmt_caiwubu  
					.executeQuery("select * from caiwubu order by time desc");


			Statement stmt_zhuxituan ;
			stmt_zhuxituan = conn.createStatement();
			ResultSet rs_zhuxituan   = null;
			rs_zhuxituan   = stmt_zhuxituan 
					.executeQuery("select * from zhuxituan order by time desc");









		
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body onload=\"clockon(bgclock)\"  background=\"photo/bj_6.jpg\">\r\n");
      out.write("\t\t<table width=\"930\" align=\"center\" border=\"1\" bordercolor=\"#33CCFF\" height=\"170\">\r\n");
      out.write("<tr><td>\r\n");
      out.write("\t\t<table width=\"930\" align=\"center\" border=\"0\" >\r\n");
      out.write("\t\t\t<tr height=\"30\">\r\n");
      out.write("\t\t\t\t<td colspan=\"3\" width=\"900\" bordercolor=\"#00CCFF\">\r\n");
      out.write("\t\t\t\t\t<img src=\"photo/logo_2.jpg\" width=\"930\" height=\"170\">\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td colspan=\"3\" bordercolor=\"#33FFFF\">\r\n");
      out.write("\t\t\t\t\t<ul id=\"mobanwang_com\" class=\"first-menu\">\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"a1\" href=\"sxjm.jsp\" target=\"_self\">首 页</a>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t");

							rs_xhjj.next();
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"a1\" href=\"add_xiehuijianjie/xiehuijianjie_desc.jsp?id=");
      out.print(rs_xhjj.getString("id"));
      out.write("\" target=\"_self\">协会简介</a>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"a1\" href=\"#\" target=\"_self\">机构设置</a>\r\n");
      out.write("\t\t\t\t\t\t\t<ul id=\"subNews\" class=\"second-menu\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");

							rs_zhuxituan.next();
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"a1\" href=\"JiGouSheZhi/add_zhuxituan/zhuxituan_desc.jsp?id=");
      out.print(rs_zhuxituan.getString("id"));
      out.write("\" class=\"mobanwang\"  target=\"_self\">主席团</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\r\n");
      out.write("<li>\r\n");

							rs_bangongshi.next();
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"a1\" href=\"JiGouSheZhi/add_bangongshi/bangongshi_desc.jsp?id=");
      out.print(rs_bangongshi.getString("id"));
      out.write("\" class=\"mobanwang\"  target=\"_self\">办公室</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");

							rs_xueyanbu.next();
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"a1\" href=\"JiGouSheZhi/add_xueyanbu/xueyanbu_desc.jsp?id=");
      out.print(rs_xueyanbu.getString("id"));
      out.write("\" class=\"mobanwang\"  target=\"_self\">学研部</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>\t\t\t\t\t\t\t\t\r\n");

							rs_cehuabu.next();
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"a1\" href=\"JiGouSheZhi/add_cehuabu/cehuabu_desc.jsp?id=");
      out.print(rs_cehuabu.getString("id"));
      out.write("\" class=\"mobanwang\"  target=\"_self\">策划部</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");

							rs_xuanchuanbu.next();
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"a1\" href=\"JiGouSheZhi/add_xuanchuanbu/xuanchuanbu_desc.jsp?id=");
      out.print(rs_xuanchuanbu.getString("id"));
      out.write("\" class=\"mobanwang\"  target=\"_self\">宣传部</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>\r\n");

							rs_wailianbu.next();
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"a1\" href=\"JiGouSheZhi/add_wailianbu/wailianbu_desc.jsp?id=");
      out.print(rs_wailianbu.getString("id"));
      out.write("\" class=\"mobanwang\"  target=\"_self\">外联部</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\r\n");

							rs_renzhengbu.next();
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"a1\" href=\"JiGouSheZhi/add_renzhengbu/renzhengbu_desc.jsp?id=");
      out.print(rs_renzhengbu.getString("id"));
      out.write("\" class=\"mobanwang\"  target=\"_self\">认证部</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t");

							rs_wangluobu.next();
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"a1\" href=\"JiGouSheZhi/add_wangluobu/wangluobu_desc.jsp?id=");
      out.print(rs_wangluobu.getString("id"));
      out.write("\" class=\"mobanwang\"  target=\"_self\">网络部</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>\r\n");

							rs_caiwubu.next();
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"a1\" href=\"JiGouSheZhi/add_caiwubu/caiwubu_desc.jsp?id=");
      out.print(rs_caiwubu.getString("id"));
      out.write("\" class=\"mobanwang\"  target=\"_self\">财务部</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"a1\" href=\"#\">新闻中心</a>\r\n");
      out.write("<ul id=\"subNews\" class=\"second-menu\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/total_gonggao_desc.jsp\" class=\"mobanwang\" target=\"_blank\">通知公告</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/total_xinwen_desc.jsp\" class=\"mobanwang\"  target=\"_blank\">新闻动态</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/total_jingcaituijian_desc.jsp\" class=\"mobanwang\"  target=\"_blank\">精彩推荐</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/total_jianmoshiti_desc.jsp\" class=\"mobanwang\"  target=\"_blank\">建模真题</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"a1\" href=\"\" class=\"mobanwang\"\r\n");
      out.write("\t\t\t\t\t\t\t\ttarget=\"_blank\">活动介绍</a>\r\n");
      out.write("\t\t\t\t\t\t\t<ul id=\"subNews\" class=\"second-menu\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"a1\" href=\"HuoDongJieShao/add_quanguosai/quanguosai_desc.jsp\" class=\"mobanwang\" target=\"_self\">数学建模全国赛</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"a1\" href=\"HuoDongJieShao/add_jianmojiangzuo/jianmojiangzuo_desc.jsp\" class=\"mobanwang\" target=\"_self\">数学建模知识讲座</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"a1\" href=\"HuoDongJieShao/add_quweishuxue/quweishuxue_desc.jsp\" class=\"mobanwang\" target=\"_self\">趣味数学竞赛</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"a1\" href=\"HuoDongJieShao/add_tiaozhansai/tiaozhansai_desc.jsp\" class=\"mobanwang\" target=\"_self\">网络挑战赛</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"a1\" href=\"HuoDongJieShao/add_wuhusai/wuhusai_desc.jsp\" class=\"mobanwang\" target=\"_self\">芜湖高校联赛</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"a1\" href=\"HuoDongJieShao/add_wocaiwoxuan/wocaiwoxuan_desc.jsp\" class=\"mobanwang\" target=\"_self\">我才我炫</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"a1\" href=\"HuoDongJieShao/add_xiaoneixuanbasai/xiaoneixuanbasai_desc.jsp\" class=\"mobanwang\" target=\"_self\">校内选拔赛</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t <li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"a1\" href=\"HuoDongJieShao/add_shuqipeixun/shuqipeixun_desc.jsp\" class=\"mobanwang\" target=\"_self\">数学建模暑期培训</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"a1\" href=\"JianMoZhiShi/total_jianmozhishi_desc.jsp\" class=\"mobanwang\"  target=\"_blank\">建模知识</a>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"a1\" href=\"ChengJiZhanShi/total_grade_desc.jsp\" class=\"mobanwang\"  target=\"_blank\">成绩展示</a>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t<a class=\"a1\" href=\"LiuYanBan/add_liuyan.jsp\" class=\"mobanwang\" target=\"_self\">留言板</a>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td  colspan=\"3\">\r\n");
      out.write("\t\t\t\t\t<marquee scrollamount=\"4\"  ><font color=\"#330000\" size=\"4\" face=\"楷体\">\r\n");
      out.write("\t\t\t\t\t\t<span unselectable=\"on\">");

							if (session.getAttribute("name") != null) {
						
      out.write("亲爱的\r\n");
      out.write("\t\t\t\t\t\t");
      out.print(session.getAttribute("name"));
      out.write("\r\n");
      out.write("\t\t\t\t\t\t会员，");

							}
						
      out.write("您好！欢迎您访问数计学院数学建模协会网站。（由于网站嵌有特定的JavaScript组件，请在浏览器兼容模式下浏览网站.）\r\n");
      out.write("\t\t\t\t\t</font></span></marquee>\r\n");
      out.write("\r\n");
      out.write("                                          <font color=\"#330000\" size=\"4\" face=\"楷体\">\r\n");
      out.write("\t\t\t\t\t\t<div id=\"bgclock\"  align=\"right\"  style=\"border:thin\"></div> </font>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td width=\"150\" height=\"35\" bordercolordark=\"#33FFFF\">\r\n");
      out.write("\t\t\t<img src=\"photo/tz_6.jpg\"  ></img>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td width=\"500\" height=\"35\" bordercolordark=\"#33FFFF\">\r\n");
      out.write("\t\t\t<img src=\"photo/xw_2.jpg\"  style=\"width:500px;height:35px;\"></img>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t<td width=\"178\" height=\"35\">\r\n");
      out.write("\t\t\t<img src=\"photo/zt.jpg\"  ></img>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t<tr height=\"150\" >\r\n");
      out.write("\t\t\t\t<td bordercolordark=\"#33FFFF\">\r\n");
      out.write("\t\t\t\t\t<marquee scrollamount=\"1\" onmouseover=\"this.stop()\" onmouseout=\"this.start()\"\r\n");
      out.write("\t\t\t\t\t\tscrollAmount=\"2\" scrollDelay=\"2\" direction=\"up\" class=\"gonggao-p\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t");

							rs_gonggao.next();
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_gonggao/gonggao_desc.jsp?id=");
      out.print(rs_gonggao.getString("id"));
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t<font color=\"#FF9966\">></font>\r\n");
      out.write("\t\t\t\t\t\t\t");

								out.print(rs_gonggao.getString("name"));

								out.print("</a>" + "<br>");
								;
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t");

							rs_gonggao.next();
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_gonggao/gonggao_desc.jsp?id=");
      out.print(rs_gonggao.getString("id"));
      out.write("\"> \r\n");
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("\t\t\t\t\t\t\t");

								out.print(rs_gonggao.getString("name"));

								out.print("</a>" + "<br>");
								;
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t");

							rs_gonggao.next();
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_gonggao/gonggao_desc.jsp?id=");
      out.print(rs_gonggao.getString("id"));
      out.write("\"> \r\n");
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("\t\t\t\t\t\t\t");

								out.print(rs_gonggao.getString("name"));

								out.print("</a>" + "<br>");
								;
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t");

							rs_gonggao.next();
						
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_gonggao/gonggao_desc.jsp?id=");
      out.print(rs_gonggao.getString("id"));
      out.write("\"> \r\n");
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("\t\t\t\t\t\t\t");

								out.print(rs_gonggao.getString("name"));

								out.print("</a>" + "<br>");
								;
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</marquee>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<td bordercolordark=\"#33FFFF\">\r\n");
      out.write("<table width=\"500\">\r\n");
      out.write("<tr >\r\n");
      out.write("<td width=\"10\" align=\"center\">\r\n");
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"390\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t");

						rs_xinwen.next();
					
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_xinwen/xinwen_desc.jsp?id=");
      out.print(rs_xinwen.getString("id"));
      out.write("\">\r\n");
      out.write("\r\n");
      out.write(" ");

 	
       
      out.print(rs_xinwen.getString("name")); 
 
 	out.print("</a>" );
 	;
 
      out.write(" \t\t\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"100\" align=\"center\">\r\n");
      out.write("\r\n");
  out.print(rs_xinwen.getString("time"));  
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr >\r\n");
      out.write("<td width=\"10\" align=\"center\">\r\n");
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"390\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t");

						rs_xinwen.next();
					
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_xinwen/xinwen_desc.jsp?id=");
      out.print(rs_xinwen.getString("id"));
      out.write("\">\r\n");
      out.write("\r\n");
      out.write(" ");

 	
       
      out.print(rs_xinwen.getString("name")); 
 	out.print("</a>" );
 	;
 
      out.write(" \t\t\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"100\" align=\"center\">\r\n");
      out.write("\r\n");
  out.print(rs_xinwen.getString("time"));  
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr >\r\n");
      out.write("<td width=\"10\" align=\"center\">\r\n");
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"390\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t");

						rs_xinwen.next();
					
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_xinwen/xinwen_desc.jsp?id=");
      out.print(rs_xinwen.getString("id"));
      out.write("\">\r\n");
      out.write("\r\n");
      out.write(" ");

 	
       
      out.print(rs_xinwen.getString("name")); 
 	out.print("</a>" );
 	;
 
      out.write(" \t\t\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"100\" align=\"center\">\r\n");
      out.write("\r\n");
  out.print(rs_xinwen.getString("time"));  
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr >\r\n");
      out.write("<td width=\"10\" align=\"center\">\r\n");
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"390\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t");

						rs_xinwen.next();
					
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_xinwen/xinwen_desc.jsp?id=");
      out.print(rs_xinwen.getString("id"));
      out.write("\">\r\n");
      out.write("\r\n");
      out.write(" ");

 	
       
      out.print(rs_xinwen.getString("name")); 
 	out.print("</a>" );
 	;
 
      out.write(" \t\t\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"100\" align=\"center\">\r\n");
      out.write("\r\n");
  out.print(rs_xinwen.getString("time"));  
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr >\r\n");
      out.write("<td width=\"10\" align=\"center\">\r\n");
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"390\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t");

						rs_xinwen.next();
					
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_xinwen/xinwen_desc.jsp?id=");
      out.print(rs_xinwen.getString("id"));
      out.write("\">\r\n");
      out.write("\r\n");
      out.write(" ");

 	
       
      out.print(rs_xinwen.getString("name")); 
 	out.print("</a>" );
 	;
 
      out.write(" \t\t\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"100\" align=\"center\">\r\n");
      out.write("\r\n");
  out.print(rs_xinwen.getString("time"));  
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr >\r\n");
      out.write("<td width=\"10\" align=\"center\">\r\n");
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"390\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t");

						rs_xinwen.next();
					
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_xinwen/xinwen_desc.jsp?id=");
      out.print(rs_xinwen.getString("id"));
      out.write("\">\r\n");
      out.write("\r\n");
      out.write(" ");

 	
       
      out.print(rs_xinwen.getString("name")); 
 	out.print("</a>" );
 	;
 
      out.write(" \t\t\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"100\" align=\"center\">\r\n");
      out.write("\r\n");
  out.print(rs_xinwen.getString("time"));  
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr >\r\n");
      out.write("<td width=\"10\" align=\"center\">\r\n");
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"390\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t");

						rs_xinwen.next();
					
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_xinwen/xinwen_desc.jsp?id=");
      out.print(rs_xinwen.getString("id"));
      out.write("\">\r\n");
      out.write("\r\n");
      out.write(" ");

 	
       
      out.print(rs_xinwen.getString("name")); 
 	out.print("</a>" );
 	;
 
      out.write(" \t\t\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"100\" align=\"center\">\r\n");
      out.write("\r\n");
  out.print(rs_xinwen.getString("time"));  
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr >\r\n");
      out.write("<td width=\"10\" align=\"center\">\r\n");
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"390\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t");

						rs_xinwen.next();
					
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_xinwen/xinwen_desc.jsp?id=");
      out.print(rs_xinwen.getString("id"));
      out.write("\">\r\n");
      out.write("\r\n");
      out.write(" ");

 	
       
      out.print(rs_xinwen.getString("name")); 
 	out.print("</a>" );
 	;
 
      out.write(" \t\t\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"100\" align=\"center\">\r\n");
      out.write("\r\n");
  out.print(rs_xinwen.getString("time"));  
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<td bordercolordark=\"#33FFFF\">\r\n");
      out.write("<table width=\"145\" >\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t");

						rs_shiti.next();
					
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_jianmoshiti/jianmoshiti_desc.jsp?id=");
      out.print(rs_shiti.getString("id"));
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");

							out.print(rs_shiti.getString("name"));

							out.print("</a>");
							;
						
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t");

						rs_shiti.next();
					
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_jianmoshiti/jianmoshiti_desc.jsp?id=");
      out.print(rs_shiti.getString("id"));
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");

							out.print(rs_shiti.getString("name"));

							out.print("</a>");
							;
						
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t");

						rs_shiti.next();
					
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_jianmoshiti/jianmoshiti_desc.jsp?id=");
      out.print(rs_shiti.getString("id"));
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");

							out.print(rs_shiti.getString("name"));

							out.print("</a>");
							;
						
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t");

						rs_shiti.next();
					
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_jianmoshiti/jianmoshiti_desc.jsp?id=");
      out.print(rs_shiti.getString("id"));
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");

							out.print(rs_shiti.getString("name"));

							out.print("</a>");
							;
						
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t");

						rs_shiti.next();
					
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_jianmoshiti/jianmoshiti_desc.jsp?id=");
      out.print(rs_shiti.getString("id"));
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");

							out.print(rs_shiti.getString("name"));

							out.print("</a>");
							;
						
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t");

						rs_shiti.next();
					
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_jianmoshiti/jianmoshiti_desc.jsp?id=");
      out.print(rs_shiti.getString("id"));
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");

							out.print(rs_shiti.getString("name"));

							out.print("</a>");
							;
						
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t");

						rs_shiti.next();
					
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_jianmoshiti/jianmoshiti_desc.jsp?id=");
      out.print(rs_shiti.getString("id"));
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");

							out.print(rs_shiti.getString("name"));

							out.print("</a>");
							;
						
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t");

						rs_shiti.next();
					
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\" href=\"XinWenZhongXin/add_jianmoshiti/jianmoshiti_desc.jsp?id=");
      out.print(rs_shiti.getString("id"));
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t");

							out.print(rs_shiti.getString("name"));

							out.print("</a>");
							;
						
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("\r\n");
      out.write("</table>\t\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td width=\"150\"  height=\"35\">\r\n");
      out.write("\t\t\t\t<img src=\"photo/hy_2.jpg\"></img>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t<img src=\"photo/jc_1.jpg\"></img>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t<img src=\"photo/dh.jpg\"></img>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td width=\"220\" height=\"200\" bordercolordark=\"#33FFFF\">\r\n");
      out.write("\t\t\t\t\t<form action=\"welcome.jsp\" method=\"post\">\r\n");
      out.write("\t\t\t\t\t\t<table align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t姓名：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input style=\"width: 140px\" name=\"name\" type=\"text\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t学号：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input style=\"width: 140px\" name=\"xuehao\" type=\"text\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t密码：\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input style=\"width: 140px\" name=\"password\" type=\"password\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"reset\" value=\"重置\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"submit\" value=\"登陆\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"a1\" href=\"HY_Regist/HY_Regist.jsp\" target=\"mainFrame\">新会员注册</a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<td bordercolordark=\"#33FFFF\">\r\n");
      out.write("<table width=\"500\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td width=\"10\" align=\"center\">\r\n");
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"390\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t");

						rs_tuijian.next();
					
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\"\r\n");
      out.write("\t\t\t\t\t\thref=\"XinWenZhongXin/add_jingcaituijian/jingcaituijian_desc.jsp?id=");
      out.print(rs_tuijian.getString("id"));
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t");

							out.print(rs_tuijian.getString("name"));

							out.print("</a>");
							;
						
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"100\" align=\"center\">\r\n");
      out.write("\r\n");
  out.print(rs_tuijian.getString("time"));  
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td width=\"10\" align=\"center\">\r\n");
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"390\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t");

						rs_tuijian.next();
					
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\"\r\n");
      out.write("\t\t\t\t\t\thref=\"XinWenZhongXin/add_jingcaituijian/jingcaituijian_desc.jsp?id=");
      out.print(rs_tuijian.getString("id"));
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t");

							out.print(rs_tuijian.getString("name"));

							out.print("</a>");
							;
						
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"100\" align=\"center\">\r\n");
      out.write("\r\n");
  out.print(rs_tuijian.getString("time"));  
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td width=\"10\" align=\"center\">\r\n");
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"390\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t");

						rs_tuijian.next();
					
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\"\r\n");
      out.write("\t\t\t\t\t\thref=\"XinWenZhongXin/add_jingcaituijian/jingcaituijian_desc.jsp?id=");
      out.print(rs_tuijian.getString("id"));
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t");

							out.print(rs_tuijian.getString("name"));

							out.print("</a>");
							;
						
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"100\" align=\"center\">\r\n");
      out.write("\r\n");
  out.print(rs_tuijian.getString("time"));  
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td width=\"10\" align=\"center\">\r\n");
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"390\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t");

						rs_tuijian.next();
					
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\"\r\n");
      out.write("\t\t\t\t\t\thref=\"XinWenZhongXin/add_jingcaituijian/jingcaituijian_desc.jsp?id=");
      out.print(rs_tuijian.getString("id"));
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t");

							out.print(rs_tuijian.getString("name"));

							out.print("</a>");
							;
						
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"100\" align=\"center\">\r\n");
      out.write("\r\n");
  out.print(rs_tuijian.getString("time"));  
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td width=\"10\" align=\"center\">\r\n");
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"390\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t");

						rs_tuijian.next();
					
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\"\r\n");
      out.write("\t\t\t\t\t\thref=\"XinWenZhongXin/add_jingcaituijian/jingcaituijian_desc.jsp?id=");
      out.print(rs_tuijian.getString("id"));
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t");

							out.print(rs_tuijian.getString("name"));

							out.print("</a>");
							;
						
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"100\" align=\"center\">\r\n");
      out.write("\r\n");
  out.print(rs_tuijian.getString("time"));  
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td width=\"10\" align=\"center\">\r\n");
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"390\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t");

						rs_tuijian.next();
					
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\"\r\n");
      out.write("\t\t\t\t\t\thref=\"XinWenZhongXin/add_jingcaituijian/jingcaituijian_desc.jsp?id=");
      out.print(rs_tuijian.getString("id"));
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t");

							out.print(rs_tuijian.getString("name"));

							out.print("</a>");
							;
						
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"100\" align=\"center\">\r\n");
      out.write("\r\n");
  out.print(rs_tuijian.getString("time"));  
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td width=\"10\" align=\"center\">\r\n");
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"390\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t");

						rs_tuijian.next();
					
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\"\r\n");
      out.write("\t\t\t\t\t\thref=\"XinWenZhongXin/add_jingcaituijian/jingcaituijian_desc.jsp?id=");
      out.print(rs_tuijian.getString("id"));
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t");

							out.print(rs_tuijian.getString("name"));

							out.print("</a>");
							;
						
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"100\" align=\"center\">\r\n");
      out.write("\r\n");
  out.print(rs_tuijian.getString("time"));  
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td width=\"10\" align=\"center\">\r\n");
      out.write("<font color=\"#FF9966\">></font>\r\n");
      out.write("</td>\r\n");
      out.write("<td width=\"390\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t");

						rs_tuijian.next();
					
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<a class=\"a1\"\r\n");
      out.write("\t\t\t\t\t\thref=\"XinWenZhongXin/add_jingcaituijian/jingcaituijian_desc.jsp?id=");
      out.print(rs_tuijian.getString("id"));
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t");

							out.print(rs_tuijian.getString("name"));

							out.print("</a>");
							;
						
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<td width=\"100\" align=\"center\">\r\n");
      out.write("\r\n");
  out.print(rs_tuijian.getString("time"));  
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("</table>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<td height=\"35\" bordercolordark=\"#33FFFF\">\r\n");
      out.write("\t\t\t\t\t校内站点连接\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<center>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<label>\r\n");
      out.write("\t\t\t\t\t\t\t<select name=\"select3\" style=\"width: 120px\"\r\n");
      out.write("\t\t\t\t\t\t\t\tonchange=\"window.open(this.options[this.selectedIndex].value);\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<option selected=\"selected\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t选择进入\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://jwjcc.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t纪委、监察处\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://bgs.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t办公室\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://org.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t组织部(党校)\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://news.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t宣传部(新闻中心)\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://tzb.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t统战部(港澳台事务办公室)\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://rsc.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t人事处\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://tao.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t教务处(招办)\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://xsc1.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t学生处(学工部,人武部)\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://yjs.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t研究生学院(研究生工作部)\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://kyc.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t科研处\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://cwc.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t财务处\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://hqcy.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t后勤管理处\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://jjc.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t基建处\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://zcc.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t资产管理处\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://guard.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t保卫处\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://ltx.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t离退休工作处\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://audit.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t审计处\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://fgb.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t发展与规划办公室\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://jgdw.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t机关党委\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://210.45.192.19/~new/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t新校区建设指挥部\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://pinggu.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t教学评估办公室\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"/north/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t北校区管委会\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://asdgh.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t教育工会\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://gqt.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t团委\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://www.cahedu.com/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t安徽省高等学校师资培训中心\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://cce.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t继续教育学院\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://wjcollege.ahnu.edu.cn\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t皖江学院\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://lib.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t图书馆\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://arch.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t档案馆\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://journal.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t学报编辑部\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://hospital.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t校医院\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://cbs.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t安徽人民出版社安徽师范大学编辑部\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://hqjt.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t后勤集团\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://wxy.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t文学院\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://edu.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t教育科学学院\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://ahnujgxy.ahnu.edu.cn/jg.swf\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t经济管理学院\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://politics.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t政法学院\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://social.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t社会学院\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://flc.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t外国语学院\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://music.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t音乐学院\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://msxy.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t美术学院\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://chm.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t传媒学院\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://math.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t数学计算机学院\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://physics.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t物理与电子信息学院\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://chem.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t化学与材料科学学院\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://tourism.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t国土资源与旅游学院\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://ty.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t体育学院\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://biology.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t生命科学学院\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://envirsci.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t环境科学学院\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://cie.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t国际教育学院(与外事办公室合署办公)\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://jyjt.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t教育集团\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://ahnuef.ahnu.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t安徽师范大学教育基金会\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t</label>\r\n");
      out.write("\t\t\t\t\t</center>\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t建模网上报名链接\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t<center>\r\n");
      out.write("\t\t\t\t\t\t<label>\r\n");
      out.write("\t\t\t\t\t\t\t<select name=\"select3\" style=\"width: 120px\"\r\n");
      out.write("\t\t\t\t\t\t\t\tonchange=\"window.open(this.options[this.selectedIndex].value);\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<option selected=\"selected\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t选择进入\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"XiaoNeiSai_bm/XiaoNeiSai_bm.jsp\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t建模校内选拔赛\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t趣味数学\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t我才我炫\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t</label>\r\n");
      out.write("\t\t\t\t\t</center>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t建模知识库连接\r\n");
      out.write("\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t<center>\r\n");
      out.write("\t\t\t\t\t\t<label>\r\n");
      out.write("\t\t\t\t\t\t\t<select name=\"select3\" style=\"width: 120px\"\r\n");
      out.write("\t\t\t\t\t\t\t\tonchange=\"window.open(this.options[this.selectedIndex].value);\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<option selected=\"selected\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t选择进入\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"ftp://172.16.94.22/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t数学建模协会FTP\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://www.mcm.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t全国数学建模网\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://www.madio.net/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t数学中国网\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://www.zgsxjm.com/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t中国数学建模网\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"http://mcm.dept.ccut.edu.cn/\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t数学建模学习资源网站\r\n");
      out.write("\t\t\t\t\t\t\t\t</option>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t</label>\r\n");
      out.write("\t\t\t\t\t</center>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td colspan=\"4\" height=\"200\">\r\n");
      out.write("\t\t\t\t\t<marquee direction=\"right\" scrollamount=\"2\" onmouseover=\"this.stop()\" onmouseout=\"this.start()\"> \r\n");
      out.write("\r\n");
      out.write("<span unselectable=\"on\" >\r\n");
      out.write("\r\n");
      out.write("<a  href=\"picture/1.jpg\"  class=\"preview\" > <img src=\"picture/1.jpg\" alt=\"gallery thumbnail\" style=\" width: 175px; height:160px;\"></img></a>\r\n");
      out.write("<a  href=\"picture/2.jpg\"  class=\"preview\" > <img src=\"picture/2.jpg\" alt=\"gallery thumbnail\" style=\"width: 175px; height: 160px;\"></img></a>\r\n");
      out.write("<a  href=\"picture/3.jpg\"  class=\"preview\" > <img src=\"picture/3.jpg\" alt=\"gallery thumbnail\" style=\"width: 175px; height: 160px;\"></img></a>\r\n");
      out.write("<a  href=\"picture/4.jpg\"  class=\"preview\" > <img src=\"picture/4.jpg\" alt=\"gallery thumbnail\" style=\"width: 175px; height: 160px;\"></img></a>\r\n");
      out.write("<a  href=\"picture/5.jpg\"  class=\"preview\" title=\"Lake and a mountain\"> <img src=\"picture/5.jpg\" alt=\"gallery thumbnail\" style=\"width: 175px; height:160px;\"></img>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("</span>\r\n");
      out.write("\t\t\t\t\t</marquee>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t<tr >\r\n");
      out.write("\t\t\t\t<td colspan=\"4\">\r\n");
      out.write("                               <center> ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~</center>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t<tr style=\"background-image:url(photo/yj_3.jpg)\" height=\"70\" width=\"930\">\r\n");
      out.write("\t\t\t\t<td colspan=\"4\" align=\"center\" >\r\n");
      out.write("<font color=\"#333333\" face=\"宋体\" size=\"2\">\r\n");
      out.write("\t\t\t\t\tCopyright 2012-2013 安徽师范大学 数计学院 数学建模协会 徐浩广&nbsp;&nbsp;&nbsp; <a class=\"a1\" href=\"administrator_yanzheng.jsp\">管理员登陆</a></font>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\r\n");
      out.write("</td></tr>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
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
