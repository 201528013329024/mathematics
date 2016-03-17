<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="java.sql.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>



<html>


	<head>
		<title>数学建模网站</title>
		<script type="text/javascript" src="jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="index.js"></script>
		<script src="jquery.js" type="text/javascript"></script>
		<script src="main.js" type="text/javascript"></script>
		<link REL=stylesheet href="index.css" type="text/css">



		<%
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









		%>









		
	</head>
	<body onload="clockon(bgclock)"  background="photo/bj_6.jpg">
		<table width="930" align="center" border="1" bordercolor="#33CCFF" height="170">
<tr><td>
		<table width="930" align="center" border="0" >
			<tr height="30">
				<td colspan="3" width="900" bordercolor="#00CCFF">
					<img src="photo/logo_2.jpg" width="930" height="170">
				</td>

			</tr>
			<tr>
				<td colspan="3" bordercolor="#33FFFF">
					<ul id="mobanwang_com" class="first-menu">
						<li>
							<a class="a1" href="sxjm.jsp" target="_self">首 页</a>
						</li>
						<li>


						<%
							rs_xhjj.next();
						%>
							<a class="a1" href="add_xiehuijianjie/xiehuijianjie_desc.jsp?id=<%=rs_xhjj.getString("id")%>" target="_self">协会简介</a>
						</li>
						<li>
							<a class="a1" href="#" target="_self">机构设置</a>
							<ul id="subNews" class="second-menu">
								</li>
						
						<li>
<%
							rs_zhuxituan.next();
						%>
							<a class="a1" href="JiGouSheZhi/add_zhuxituan/zhuxituan_desc.jsp?id=<%=rs_zhuxituan.getString("id")%>" class="mobanwang"  target="_self">主席团</a>
								</li>

<li>
<%
							rs_bangongshi.next();
						%>
							<a class="a1" href="JiGouSheZhi/add_bangongshi/bangongshi_desc.jsp?id=<%=rs_bangongshi.getString("id")%>" class="mobanwang"  target="_self">办公室</a>
								</li>
								<li>

								
<%
							rs_xueyanbu.next();
						%>
							<a class="a1" href="JiGouSheZhi/add_xueyanbu/xueyanbu_desc.jsp?id=<%=rs_xueyanbu.getString("id")%>" class="mobanwang"  target="_self">学研部</a>
								</li>
								
								<li>								
<%
							rs_cehuabu.next();
						%>
							<a class="a1" href="JiGouSheZhi/add_cehuabu/cehuabu_desc.jsp?id=<%=rs_cehuabu.getString("id")%>" class="mobanwang"  target="_self">策划部</a>
								</li>

						<li>
<%
							rs_xuanchuanbu.next();
						%>
							<a class="a1" href="JiGouSheZhi/add_xuanchuanbu/xuanchuanbu_desc.jsp?id=<%=rs_xuanchuanbu.getString("id")%>" class="mobanwang"  target="_self">宣传部</a>
								</li>

								
								<li>
<%
							rs_wailianbu.next();
						%>
							<a class="a1" href="JiGouSheZhi/add_wailianbu/wailianbu_desc.jsp?id=<%=rs_wailianbu.getString("id")%>" class="mobanwang"  target="_self">外联部</a>
								</li>
								<li>

<%
							rs_renzhengbu.next();
						%>
							<a class="a1" href="JiGouSheZhi/add_renzhengbu/renzhengbu_desc.jsp?id=<%=rs_renzhengbu.getString("id")%>" class="mobanwang"  target="_self">认证部</a>
								</li>
								<li>
						<%
							rs_wangluobu.next();
						%>
							<a class="a1" href="JiGouSheZhi/add_wangluobu/wangluobu_desc.jsp?id=<%=rs_wangluobu.getString("id")%>" class="mobanwang"  target="_self">网络部</a>
								</li>
								<li>
