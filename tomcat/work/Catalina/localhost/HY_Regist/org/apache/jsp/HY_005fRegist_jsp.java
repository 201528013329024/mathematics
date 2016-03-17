package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class HY_005fRegist_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\" />\r\n");
      out.write("\t\t<title>数学建模协会新会员注册</title>\r\n");
      out.write("\r\n");
      out.write("\t\t<link REL=stylesheet href=\"1.css\" type=\"text/css\">\r\n");
      out.write("\t\t<script language=\"JavaScript\">\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("\t\tvar flag_name = 0;\r\n");
      out.write("\t\tvar flag_txm = 0;\r\n");
      out.write("\t\tvar flag_number = 0;\r\n");
      out.write("\t\tvar flag_pwd = 0;\r\n");
      out.write("\t\tvar flag_repwd = 0;\r\n");
      out.write("\t\tvar flag_major = 0;\r\n");
      out.write("\t\tvar flag_qq = 0;\r\n");
      out.write("\t\tvar flag_tel = 0;\r\n");
      out.write("function check_name() {\r\n");
      out.write("\tif (isWhiteWpace(form1.name.value)) {\r\n");
      out.write("\t\tdocument.getElementById(\"nameErr\").innerHTML = \"<font color='red'>请输入正确的姓名，姓名里不能含有空格</font>\";\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tif (form1.name.value == \"\") {\r\n");
      out.write("\t\tdocument.getElementById(\"nameErr\").innerHTML = \"<font color='red'>请输入姓名，姓名不能为空！</font>\";\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tdocument.getElementById(\"nameErr\").innerHTML = \"\";\r\n");
      out.write("\tflag_name = 1;\r\n");
      out.write("\treturn true;\r\n");
      out.write("}\r\n");
      out.write("function isWhiteWpace(s) {\r\n");
      out.write("\tvar whitespace = \"\\t\\n\\r\";\r\n");
      out.write("\tvar i;\r\n");
      out.write("\tfor (i = 0; i < s.length; i++) {\r\n");
      out.write("\t\tvar c = s.charAt(i);\r\n");
      out.write("\t\tif (whitespace.indexOf(c) >= 0) {\r\n");
      out.write("\t\t\treturn true;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\treturn false;\r\n");
      out.write("}\r\n");
      out.write("function check_txm() {\r\n");
      out.write("\tif (form1.txm.value == \"\") {\r\n");
      out.write("\t\tdocument.getElementById(\"txmErr\").innerHTML = \"<font color='red'>请输入条形码</font>\";\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tdocument.getElementById(\"txmErr\").innerHTML = \"\";\r\n");
      out.write("\tflag_txm = 1;\r\n");
      out.write("\treturn true;\r\n");
      out.write("}\r\n");
      out.write("function check_number() {\r\n");
      out.write("\tif (form1.number.value.length != 9) {\r\n");
      out.write("\t\tdocument.getElementById(\"numberErr\").innerHTML = \"<font color='red'>请输入正确学号</font>\";\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tdocument.getElementById(\"numberErr\").innerHTML = \"\";\r\n");
      out.write("\tflag_number = 1;\r\n");
      out.write("\treturn true;\r\n");
      out.write("}\r\n");
      out.write("function check_major() {\r\n");
      out.write("\tif (form1.major.value == \"\") {\r\n");
      out.write("\t\tdocument.getElementById(\"majorErr\").innerHTML = \"<font color='red'>请输入专业</font>\";\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tdocument.getElementById(\"majorErr\").innerHTML = \"\";\r\n");
      out.write("\tflag_major = 1;\r\n");
      out.write("\treturn true;\r\n");
      out.write("}\r\n");
      out.write("function check_pwd() {\r\n");
      out.write("\tif (form1.pwd.value.length < 6 || form1.pwd.value.length > 16) {\r\n");
      out.write("\t\tdocument.getElementById(\"pwdErr\").innerHTML = \"<font color='red'>请输入位数为6-16的密码</font>\";\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tdocument.getElementById(\"pwdErr\").innerHTML = \"\";\r\n");
      out.write("\tflag_pwd = 1;\r\n");
      out.write("\treturn true;\r\n");
      out.write("}\r\n");
      out.write("function check_repwd() {\r\n");
      out.write("\tif (form1.pwd.value != form1.repwd.value) {\r\n");
      out.write("\t\tdocument.getElementById(\"repwdErr\").innerHTML = \"<font color='red'>确认密码与原密码不同！</font>\";\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tdocument.getElementById(\"repwdErr\").innerHTML = \"\";\r\n");
      out.write("\tflag_repwd = 1;\r\n");
      out.write("\treturn true;\r\n");
      out.write("}\r\n");
      out.write("function check_qq() {\r\n");
      out.write("\tif (form1.qq.value == \"\") {\r\n");
      out.write("\t\tdocument.getElementById(\"qqErr\").innerHTML = \"<font color='red'>请输入QQ！</font>\";\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tdocument.getElementById(\"qqErr\").innerHTML = \"\";\r\n");
      out.write("\tflag_qq = 1;\r\n");
      out.write("\treturn true;\r\n");
      out.write("}\r\n");
      out.write("function check_tel() {\r\n");
      out.write("\tif (form1.tel.value == \"\") {\r\n");
      out.write("\t\tdocument.getElementById(\"telErr\").innerHTML = \"<font color='red'>请输入联系电话！</font>\";\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tif (form1.tel.value.length != 11) {\r\n");
      out.write("\t\tdocument.getElementById(\"telErr\").innerHTML = \"<font color='red'>电话号码位数没有11位</font>\";\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tdocument.getElementById(\"telErr\").innerHTML = \"\";\r\n");
      out.write("\tflag_tel = 1;\r\n");
      out.write("\treturn true;\r\n");
      out.write("}\r\n");
      out.write("function check() {\r\n");
      out.write("\tif (flag_name == 0) {\r\n");
      out.write("\t\talert(\"姓名填写有误，请重新填写！\");\r\n");
      out.write("\t} else {\r\n");
      out.write("\tif (flag_txm == 0) {\r\n");
      out.write("\t\talert(\"条形码填写有误，请重新填写！\");\r\n");
      out.write("\t}\telse if (flag_number == 0) {\r\n");
      out.write("\t\t\talert(\"学号填写有误，请重新填写！\");\r\n");
      out.write("\t\t} else {\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\tif (flag_major == 0) {\r\n");
      out.write("\t\t\t\talert(\"专业填写有误，请重新填写！\");\r\n");
      out.write("\t\t\t} else {\r\n");
      out.write("\t\t\t\tif (flag_pwd == 0) {\r\n");
      out.write("\t\t\t\t\talert(\"密码填写有误，请重新填写！\");\r\n");
      out.write("\t\t\t\t} else {\r\n");
      out.write("\t\t\t\t\tif (flag_repwd == 0) {\r\n");
      out.write("\t\t\t\t\t\talert(\"确认密码填写有误，请重新填写！\");\r\n");
      out.write("\t\t\t\t\t} else {\r\n");
      out.write("\t\t\t\t\t\tif (flag_qq == 0) {\r\n");
      out.write("\t\t\t\t\t\t\talert(\"QQ填写有误，请重新填写！\");\r\n");
      out.write("\t\t\t\t\t\t} else {\r\n");
      out.write("\t\t\t\t\t\t\tif (flag_tel == 0) {\r\n");
      out.write("\t\t\t\t\t\t\t\talert(\"联系电话填写有误，请重新填写！\");\r\n");
      out.write("\t\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\t\t\t            \r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t</script>\r\n");
      out.write("\t</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\t<form name=\"form1\" action=\"HY_Regist_deal.jsp\" method=\"post\">\r\n");
      out.write("\t\t\t<table width=\"700\" height=\"683\" border=\"1\" align=\"center\"\r\n");
      out.write("\t\t\t\tbackground=\"images/1.png\" bordercolor=\"#9966FF\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td colspan=\"2\" height=\"30\" id=\"x1\">\r\n");
      out.write("\t\t\t\t\t\t<center>\r\n");
      out.write("\t\t\t\t\t\t\t数学建模协会会员注册\r\n");
      out.write("\t\t\t\t\t\t</center>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"210\" height=\"30\" align=\"center\" id=\"x2\">\r\n");
      out.write("\t\t\t\t\t\t姓名\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"463\">\r\n");
      out.write("\t\t\t\t\t\t<input id=\"x3\" type=\"text\" name=\"name\" onblur=\"check_name()\">\r\n");
      out.write("\t\t\t\t\t\t<span id=\"nameErr\"></span>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"210\" height=\"30\" align=\"center\" id=\"x2\">\r\n");
      out.write("\t\t\t\t\t\t条形码\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"463\">\r\n");
      out.write("\t\t\t\t\t\t<input id=\"x3\" type=\"text\" name=\"txm\" onblur=\"check_txm()\">\r\n");
      out.write("\t\t\t\t\t\t<span id=\"txmErr\"></span>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"210\" height=\"30\" align=\"center\" id=\"x2\">\r\n");
      out.write("\t\t\t\t\t\t学号\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"463\">\r\n");
      out.write("\t\t\t\t\t\t<input id=\"x3\" type=\"text\" name=\"number\" onblur=\"check_number()\">\r\n");
      out.write("\t\t\t\t\t\t<span id=\"numberErr\"></span>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"210\" height=\"30\" align=\"center\" id=\"x2\">\r\n");
      out.write("\t\t\t\t\t\t年级\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<select name=\"class\" id=\"x3\">\r\n");
      out.write("\t\t\t\t\t\t\t<option value=\"2010\" selected>\r\n");
      out.write("\t\t\t\t\t\t\t\t2010\r\n");
      out.write("\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t<option value=\"2011\">\r\n");
      out.write("\t\t\t\t\t\t\t\t2011\r\n");
      out.write("\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t<option value=\"2012\">\r\n");
      out.write("\t\t\t\t\t\t\t\t2012\r\n");
      out.write("\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t\t<option value=\"2013\">\r\n");
      out.write("\t\t\t\t\t\t\t\t2013\r\n");
      out.write("\t\t\t\t\t\t\t</option>\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"210\" height=\"30\" align=\"center\" id=\"x2\">\r\n");
      out.write("\t\t\t\t\t\t专业\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"463\">\r\n");
      out.write("\t\t\t\t\t\t<input id=\"x3\" type=\"text\" name=\"major\" onblur=\"check_major()\">\r\n");
      out.write("\t\t\t\t\t\t<span id=\"majorErr\"></span>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"210\" height=\"30\" align=\"center\" id=\"x2\">\r\n");
      out.write("\t\t\t\t\t\t学院\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t<select name=\"xueyuan\" id=\"x3\">\r\n");
      out.write("\t\t\t\t\t\t\t<option value=\"数学计算机科学学院\" SELECTED>数学计算机科学学院</option>\r\n");
      out.write("                        <option value=\"文学院\">文学院</option>\r\n");
      out.write("                        <option value=\"教育科学学院\" >教育科学学院</option>\r\n");
      out.write("                        <option value=\"经济管理学院\" >经济管理学院</option>\r\n");
      out.write("                        <option value=\"政法学院\" >政法学院</option>\r\n");
      out.write("                        <option value=\"社会学院\">社会学院</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"外国语学院\">外国语学院</option>\r\n");
      out.write("                        <option value=\"音乐学院\" >音乐学院</option>\r\n");
      out.write("                        <option value=\"美术学院\" >美术学院</option>\r\n");
      out.write("                        <option value=\"传媒学院\" >传媒学院</option>\r\n");
      out.write("                        <option value=\"物理与电子信息学院\">物理与电子信息学院</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"化学与材料科学学院\" >化学与材料科学学院</option>\r\n");
      out.write("                        <option value=\"国土资源与旅游学院\" >国土资源与旅游学院</option>\r\n");
      out.write("                        <option value=\"体育学院\" >体育学院</option>\r\n");
      out.write("                        <option value=\"生命科学学院\">生命科学学院</option>\r\n");
      out.write("\t\t\t\t\t\t<option value=\"环境科学学院\">环境科学学院</option>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</script>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"210\" height=\"30\" align=\"center\" id=\"x2\">\r\n");
      out.write("\t\t\t\t\t\t密码\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"463\">\r\n");
      out.write("\t\t\t\t\t\t<input id=\"x3\" type=\"password\" name=\"pwd\" onblur=\"check_pwd()\">\r\n");
      out.write("\t\t\t\t\t\t<span id=\"pwdErr\"></span>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"210\" height=\"30\" align=\"center\" id=\"x2\">\r\n");
      out.write("\t\t\t\t\t\t确认密码\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"463\">\r\n");
      out.write("\t\t\t\t\t\t<input id=\"x3\" type=\"password\" name=\"repwd\" onblur=\"check_repwd()\">\r\n");
      out.write("\t\t\t\t\t\t<span id=\"repwdErr\"></span>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"210\" height=\"30\" align=\"center\" id=\"x2\">\r\n");
      out.write("\t\t\t\t\t\t性别\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"463\" id=\"x2\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"radio\" value=\"男\" checked name=\"sex\">\r\n");
      out.write("\t\t\t\t\t\t\t男 &nbsp;&nbsp; \r\n");
      out.write("\t\t\t\t\t\t<input type=\"radio\" value=\"女\" name=\"sex\">\r\n");
      out.write("\t\t\t\t\t\t\t女 \r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"210\" height=\"30\" align=\"center\" id=\"x2\">\r\n");
      out.write("\t\t\t\t\t\tQQ\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"463\">\r\n");
      out.write("\t\t\t\t\t\t<input id=\"x3\" type=\"text\" name=\"qq\" onblur=\"check_qq()\">\r\n");
      out.write("\t\t\t\t\t\t<span id=\"qqErr\"></span>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"210\" height=\"30\" align=\"center\" id=\"x2\">\r\n");
      out.write("\t\t\t\t\t\t联系电话\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"463\">\r\n");
      out.write("\t\t\t\t\t\t<input id=\"x3\" type=\"text\" name=\"tel\" onblur=\"check_tel()\">\r\n");
      out.write("\t\t\t\t\t\t<span id=\"telErr\"></span>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td width=\"210\" height=\"30\" align=\"center\" id=\"x2\">\r\n");
      out.write("\t\t\t\t\t\t对我们的建议\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td width=\"463\">\r\n");
      out.write("\t\t\t\t\t\t<textarea id=\"x3\" rows=\"3\" name=\"suggestion\">(选填)</textarea>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<td bordercolor=\"#FFFFFF\" colspan=\"2\" height=\"30\" \"\r\n");
      out.write("\t\t\t\t\tid=\"x3\">\r\n");
      out.write("\t\t\t\t\t<a href=\"Download.jsp\">协会简介</a>\r\n");
      out.write("\t\t\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t<input type=\"reset\" value=\"重置\" id=\"x4\">\r\n");
      out.write("\t\t\t\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<input type=\"submit\" value=\"提交\" id=\"x4\" onclick=\"check()\">\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td colspan=\"2\" height=\"120\" id=\"x3\"></td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td colspan=\"2\" height=\"20\" id=\"x5\" align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t安徽师范大学 数计学院 数学建模协会 徐浩广\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"administrator_yanzheng.jsp\">管理员登录</a>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
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
