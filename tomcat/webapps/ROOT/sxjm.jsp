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
		<title>��ѧ��ģ��վ</title>
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
							<a class="a1" href="sxjm.jsp" target="_self">�� ҳ</a>
						</li>
						<li>


						<%
							rs_xhjj.next();
						%>
							<a class="a1" href="add_xiehuijianjie/xiehuijianjie_desc.jsp?id=<%=rs_xhjj.getString("id")%>" target="_self">Э����</a>
						</li>
						<li>
							<a class="a1" href="#" target="_self">��������</a>
							<ul id="subNews" class="second-menu">
								</li>
						
						<li>
<%
							rs_zhuxituan.next();
						%>
							<a class="a1" href="JiGouSheZhi/add_zhuxituan/zhuxituan_desc.jsp?id=<%=rs_zhuxituan.getString("id")%>" class="mobanwang"  target="_self">��ϯ��</a>
								</li>

<li>
<%
							rs_bangongshi.next();
						%>
							<a class="a1" href="JiGouSheZhi/add_bangongshi/bangongshi_desc.jsp?id=<%=rs_bangongshi.getString("id")%>" class="mobanwang"  target="_self">�칫��</a>
								</li>
								<li>

								
<%
							rs_xueyanbu.next();
						%>
							<a class="a1" href="JiGouSheZhi/add_xueyanbu/xueyanbu_desc.jsp?id=<%=rs_xueyanbu.getString("id")%>" class="mobanwang"  target="_self">ѧ�в�</a>
								</li>
								
								<li>								
<%
							rs_cehuabu.next();
						%>
							<a class="a1" href="JiGouSheZhi/add_cehuabu/cehuabu_desc.jsp?id=<%=rs_cehuabu.getString("id")%>" class="mobanwang"  target="_self">�߻���</a>
								</li>

						<li>
<%
							rs_xuanchuanbu.next();
						%>
							<a class="a1" href="JiGouSheZhi/add_xuanchuanbu/xuanchuanbu_desc.jsp?id=<%=rs_xuanchuanbu.getString("id")%>" class="mobanwang"  target="_self">������</a>
								</li>

								
								<li>
<%
							rs_wailianbu.next();
						%>
							<a class="a1" href="JiGouSheZhi/add_wailianbu/wailianbu_desc.jsp?id=<%=rs_wailianbu.getString("id")%>" class="mobanwang"  target="_self">������</a>
								</li>
								<li>

<%
							rs_renzhengbu.next();
						%>
							<a class="a1" href="JiGouSheZhi/add_renzhengbu/renzhengbu_desc.jsp?id=<%=rs_renzhengbu.getString("id")%>" class="mobanwang"  target="_self">��֤��</a>
								</li>
								<li>
						<%
							rs_wangluobu.next();
						%>
							<a class="a1" href="JiGouSheZhi/add_wangluobu/wangluobu_desc.jsp?id=<%=rs_wangluobu.getString("id")%>" class="mobanwang"  target="_self">���粿</a>
								</li>
								<li>
<%
							rs_caiwubu.next();
						%>
							<a class="a1" href="JiGouSheZhi/add_caiwubu/caiwubu_desc.jsp?id=<%=rs_caiwubu.getString("id")%>" class="mobanwang"  target="_self">����</a>
								</li>

							</ul>
						<li>
							<a class="a1" href="#">��������</a>
