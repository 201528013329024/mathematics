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
		<script type=text/javascript>
$(function(){
	$('#mobanwang_com li').hover(function(){
		$(this).children('ul').stop(true,true).show('slow');
	},function(){
		$(this).children('ul').stop(true,true).hide('slow');
	});
	
	$('#mobanwang_com li').hover(function(){
		$(this).children('div').stop(true,true).show('slow');
	},function(){
		$(this).children('div').stop(true,true).hide('slow');
	});
});
</script>












		<style type="text/css">
a:link {
	color: #FFFFFF;
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
	color: #FF0000;
}

a:active {
	text-decoration: none;
}

* {
	margin: 0;
	padding: 0;
}

body {
	font-family: Arial, Verdana, Helvetica, sans-serif;
	font-family: "雅黑宋体", "微软雅黑", "新宋体", "宋体";
	font-size: 1em;
	font-size: 17px;
	color: #FFF;
	background: #333333;
}

#time {
	font-family: "宋体";
	font-size: 1em;
	font-size: 17px;
	color: #FFF;
	background: #050505;
}

a {
	color: #FFF;
	text-decoration: none;
}

ul {
	list-style: none;
}

#mobanwang_com {
	height: 37px;
	background: #333;
	font-size: 1.6em;
	text-align: center;
}

#mobanwang_com a {
	font-size: 0.65em;
}

#mobanwang_com li ul {
	display: none;
}

#mobanwang_com li ul li {
	float: none;
}

* html #mobanwang_com li ul li {
	display: inline;
}

#mobanwang_com li ul a {
	float: none;
	height: 32px;
	line-height: 32px;
	padding: 0 10px;
	text-transform: capitalize;
}

#mobanwang_com .height-auto {
	line-height: 15px;
	padding: 5px 10px;
}

.second-menu,.third-menu,.fourth-menu {
	position: absolute;
}

.first-menu li {
	float: left;
	position: relative;
}

.first-menu a {
	float: left;
	display: block;
	padding: 0 15px;
	height: 35px;
	line-height: 35px;
	background: #333;
	border-top: 1px solid #4a4a4a;
	border-left: 1px solid #4a4a4a;
	border-bottom: 1px solid #242424;
	border-right: 6px solid #242424;
	font-size: .7em;
}

.first-menu a:hover {
	background: #4698ca;
	border-top: 1px solid #5db1e0;
	border-left: 1px solid #5db1e0;
}

.second-menu {
	top: 37px;
	right: 0;
}

* html .second-menu {
	right: -1px;
}

.second-menu a {
	font-size: 11px;
	
}

.second-menu a.mobanwang {
	background: #3a3a3a url(image/mobanwang.gif) no-repeat right top;
}

.second-menu a.mobanwang:hover {
	background: #4698ca url(image/mobanwang.gif) no-repeat right -32px;
}

.second-menu a.mobanwang-02 {
	background: #3a3a3a url(image/mobanwang.gif) no-repeat right -64px;
}

.second-menu a.mobanwang-02:hover {
	background: #4698ca url(image/mobanwang.gif) no-repeat right -110px;
}

.third-menu,.fourth-menu {
	width: 177px;
	top: 0;
	left: 85px;
}

.third-menu a {
	float: left;
	display: block;
	padding: 0 15px;
	height: 35px;
	line-height: 35px;
	background: #333;
	border-top: 1px solid #4a4a4a;
	border-left: 1px solid #4a4a4a;
	border-bottom: 1px solid #242424;
	border-right: 6px solid #242424;
	font-size: .7em;
}

#subMgm {
	width: 177px;
}

#subMgm .third-menu {
	left: 177px;
}

#subMgm .fourth-menu {
	left: 177px;
}

#subMusic,#subNews {
	width: 177px;
}
</style>
	</head>
	<body onload="clockon(bgclock)" bgcolor="#FFFFFF">
		<table width="1047" align="center" border="1">
			<tr  style="background-image:url(photo/houtai.jpg)" height=200" width="930">
				<td colspan="3" align="center">
				<font color="#FFFF00" size="+6" face="华文琥珀">	数学建模协会网站后台管理系统</font>
				</td>
			
			</tr>
			<tr>
				<td colspan="3">
					<ul id="mobanwang_com" class="first-menu">
						<li>
							<a href="sxjm.jsp" target="_self">首 页</a>
						</li>
						<li>


						<a href="add_xiehuijianjie/add_xiehuijianjie.jsp"target="_blank"  >协会简介</a>
						</li>
						<li>
							<a href="#" target="_self">机构设置</a>
							<ul id="subNews" class="second-menu">
								</li>
						
						<li>
						<a href="JiGouSheZhi/add_zhuxituan/add_zhuxituan.jsp" target="_blank">主席团</a>
								</li>

<li>
<a href="JiGouSheZhi/add_bangongshi/add_bangongshi.jsp" target="_blank">办公室</a>
								</li>
								<li>

								