<%
							rs_caiwubu.next();
						%>
							<a class="a1" href="JiGouSheZhi/add_caiwubu/caiwubu_desc.jsp?id=<%=rs_caiwubu.getString("id")%>" class="mobanwang"  target="_self">财务部</a>
								</li>

							</ul>
						<li>
							<a class="a1" href="#">新闻中心</a>
<ul id="subNews" class="second-menu">
								<li>
									<a class="a1" href="XinWenZhongXin/total_gonggao_desc.jsp" class="mobanwang" target="_blank">通知公告</a>
								</li>
								<li>
									<a class="a1" href="XinWenZhongXin/total_xinwen_desc.jsp" class="mobanwang"  target="_blank">新闻动态</a>
								</li>
								<li>
									<a class="a1" href="XinWenZhongXin/total_jingcaituijian_desc.jsp" class="mobanwang"  target="_blank">精彩推荐</a>
								</li>
															<li>
									<a class="a1" href="XinWenZhongXin/total_jianmoshiti_desc.jsp" class="mobanwang"  target="_blank">建模真题</a>
								</li>
							</ul>
						</li>


						<li>
							<a class="a1" href="" class="mobanwang"
								target="_blank">活动介绍</a>
							<ul id="subNews" class="second-menu">
								<li>
									<a class="a1" href="HuoDongJieShao/add_quanguosai/quanguosai_desc.jsp" class="mobanwang" target="_self">数学建模全国赛</a>
								</li>
								<li>
									<a class="a1" href="HuoDongJieShao/add_jianmojiangzuo/jianmojiangzuo_desc.jsp" class="mobanwang" target="_self">数学建模知识讲座</a>
								</li>
								<li>
									<a class="a1" href="HuoDongJieShao/add_quweishuxue/quweishuxue_desc.jsp" class="mobanwang" target="_self">趣味数学竞赛</a>
								</li>
								<li>
									<a class="a1" href="HuoDongJieShao/add_tiaozhansai/tiaozhansai_desc.jsp" class="mobanwang" target="_self">网络挑战赛</a>
								</li>
								<li>
									<a class="a1" href="HuoDongJieShao/add_wuhusai/wuhusai_desc.jsp" class="mobanwang" target="_self">芜湖高校联赛</a>
								</li>
								<li>
									<a class="a1" href="HuoDongJieShao/add_wocaiwoxuan/wocaiwoxuan_desc.jsp" class="mobanwang" target="_self">我才我炫</a>
								</li>
								<li>
									<a class="a1" href="HuoDongJieShao/add_xiaoneixuanbasai/xiaoneixuanbasai_desc.jsp" class="mobanwang" target="_self">校内选拔赛</a>
								</li>			
								 <li>
									<a class="a1" href="HuoDongJieShao/add_shuqipeixun/shuqipeixun_desc.jsp" class="mobanwang" target="_self">数学建模暑期培训</a>
								</li>

							</ul>
						</li>
						<li>
							<a class="a1" href="JianMoZhiShi/total_jianmozhishi_desc.jsp" class="mobanwang"  target="_blank">建模知识</a>
						</li>
						<li>
							<a class="a1" href="ChengJiZhanShi/total_grade_desc.jsp" class="mobanwang"  target="_blank">成绩展示</a>
							
						</li>
						<li>
							<a class="a1" href="LiuYanBan/add_liuyan.jsp" class="mobanwang" target="_self">留言板</a>
						</li>
				</td>
			</tr>

			<tr>
				<td  colspan="3">
					<marquee scrollamount="4"  ><font color="#330000" size="4" face="楷体">
						<span unselectable="on"><%
							if (session.getAttribute("name") != null) {
						%>亲爱的
						<%=session.getAttribute("name")%>
						会员，<%
							}
						%>您好！欢迎您访问数计学院数学建模协会网站。（由于网站嵌有特定的JavaScript组件，请在浏览器兼容模式下浏览网站.）
					</font></span></marquee>

                                          <font color="#330000" size="4" face="楷体">
						<div id="bgclock"  align="right"  style="border:thin"></div> </font>
				</td>



			</tr>

			<tr>
				<td width="150" height="35" bordercolordark="#33FFFF">
			<img src="photo/tz_6.jpg"  ></img>
				</td>
				<td width="500" height="35" bordercolordark="#33FFFF">
			<img src="photo/xw_2.jpg"  style="width:500px;height:35px;"></img>
				</td>
				<td width="178" height="35">
			<img src="photo/zt.jpg"  ></img>

				</td>
			</tr>


			<tr height="150" >
				<td bordercolordark="#33FFFF">
					<marquee scrollamount="1" onmouseover="this.stop()" onmouseout="this.start()"
						scrollAmount="2" scrollDelay="2" direction="up" class="gonggao-p">

						<%
							rs_gonggao.next();
						%>
						<a class="a1" href="XinWenZhongXin/add_gonggao/gonggao_desc.jsp?id=<%=rs_gonggao.getString("id")%>">
						<font color="#FF9966">></font>
							<%
								out.print(rs_gonggao.getString("name"));

								out.print("</a>" + "<br>");
								;
	%>

						<%
							rs_gonggao.next();
						%>
						<a class="a1" href="XinWenZhongXin/add_gonggao/gonggao_desc.jsp?id=<%=rs_gonggao.getString("id")%>"> 