<ul id="subNews" class="second-menu">
								<li>
									<a class="a1" href="XinWenZhongXin/total_gonggao_desc.jsp" class="mobanwang" target="_blank">֪ͨ����</a>
								</li>
								<li>
									<a class="a1" href="XinWenZhongXin/total_xinwen_desc.jsp" class="mobanwang"  target="_blank">���Ŷ�̬</a>
								</li>
								<li>
									<a class="a1" href="XinWenZhongXin/total_jingcaituijian_desc.jsp" class="mobanwang"  target="_blank">�����Ƽ�</a>
								</li>
															<li>
									<a class="a1" href="XinWenZhongXin/total_jianmoshiti_desc.jsp" class="mobanwang"  target="_blank">��ģ����</a>
								</li>
							</ul>
						</li>


						<li>
							<a class="a1" href="" class="mobanwang"
								target="_blank">�����</a>
							<ul id="subNews" class="second-menu">
								<li>
									<a class="a1" href="HuoDongJieShao/add_quanguosai/quanguosai_desc.jsp" class="mobanwang" target="_self">��ѧ��ģȫ����</a>
								</li>
								<li>
									<a class="a1" href="HuoDongJieShao/add_jianmojiangzuo/jianmojiangzuo_desc.jsp" class="mobanwang" target="_self">��ѧ��ģ֪ʶ����</a>
								</li>
								<li>
									<a class="a1" href="HuoDongJieShao/add_quweishuxue/quweishuxue_desc.jsp" class="mobanwang" target="_self">Ȥζ��ѧ����</a>
								</li>
								<li>
									<a class="a1" href="HuoDongJieShao/add_tiaozhansai/tiaozhansai_desc.jsp" class="mobanwang" target="_self">������ս��</a>
								</li>
								<li>
									<a class="a1" href="HuoDongJieShao/add_wuhusai/wuhusai_desc.jsp" class="mobanwang" target="_self">�ߺ���У����</a>
								</li>
								<li>
									<a class="a1" href="HuoDongJieShao/add_wocaiwoxuan/wocaiwoxuan_desc.jsp" class="mobanwang" target="_self">�Ҳ�����</a>
								</li>
								<li>
									<a class="a1" href="HuoDongJieShao/add_xiaoneixuanbasai/xiaoneixuanbasai_desc.jsp" class="mobanwang" target="_self">У��ѡ����</a>
								</li>			
								 <li>
									<a class="a1" href="HuoDongJieShao/add_shuqipeixun/shuqipeixun_desc.jsp" class="mobanwang" target="_self">��ѧ��ģ������ѵ</a>
								</li>

							</ul>
						</li>
						<li>
							<a class="a1" href="JianMoZhiShi/total_jianmozhishi_desc.jsp" class="mobanwang"  target="_blank">��ģ֪ʶ</a>
						</li>
						<li>
							<a class="a1" href="ChengJiZhanShi/total_grade_desc.jsp" class="mobanwang"  target="_blank">�ɼ�չʾ</a>
							
						</li>
						<li>
							<a class="a1" href="LiuYanBan/add_liuyan.jsp" class="mobanwang" target="_self">���԰�</a>
						</li>
				</td>
			</tr>

			<tr>
				<td  colspan="3">
					<marquee scrollamount="4"  ><font color="#330000" size="4" face="����">
						<span unselectable="on"><%
							if (session.getAttribute("name") != null) {
						%>�װ���
						<%=session.getAttribute("name")%>
						��Ա��<%
							}
						%>���ã���ӭ����������ѧԺ��ѧ��ģЭ����վ����������վǶ���ض���JavaScript������������������ģʽ�������վ.��
					</font></span></marquee>

                                          <font color="#330000" size="4" face="����">
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

									������
									<input style="width: 140px" name="name" type="text">
								</td>
							</tr>
							<tr>
								<td>

									ѧ�ţ�
									<input style="width: 140px" name="xuehao" type="text">
								</td>
							</tr>


							<tr>
								<td>
									���룺

									<input style="width: 140px" name="password" type="password">
								</td>
							</tr>
							<tr>
								<td>
									<input type="reset" value="����">
									&nbsp;&nbsp;&nbsp;
									<input type="submit" value="��½">
									&nbsp;&nbsp;&nbsp;
									<a class="a1" href="HY_Regist/HY_Regist.jsp" target="mainFrame">�»�Աע��</a>
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
					У��վ������

					<center>

						<label>
							<select name="select3" style="width: 120px"
								onchange="window.open(this.options[this.selectedIndex].value);">
								<option selected="selected">
									ѡ�����
								</option>
								<option value="http://jwjcc.ahnu.edu.cn/">
									��ί����촦
								</option>
								<option value="http://bgs.ahnu.edu.cn/">
									�칫��
								</option>
								<option value="http://org.ahnu.edu.cn/">
									��֯��(��У)
								</option>
								<option value="http://news.ahnu.edu.cn/">
									������(��������)
								</option>
								<option value="http://tzb.ahnu.edu.cn/">
									ͳս��(�۰�̨����칫��)
								</option>
								<option value="http://rsc.ahnu.edu.cn/">
									���´�
								</option>
								<option value="http://tao.ahnu.edu.cn/">
									����(�а�)
								</option>
								<option value="http://xsc1.ahnu.edu.cn/">
									ѧ����(ѧ����,���䲿)
								</option>
								<option value="http://yjs.ahnu.edu.cn/">
									�о���ѧԺ(�о���������)
								</option>
								<option value="http://kyc.ahnu.edu.cn/">
									���д�
								</option>
								<option value="http://cwc.ahnu.edu.cn/">
									����
								</option>
								<option value="http://hqcy.ahnu.edu.cn/">
									���ڹ���
								</option>
								<option value="http://jjc.ahnu.edu.cn/">
									������
								</option>
								<option value="http://zcc.ahnu.edu.cn/">
									�ʲ�����
								</option>
								<option value="http://guard.ahnu.edu.cn/">
									������
								</option>
								<option value="http://ltx.ahnu.edu.cn/">
									�����ݹ�����
								</option>
								<option value="http://audit.ahnu.edu.cn/">
									��ƴ�
								</option>
								<option value="http://fgb.ahnu.edu.cn/">
									��չ��滮�칫��
								</option>
								<option value="http://jgdw.ahnu.edu.cn/">
									���ص�ί
								</option>
								<option value="http://210.45.192.19/~new/">
									��У������ָ�Ӳ�
								</option>
								<option value="http://pinggu.ahnu.edu.cn/">
									��ѧ�����칫��
								</option>
								<option value="/north/">
									��У����ί��
								</option>
								<option value="http://asdgh.ahnu.edu.cn/">
									��������
								</option>
								<option value="http://gqt.ahnu.edu.cn/">
									��ί
								</option>
								<option value="http://www.cahedu.com/">
									����ʡ�ߵ�ѧУʦ����ѵ����
								</option>
								<option value="http://cce.ahnu.edu.cn/">
									��������ѧԺ
								</option>
								<option value="http://wjcollege.ahnu.edu.cn">
									�ѧԺ
								</option>
								<option value="http://lib.ahnu.edu.cn/">
									ͼ���
								</option>
								<option value="http://arch.ahnu.edu.cn/">
									������
								</option>
								<option value="http://journal.ahnu.edu.cn/">
									ѧ���༭��
								</option>
								<option value="http://hospital.ahnu.edu.cn/">
									УҽԺ
								</option>
								<option value="http://cbs.ahnu.edu.cn/">
									������������簲��ʦ����ѧ�༭��
								</option>
								<option value="http://hqjt.ahnu.edu.cn/">
									���ڼ���
								</option>
								<option value="http://wxy.ahnu.edu.cn/">
									��ѧԺ
								</option>
								<option value="http://edu.ahnu.edu.cn/">
									������ѧѧԺ
								</option>
								<option value="http://ahnujgxy.ahnu.edu.cn/jg.swf">
									���ù���ѧԺ
								</option>
								<option value="http://politics.ahnu.edu.cn/">
									����ѧԺ
								</option>
								<option value="http://social.ahnu.edu.cn/">
									���ѧԺ
								</option>
								<option value="http://flc.ahnu.edu.cn/">
									�����ѧԺ
								</option>
								<option value="http://music.ahnu.edu.cn/">
									����ѧԺ
								</option>
								<option value="http://msxy.ahnu.edu.cn/">
									����ѧԺ
								</option>
								<option value="http://chm.ahnu.edu.cn/">
									��ýѧԺ
								</option>
								<option value="http://math.ahnu.edu.cn/">
									��ѧ�����ѧԺ
								</option>
								<option value="http://physics.ahnu.edu.cn/">
									�����������ϢѧԺ
								</option>
								<option value="http://chem.ahnu.edu.cn/">
									��ѧ����Ͽ�ѧѧԺ
								</option>
								<option value="http://tourism.ahnu.edu.cn/">
									������Դ������ѧԺ
								</option>
								<option value="http://ty.ahnu.edu.cn/">
									����ѧԺ
								</option>
								<option value="http://biology.ahnu.edu.cn/">
									������ѧѧԺ
								</option>
								<option value="http://envirsci.ahnu.edu.cn/">
									������ѧѧԺ
								</option>
								<option value="http://cie.ahnu.edu.cn/">
									���ʽ���ѧԺ(�����°칫�Һ���칫)
								</option>
								<option value="http://jyjt.ahnu.edu.cn/">
									��������
								</option>
								<option value="http://ahnuef.ahnu.edu.cn/">
									����ʦ����ѧ���������
								</option>
							</select>
						</label>
					</center>
					<br>

					��ģ���ϱ�������
					<br>
					<center>
						<label>
							<select name="select3" style="width: 120px"
								onchange="window.open(this.options[this.selectedIndex].value);">
								<option selected="selected">
									ѡ�����
								</option>
								<option value="XiaoNeiSai_bm/XiaoNeiSai_bm.jsp">
									��ģУ��ѡ����
								</option>
								<option value="">
									Ȥζ��ѧ
								</option>
								<option value="">
									�Ҳ�����
								</option>


							</select>
						</label>
					</center>



					<br>

					��ģ֪ʶ������
					<br>
					<center>
						<label>
							<select name="select3" style="width: 120px"
								onchange="window.open(this.options[this.selectedIndex].value);">
								<option selected="selected">
									ѡ�����
								</option>
								<option value="ftp://172.16.94.22/">
									��ѧ��ģЭ��FTP
								</option>
								<option value="http://www.mcm.edu.cn/">
									ȫ����ѧ��ģ��
								</option>
								<option value="http://www.madio.net/">
									��ѧ�й���
								</option>
								<option value="http://www.zgsxjm.com/">
									�й���ѧ��ģ��
								</option>
								<option value="http://mcm.dept.ccut.edu.cn/">
									��ѧ��ģѧϰ��Դ��վ
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
<font color="#333333" face="����" size="2">
					Copyright 2012-2013 ����ʦ����ѧ ����ѧԺ ��ѧ��ģЭ�� ��ƹ�&nbsp;&nbsp;&nbsp; <a class="a1" href="administrator_yanzheng.jsp">����Ա��½</a></font>


				</td>
			</tr>





		</table>

</td></tr>

</body>
</html>