<a href="JiGouSheZhi/add_xueyanbu/add_xueyanbu.jsp" target="_blank">学研部</a>
								</li>
								
								<li>								
<a href="JiGouSheZhi/add_cehuabu/add_cehuabu.jsp" target="_blank">策划部</a>
								</li>

						<li>
<a href="JiGouSheZhi/add_xuanchuanbu/add_xuanchuanbu.jsp" target="_blank">宣传部</a>
								</li>

								
								<li>
<a  href="JiGouSheZhi/add_wailianbu/add_wailianbu.jsp" target="_blank">外联部</a>
								</li>
								<li>

<a href="JiGouSheZhi/add_renzhengbu/add_renzhengbu.jsp" target="_blank">认证部</a>
								</li>
<a href="JiGouSheZhi/add_wangluobu/add_wangluobu.jsp" target="_blank">网络部</a>
								</li>
								<li>
<a href="JiGouSheZhi/add_caiwubu/add_caiwubu.jsp" target="_blank">财务部</a>
								</li>

							</ul>
						<li>
							<a href="#">新闻中心</a>
<ul id="subNews" class="second-menu">
								<li>
									<a href="XinWenZhongXin/add_gonggao/add_gonggao.jsp" class="mobanwang" target="_blank">通知公告</a>
								</li>
								<li>
									<a href="XinWenZhongXin/add_xinwen/add_xinwen.jsp" class="mobanwang" target="_blank">新闻动态</a>
								</li>
								<li>
									<a href="XinWenZhongXin/add_jingcaituijian/add_jingcaituijian.jsp" class="mobanwang" target="_blank">精彩推荐</a>
								</li>
								<li>

							</ul>
						</li>


						<li>
							<a href="#" class="mobanwang">活动介绍</a>
							
							<ul id="subNews" class="second-menu">
								<li>
									<a href="HuoDongJieShao/add_quanguosai/add_quanguosai.jsp" class="mobanwang" target="_blank">数学建模全国赛</a>
								</li>
								<li>
									<a href="HuoDongJieShao/add_jianmojiangzuo/add_jianmojiangzuo.jsp" class="mobanwang" target="_blank">数学建模知识讲座</a>
								</li>
								<li>
									<a href="HuoDongJieShao/add_quweishuxue/add_quweishuxue.jsp" class="mobanwang" target="_blank">趣味数学竞赛</a>
								</li>
								<li>
									<a href="HuoDongJieShao/add_tiaozhansai/add_tiaozhansai.jsp" class="mobanwang" target="_blank">网络挑战赛</a>
								</li>
								<li>
									<a href="HuoDongJieShao/add_wuhusai/add_wuhusai.jsp" class="mobanwang" target="_blank">芜湖高校联赛</a>
								</li>
								<li>
									<a href="HuoDongJieShao/add_wocaiwoxuan/add_wocaiwoxuan.jsp" class="mobanwang" target="_blank">我才我炫</a>
								</li>
								<li>
									<a href="HuoDongJieShao/add_xiaoneixuanbasai/add_xiaoneixuanbasai.jsp" class="mobanwang" target="_blank">校内选拔赛</a>
								</li>			
						

								<li>
									<a href="HuoDongJieShao/add_shuqipeixun/add_shuqipeixun.jsp" class="mobanwang" target="_blank">数学建模暑期培训</a>
								</li>

							</ul>
						</li>
						<li>
							<a href="JianMoZhiShi/add_jianmozhishi/add_jianmozhishi.jsp" class="mobanwang" target="_blank">建模知识</a>
						</li>
						<li>
							<a href="ChengJiZhanShi/quanguosai/add_quanguosai.jsp" class="mobanwang" target="_blank">成绩展示</a>
							
						</li>
						<li>
							<a href="LiuYanBan/liuyan_desc.jsp" class="mobanwang" target="_blank">留言查看</a>
						<li>
							<a href="#" class="mobanwang" >会员管理</a>
							<ul id="subNews" class="second-menu">
								<li>
									<a href="HY_info/HuiYuan_information.jsp" class="mobanwang" target="_blank">会员注册查看</a>
								</li>
								<li>
									<a href="HY_info/HuiYuan_delete.jsp" class="mobanwang" target="_blank">删除会员</a>
								</li>
								<li>
									<a href="HY_info/Suggestion_To_Us.jsp" class="mobanwang" target="_blank">会员对我们的建议</a>
								</li>

							</ul>
						</li>
			
						<li>
							<a href="#" class="mobanwang" target="_blank">条形码管理</a>
						<ul id="subNews" class="second-menu">
		
								<li>
						<a href="TXM/HY_Regist/txm_info.jsp" target="_blank">条形码注册查看</a>
								</li>
<li>
						<a href="TXM/HY_Regist/add_txm.jsp"  target="_blank">添加条形码</a>
								</li>
								<li>
						<a href="TXM/HY_Regist/txm_delete.jsp"  target="_blank">删除条形码</a>
								</li>
								

							</ul>
								

							
						<li>
			

	
	</body>
</html>