<font color="#FF9966">></font>
							<%
								out.print(rs_gonggao.getString("name"));

								out.print("</a>" + "<br>");
								;
	%>

						<%
							rs_gonggao.next();
						%>
						<a class="a1" href="XinWenZhongXin/add_gonggao/gonggao_desc.jsp?id=<%=rs_gonggao.getString("id")%>"> 
<font color="#FF9966">></font>
							<%
								out.print(rs_gonggao.getString("name"));

								out.print("</a>" + "<br>");
								;
	%>


						<%
							rs_gonggao.next();
						%>
						<a class="a1" href="XinWenZhongXin/add_gonggao/gonggao_desc.jsp?id=<%=rs_gonggao.getString("id")%>"> 
<font color="#FF9966">></font>
							<%
								out.print(rs_gonggao.getString("name"));

								out.print("</a>" + "<br>");
								;
	%>

								
					</marquee>
				</td>

				<td bordercolordark="#33FFFF">
<table width="500">
<tr >
<td width="10" align="center">
<font color="#FF9966">></font>
</td>
<td width="390">

					<%
						rs_xinwen.next();
					%>

					<a class="a1" href="XinWenZhongXin/add_xinwen/xinwen_desc.jsp?id=<%=rs_xinwen.getString("id")%>">

 <%
 	
       
      out.print(rs_xinwen.getString("name")); 
 
 	out.print("</a>" );
 	;
 %> 		
</td>



<td width="100" align="center">

<%  out.print(rs_xinwen.getString("time"));  %>
</td>
</tr>

<tr >
<td width="10" align="center">
<font color="#FF9966">></font>
</td>
<td width="390">

					<%
						rs_xinwen.next();
					%>

					<a class="a1" href="XinWenZhongXin/add_xinwen/xinwen_desc.jsp?id=<%=rs_xinwen.getString("id")%>">

 <%
 	
       
      out.print(rs_xinwen.getString("name")); 
 	out.print("</a>" );
 	;
 %> 		
</td>



<td width="100" align="center">

<%  out.print(rs_xinwen.getString("time"));  %>
</td>
</tr>

<tr >
<td width="10" align="center">
<font color="#FF9966">></font>
</td>
<td width="390">

					<%
						rs_xinwen.next();
					%>

					<a class="a1" href="XinWenZhongXin/add_xinwen/xinwen_desc.jsp?id=<%=rs_xinwen.getString("id")%>">

 <%
 	
       
      out.print(rs_xinwen.getString("name")); 
 	out.print("</a>" );
 	;
 %> 		
</td>



<td width="100" align="center">

<%  out.print(rs_xinwen.getString("time"));  %>
</td>
</tr>

<tr >
<td width="10" align="center">
<font color="#FF9966">></font>
</td>
<td width="390">

					<%
						rs_xinwen.next();
					%>

					<a class="a1" href="XinWenZhongXin/add_xinwen/xinwen_desc.jsp?id=<%=rs_xinwen.getString("id")%>">

 <%
 	
       
      out.print(rs_xinwen.getString("name")); 
 	out.print("</a>" );
 	;
 %> 		
</td>



<td width="100" align="center">

<%  out.print(rs_xinwen.getString("time"));  %>
</td>
</tr>

<tr >
<td width="10" align="center">
<font color="#FF9966">></font>
</td>
<td width="390">

					<%
						rs_xinwen.next();
					%>

					<a class="a1" href="XinWenZhongXin/add_xinwen/xinwen_desc.jsp?id=<%=rs_xinwen.getString("id")%>">

 <%
 	
       
      out.print(rs_xinwen.getString("name")); 
 	out.print("</a>" );
 	;
 %> 		
</td>



<td width="100" align="center">

<%  out.print(rs_xinwen.getString("time"));  %>
</td>
</tr>

<tr >
<td width="10" align="center">
<font color="#FF9966">></font>
</td>
<td width="390">

					<%
						rs_xinwen.next();
					%>

					<a class="a1" href="XinWenZhongXin/add_xinwen/xinwen_desc.jsp?id=<%=rs_xinwen.getString("id")%>">

 <%
 	
       
      out.print(rs_xinwen.getString("name")); 
 	out.print("</a>" );
 	;
 %> 		
</td>



<td width="100" align="center">

<%  out.print(rs_xinwen.getString("time"));  %>
</td>
</tr>

<tr >
<td width="10" align="center">
<font color="#FF9966">></font>
</td>
<td width="390">

					<%
						rs_xinwen.next();
					%>

					<a class="a1" href="XinWenZhongXin/add_xinwen/xinwen_desc.jsp?id=<%=rs_xinwen.getString("id")%>">

 <%
 	
       
      out.print(rs_xinwen.getString("name")); 
 	out.print("</a>" );
 	;
 %> 		
</td>



<td width="100" align="center">

<%  out.print(rs_xinwen.getString("time"));  %>
</td>
</tr>

<tr >
<td width="10" align="center">
<font color="#FF9966">></font>
</td>
<td width="390">

					<%
						rs_xinwen.next();
					%>

					<a class="a1" href="XinWenZhongXin/add_xinwen/xinwen_desc.jsp?id=<%=rs_xinwen.getString("id")%>">

 <%
 	
       
      out.print(rs_xinwen.getString("name")); 
 	out.print("</a>" );
 	;
 %> 		
</td>



<td width="100" align="center">

<%  out.print(rs_xinwen.getString("time"));  %>
</td>
</tr>
</table>
			
	
</td>


				<td bordercolordark="#33FFFF">
<table width="145" >
<tr>
<td>

					<%
						rs_shiti.next();
					%><font color="#FF9966">></font>

					<a class="a1" href="XinWenZhongXin/add_jianmoshiti/jianmoshiti_desc.jsp?id=<%=rs_shiti.getString("id")%>">
						<%
							out.print(rs_shiti.getString("name"));

							out.print("</a>");
							;
						%>


		</td>
</tr>

<tr>
<td>

					<%
						rs_shiti.next();
					%><font color="#FF9966">></font>

					<a class="a1" href="XinWenZhongXin/add_jianmoshiti/jianmoshiti_desc.jsp?id=<%=rs_shiti.getString("id")%>">
						<%
							out.print(rs_shiti.getString("name"));

							out.print("</a>");
							;
						%>


		</td>
</tr>

<tr>
<td>

					<%
						rs_shiti.next();
					%><font color="#FF9966">></font>

					<a class="a1" href="XinWenZhongXin/add_jianmoshiti/jianmoshiti_desc.jsp?id=<%=rs_shiti.getString("id")%>">
						<%
							out.print(rs_shiti.getString("name"));

							out.print("</a>");
							;
						%>


		</td>
</tr>

<tr>
<td>

					<%
						rs_shiti.next();
					%><font color="#FF9966">></font>

					<a class="a1" href="XinWenZhongXin/add_jianmoshiti/jianmoshiti_desc.jsp?id=<%=rs_shiti.getString("id")%>">
						<%
							out.print(rs_shiti.getString("name"));

							out.print("</a>");
							;
						%>


		</td>
</tr>
<tr>
<td>

					<%
						rs_shiti.next();
					%><font color="#FF9966">></font>

					<a class="a1" href="XinWenZhongXin/add_jianmoshiti/jianmoshiti_desc.jsp?id=<%=rs_shiti.getString("id")%>">
						<%
							out.print(rs_shiti.getString("name"));

							out.print("</a>");
							;
						%>


		</td>
</tr>
<tr>
<td>

					<%
						rs_shiti.next();
					%><font color="#FF9966">></font>

					<a class="a1" href="XinWenZhongXin/add_jianmoshiti/jianmoshiti_desc.jsp?id=<%=rs_shiti.getString("id")%>">
						<%
							out.print(rs_shiti.getString("name"));

							out.print("</a>");
							;
						%>


		</td>
</tr>
<tr>
<td>

					<%
						rs_shiti.next();
					%><font color="#FF9966">></font>

					<a class="a1" href="XinWenZhongXin/add_jianmoshiti/jianmoshiti_desc.jsp?id=<%=rs_shiti.getString("id")%>">
						<%
							out.print(rs_shiti.getString("name"));

							out.print("</a>");
							;
						%>


		</td>
</tr>
<tr>

<tr>
<td>

					<%
						rs_shiti.next();
					%><font color="#FF9966">></font>

					<a class="a1" href="XinWenZhongXin/add_jianmoshiti/jianmoshiti_desc.jsp?id=<%=rs_shiti.getString("id")%>">
						<%
							out.print(rs_shiti.getString("name"));

							out.print("</a>");
							;
						%>


		</td>
</tr>
<tr>

</table>			
		
				</td>
			</tr>





			<tr>
				<td width="150"  height="35">
				<img src="photo/hy_2.jpg"></img>
				</td>

				<td>
				<img src="photo/jc_1.jpg"></img>
				</td>

				<td>
				<img src="photo/dh.jpg"></img>
				</td>

			</tr>
			<tr>
				<td width="220" height="200" bordercolordark="#33FFFF">
					<form action="welcome.jsp" method="post">
						<table align="center">
							<tr>
								<td>

									姓名：
									<input style="width: 140px" name="name" type="text">
								</td>
							</tr>
							<tr>
								<td>

									学号：
									<input style="width: 140px" name="xuehao" type="text">
								</td>
							</tr>


							<tr>
								<td>
									密码：

									<input style="width: 140px" name="password" type="password">
								</td>
							</tr>
							<tr>
								<td>
									<input type="reset" value="重置">
									&nbsp;&nbsp;&nbsp;
									<input type="submit" value="登陆">
									&nbsp;&nbsp;&nbsp;
									<a class="a1" href="HY_Regist/HY_Regist.jsp" target="mainFrame">新会员注册</a>
								</td>
							</tr>

						</table>
					</form>
				</td>


				<td bordercolordark="#33FFFF">
<table width="500">
<tr>
<td width="10" align="center">
<font color="#FF9966">></font>
</td>
<td width="390">

			<%
						rs_tuijian.next();
					%>

					<a class="a1"
						href="XinWenZhongXin/add_jingcaituijian/jingcaituijian_desc.jsp?id=<%=rs_tuijian.getString("id")%>">

						<%
							out.print(rs_tuijian.getString("name"));

							out.print("</a>");
							;
						%>
</td>



<td width="100" align="center">

<%  out.print(rs_tuijian.getString("time"));  %>
</td>
</tr>
<tr>
<td width="10" align="center">
<font color="#FF9966">></font>
</td>
<td width="390">

			<%
						rs_tuijian.next();
					%>

					<a class="a1"
						href="XinWenZhongXin/add_jingcaituijian/jingcaituijian_desc.jsp?id=<%=rs_tuijian.getString("id")%>">

						<%
							out.print(rs_tuijian.getString("name"));

							out.print("</a>");
							;
						%>
</td>



<td width="100" align="center">

<%  out.print(rs_tuijian.getString("time"));  %>
</td>
</tr>
<tr>
<td width="10" align="center">
<font color="#FF9966">></font>
</td>
<td width="390">

			<%
						rs_tuijian.next();
					%>

					<a class="a1"
						href="XinWenZhongXin/add_jingcaituijian/jingcaituijian_desc.jsp?id=<%=rs_tuijian.getString("id")%>">

						<%
							out.print(rs_tuijian.getString("name"));

							out.print("</a>");
							;
						%>
</td>



<td width="100" align="center">

<%  out.print(rs_tuijian.getString("time"));  %>
</td>
</tr>
<tr>
<td width="10" align="center">
<font color="#FF9966">></font>
</td>
<td width="390">

			<%
						rs_tuijian.next();
					%>

					<a class="a1"
						href="XinWenZhongXin/add_jingcaituijian/jingcaituijian_desc.jsp?id=<%=rs_tuijian.getString("id")%>">

						<%
							out.print(rs_tuijian.getString("name"));

							out.print("</a>");
							;
						%>
</td>



<td width="100" align="center">

<%  out.print(rs_tuijian.getString("time"));  %>
</td>
</tr>
<tr>
<td width="10" align="center">
<font color="#FF9966">></font>
</td>
<td width="390">

			<%
						rs_tuijian.next();
					%>

					<a class="a1"
						href="XinWenZhongXin/add_jingcaituijian/jingcaituijian_desc.jsp?id=<%=rs_tuijian.getString("id")%>">

						<%
							out.print(rs_tuijian.getString("name"));

							out.print("</a>");
							;
						%>
</td>



<td width="100" align="center">

<%  out.print(rs_tuijian.getString("time"));  %>
</td>
</tr>
<tr>
<td width="10" align="center">
<font color="#FF9966">></font>
</td>
<td width="390">

			<%
						rs_tuijian.next();
					%>

					<a class="a1"
						href="XinWenZhongXin/add_jingcaituijian/jingcaituijian_desc.jsp?id=<%=rs_tuijian.getString("id")%>">

						<%
							out.print(rs_tuijian.getString("name"));

							out.print("</a>");
							;
						%>
</td>



<td width="100" align="center">

<%  out.print(rs_tuijian.getString("time"));  %>
</td>
</tr>
<tr>
<td width="10" align="center">
<font color="#FF9966">></font>
</td>
<td width="390">

			<%
						rs_tuijian.next();
					%>

					<a class="a1"
						href="XinWenZhongXin/add_jingcaituijian/jingcaituijian_desc.jsp?id=<%=rs_tuijian.getString("id")%>">

						<%
							out.print(rs_tuijian.getString("name"));

							out.print("</a>");
							;
						%>
</td>



<td width="100" align="center">

<%  out.print(rs_tuijian.getString("time"));  %>
</td>
</tr>

<tr>
<td width="10" align="center">
<font color="#FF9966">></font>
</td>
<td width="390">

			<%
						rs_tuijian.next();
					%>

					<a class="a1"
						href="XinWenZhongXin/add_jingcaituijian/jingcaituijian_desc.jsp?id=<%=rs_tuijian.getString("id")%>">

						<%
							out.print(rs_tuijian.getString("name"));

							out.print("</a>");
							;
						%>
</td>



<td width="100" align="center">

<%  out.print(rs_tuijian.getString("time"));  %>
</td>
</tr>


					
</table>
				</td>





				<td height="35" bordercolordark="#33FFFF">
					校内站点连接

					<center>

						<label>
							<select name="select3" style="width: 120px"
								onchange="window.open(this.options[this.selectedIndex].value);">
								<option selected="selected">
									选择进入
								</option>
								<option value="http://jwjcc.ahnu.edu.cn/">
									纪委、监察处
								</option>
								<option value="http://bgs.ahnu.edu.cn/">
									办公室
								</option>
								<option value="http://org.ahnu.edu.cn/">
									组织部(党校)
								</option>
								<option value="http://news.ahnu.edu.cn/">
									宣传部(新闻中心)
								</option>
								<option value="http://tzb.ahnu.edu.cn/">
									统战部(港澳台事务办公室)
								</option>
								<option value="http://rsc.ahnu.edu.cn/">
									人事处
								</option>
								<option value="http://tao.ahnu.edu.cn/">
									教务处(招办)
								</option>
								<option value="http://xsc1.ahnu.edu.cn/">
									学生处(学工部,人武部)
								</option>
								<option value="http://yjs.ahnu.edu.cn/">
									研究生学院(研究生工作部)
								</option>
								<option value="http://kyc.ahnu.edu.cn/">
									科研处
								</option>
								<option value="http://cwc.ahnu.edu.cn/">
									财务处
								</option>
								<option value="http://hqcy.ahnu.edu.cn/">
									后勤管理处
								</option>
								<option value="http://jjc.ahnu.edu.cn/">
									基建处
								</option>
								<option value="http://zcc.ahnu.edu.cn/">
									资产管理处
								</option>
								<option value="http://guard.ahnu.edu.cn/">
									保卫处
								</option>
								<option value="http://ltx.ahnu.edu.cn/">
									离退休工作处
								</option>
								<option value="http://audit.ahnu.edu.cn/">
									审计处
								</option>
								<option value="http://fgb.ahnu.edu.cn/">
									发展与规划办公室
								</option>
								<option value="http://jgdw.ahnu.edu.cn/">
									机关党委
								</option>
								<option value="http://210.45.192.19/~new/">
									新校区建设指挥部
								</option>
								<option value="http://pinggu.ahnu.edu.cn/">
									教学评估办公室
								</option>
								<option value="/north/">
									北校区管委会
								</option>
								<option value="http://asdgh.ahnu.edu.cn/">
									教育工会
								</option>
								<option value="http://gqt.ahnu.edu.cn/">
									团委
								</option>
								<option value="http://www.cahedu.com/">
									安徽省高等学校师资培训中心
								</option>
								<option value="http://cce.ahnu.edu.cn/">
									继续教育学院
								</option>
								<option value="http://wjcollege.ahnu.edu.cn">
									皖江学院
								</option>
								<option value="http://lib.ahnu.edu.cn/">
									图书馆
								</option>
								<option value="http://arch.ahnu.edu.cn/">
									档案馆
								</option>
								<option value="http://journal.ahnu.edu.cn/">
									学报编辑部
								</option>
								<option value="http://hospital.ahnu.edu.cn/">
									校医院
								</option>
								<option value="http://cbs.ahnu.edu.cn/">
									安徽人民出版社安徽师范大学编辑部
								</option>
								<option value="http://hqjt.ahnu.edu.cn/">
									后勤集团
								</option>
								<option value="http://wxy.ahnu.edu.cn/">
									文学院
								</option>
								<option value="http://edu.ahnu.edu.cn/">
									教育科学学院
								</option>
								<option value="http://ahnujgxy.ahnu.edu.cn/jg.swf">
									经济管理学院
								</option>
								<option value="http://politics.ahnu.edu.cn/">
									政法学院
								</option>
								<option value="http://social.ahnu.edu.cn/">
									社会学院
								</option>
								<option value="http://flc.ahnu.edu.cn/">
									外国语学院
								</option>
								<option value="http://music.ahnu.edu.cn/">
									音乐学院
								</option>
								<option value="http://msxy.ahnu.edu.cn/">
									美术学院
								</option>
								<option value="http://chm.ahnu.edu.cn/">
									传媒学院
								</option>
								<option value="http://math.ahnu.edu.cn/">
									数学计算机学院
								</option>
								<option value="http://physics.ahnu.edu.cn/">
									物理与电子信息学院
								</option>
								<option value="http://chem.ahnu.edu.cn/">
									化学与材料科学学院
								</option>
								<option value="http://tourism.ahnu.edu.cn/">
									国土资源与旅游学院
								</option>
								<option value="http://ty.ahnu.edu.cn/">
									体育学院
								</option>
								<option value="http://biology.ahnu.edu.cn/">
									生命科学学院
								</option>
								<option value="http://envirsci.ahnu.edu.cn/">
									环境科学学院
								</option>
								<option value="http://cie.ahnu.edu.cn/">
									国际教育学院(与外事办公室合署办公)
								</option>
								<option value="http://jyjt.ahnu.edu.cn/">
									教育集团
								</option>
								<option value="http://ahnuef.ahnu.edu.cn/">
									安徽师范大学教育基金会
								</option>
							</select>
						</label>
					</center>
					<br>

					建模网上报名链接
					<br>
					<center>
						<label>
							<select name="select3" style="width: 120px"
								onchange="window.open(this.options[this.selectedIndex].value);">
								<option selected="selected">
									选择进入
								</option>
								<option value="XiaoNeiSai_bm/XiaoNeiSai_bm.jsp">
									建模校内选拔赛
								</option>
								<option value="">
									趣味数学
								</option>
								<option value="">
									我才我炫
								</option>


							</select>
						</label>
					</center>



					<br>

					建模知识库连接
					<br>
					<center>
						<label>
							<select name="select3" style="width: 120px"
								onchange="window.open(this.options[this.selectedIndex].value);">
								<option selected="selected">
									选择进入
								</option>
								<option value="ftp://172.16.94.22/">
									数学建模协会FTP
								</option>
								<option value="http://www.mcm.edu.cn/">
									全国数学建模网
								</option>
								<option value="http://www.madio.net/">
									数学中国网
								</option>
								<option value="http://www.zgsxjm.com/">
									中国数学建模网
								</option>
								<option value="http://mcm.dept.ccut.edu.cn/">
									数学建模学习资源网站
								</option>



							</select>
						</label>
					</center>


				</td>





			</tr>
			<tr>
				<td colspan="4" height="200">
					<marquee direction="right" scrollamount="2" onmouseover="this.stop()" onmouseout="this.start()"> 

<span unselectable="on" >

<a  href="picture/1.jpg"  class="preview" > <img src="picture/1.jpg" alt="gallery thumbnail" style=" width: 175px; height:160px;"></img></a>
<a  href="picture/2.jpg"  class="preview" > <img src="picture/2.jpg" alt="gallery thumbnail" style="width: 175px; height: 160px;"></img></a>
<a  href="picture/3.jpg"  class="preview" > <img src="picture/3.jpg" alt="gallery thumbnail" style="width: 175px; height: 160px;"></img></a>
<a  href="picture/4.jpg"  class="preview" > <img src="picture/4.jpg" alt="gallery thumbnail" style="width: 175px; height: 160px;"></img></a>
<a  href="picture/5.jpg"  class="preview" title="Lake and a mountain"> <img src="picture/5.jpg" alt="gallery thumbnail" style="width: 175px; height:160px;"></img>

				
</span>
					</marquee>

				</td>
			<tr >
				<td colspan="4">
                               <center> ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~</center>
				</td>
			</tr>





			<tr style="background-image:url(photo/yj_3.jpg)" height="70" width="930">
				<td colspan="4" align="center" >
<font color="#333333" face="宋体" size="2">
					Copyright 2012-2013 安徽师范大学 数计学院 数学建模协会 徐浩广&nbsp;&nbsp;&nbsp; <a class="a1" href="administrator_yanzheng.jsp">管理员登陆</a></font>


				</td>
			</tr>





		</table>

</td></tr>

</body>
</html>
