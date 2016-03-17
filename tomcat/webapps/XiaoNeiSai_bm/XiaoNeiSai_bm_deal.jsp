<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="java.sql.*" errorPage=""%>

<%
	request.setCharacterEncoding("gb2312");
%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>表单提交</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body>
		<%
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/mydata?user=root&password=614025581";
			Connection conn1 = DriverManager.getConnection(url);
			Connection conn2 = DriverManager.getConnection(url);
			Connection conn3 = DriverManager.getConnection(url);

			String zz_sql = "insert into xiaoneisai_bm values (null,?,?,?,?,?,?,?,?)";
			PreparedStatement zz_pstmt = conn1.prepareStatement(zz_sql);

			String zy1_sql = "insert into xiaoneisai_bm values (null,?,?,?,?,?,?,?,?)";
			PreparedStatement zy1_pstmt = conn2.prepareStatement(zy1_sql);

			String zy2_sql = "insert into xiaoneisai_bm values (null,?,?,?,?,?,?,?,?)";
			PreparedStatement zy2_pstmt = conn3.prepareStatement(zy2_sql);

			String zz_name = request.getParameter("name_1");
			String zz_txm = request.getParameter("txm_1");
			String zz_number = request.getParameter("number_1");
			String zz_class = request.getParameter("class_1");
			String zz_major = request.getParameter("major_1");
			String zz_xueyuan = request.getParameter("xueyuan_1");
			String zz_sex = request.getParameter("sex_1");
			String zz_tel = request.getParameter("tel_1");

			zz_pstmt.setString(1, zz_name);
			zz_pstmt.setString(2, zz_number);
			zz_pstmt.setString(3, zz_txm);
			zz_pstmt.setString(4, zz_sex);
			zz_pstmt.setString(5, zz_class);
			zz_pstmt.setString(6, zz_major);
			zz_pstmt.setString(7, zz_xueyuan);
			zz_pstmt.setString(8, zz_tel);

			String zy1_name = request.getParameter("name_2");
			String zy1_txm = request.getParameter("txm_2");
			String zy1_number = request.getParameter("number_2");
			String zy1_class = request.getParameter("class_2");
			String zy1_major = request.getParameter("major_2");
			String zy1_xueyuan = request.getParameter("xueyuan_2");
			String zy1_sex = request.getParameter("sex_2");
			String zy1_tel = request.getParameter("tel_2");

			zy1_pstmt.setString(1, zy1_name);
			zy1_pstmt.setString(2, zy1_number);
			zy1_pstmt.setString(3, zy1_txm);
			zy1_pstmt.setString(4, zy1_sex);
			zy1_pstmt.setString(5, zy1_class);
			zy1_pstmt.setString(6, zy1_major);
			zy1_pstmt.setString(7, zy1_xueyuan);
			zy1_pstmt.setString(8, zy1_tel);

			String zy2_name = request.getParameter("name_3");
			String zy2_txm = request.getParameter("txm_3");
			String zy2_number = request.getParameter("number_3");
			String zy2_class = request.getParameter("class_3");
			String zy2_major = request.getParameter("major_3");
			String zy2_xueyuan = request.getParameter("xueyuan_2");
			String zy2_sex = request.getParameter("sex_3");
			String zy2_tel = request.getParameter("tel_3");

			zy2_pstmt.setString(1, zy2_name);
			zy2_pstmt.setString(2, zy2_number);
			zy2_pstmt.setString(3, zy2_txm);
			zy2_pstmt.setString(4, zy2_sex);
			zy2_pstmt.setString(5, zy2_class);
			zy2_pstmt.setString(6, zy2_major);
			zy2_pstmt.setString(7, zy2_xueyuan);
			zy2_pstmt.setString(8, zy2_tel);

			int zz_flag1 = 0;
			int zz_flag2 = 0;
			int zz_flag3 = 1;
			int zz_flag4 = 0;
			int zz_flag5 = 0;
			int zz_bm = 0;

			if ((zz_name != "") && (zz_txm != "") && (zz_number != "")
					&& (zz_class != "") && (zz_major != "") && (zz_major != "")
					&& (zz_xueyuan != "") && (zz_sex != "") && (zz_tel != "")) {
				zz_flag1 = 1;
			}

			int zz_length = zz_txm.length();

			if (zz_length == 12) {

				if (zz_flag1 == 1) {
					PreparedStatement psm = conn1
							.prepareStatement("select * from txm where txm_number='"
									+ zz_txm + "'");
					ResultSet rs = psm.executeQuery();

					if (rs.next()) {
						zz_flag2 = 1;
					}
				}

				if (zz_flag2 == 1) {
					PreparedStatement psm = conn1
							.prepareStatement("select * from txm where txm_number='"
									+ zz_txm + "' and is_use='已注册'");
					ResultSet rs = psm.executeQuery();

					if (rs.next()) {
						zz_flag3 = 0;
					}
				}

			}

			if (zz_length == 9) {

				if (zz_flag1 == 1) {
					PreparedStatement psm = conn1
							.prepareStatement("select * from huiyuan where number='"
									+ zz_txm + "'");
					ResultSet rs = psm.executeQuery();

					if (rs.next()) {
						zz_flag4 = 1;
					}
				}

				if (zz_flag4 == 1) {
					PreparedStatement psm = conn1
							.prepareStatement("select * from txm where txm_number='"
									+ zz_txm + "' and is_use='已注册'");
					ResultSet rs = psm.executeQuery();

					if (rs.next()) {
						zz_flag5 = 1;
					}
				}
			}

			if (1 == 1) {

				if (zz_flag1 == 0) {
					out
							.println("<script language='javascript'>alert('组长信息填写不完整，注册失败');window.location.href='XiaoNeiSai_bm.jsp';</script>");
				}

				else if (zz_length == 12) {
					if (zz_flag2 == 0) {
						out
								.println("<script language='javascript'>alert('组长条形码不存在，注册失败');window.location.href='XiaoNeiSai_bm.jsp';</script>");
					} else if (zz_flag3 == 0)
						out
								.println("<script language='javascript'>alert('组长条形码已被注册，请输入正确条形码');window.location.href='XiaoNeiSai_bm.jsp';</script>");
					else {

						zz_bm = 1;

					}
				}

				else if (zz_length == 12) {
					if (zz_flag4 == 0) {
						out
								.println("<script language='javascript'>alert('组长不是会员，请输入组长的条形码，注册失败');window.location.href='XiaoNeiSai_bm.jsp';</script>");
					} else if (zz_flag5 == 1)
						out
								.println("<script language='javascript'>alert('组长已经报名，不能重复报名');window.location.href='XiaoNeiSai_bm.jsp';</script>");
					else {

						zz_bm = 1;

					}

				}

			}

			int zy1_flag1 = 0;
			int zy1_flag2 = 0;
			int zy1_flag3 = 1;
			int zy1_flag4 = 0;
			int zy1_flag5 = 0;
			int zy1_bm = 0;
			if ((zy1_name != "") && (zy1_txm != "") && (zy1_number != "")
					&& (zy1_class != "") && (zy1_major != "")
					&& (zy1_major != "") && (zy1_xueyuan != "")
					&& (zy1_sex != "") && (zy1_tel != "")) {
				zy1_flag1 = 1;
			}

			int zy1_length = zy1_txm.length();

			if (zy1_length == 12) {

				if (zy1_flag1 == 1) {
					PreparedStatement psm = conn2
							.prepareStatement("select * from txm where txm_number='"
									+ zy1_txm + "'");
					ResultSet rs = psm.executeQuery();

					if (rs.next()) {
						zy1_flag2 = 1;
					}
				}

				if (zy1_flag2 == 1) {
					PreparedStatement psm = conn2
							.prepareStatement("select * from txm where txm_number='"
									+ zy1_txm + "' and is_use='已注册'");
					ResultSet rs = psm.executeQuery();

					if (rs.next()) {
						zy1_flag3 = 0;
					}
				}

			}

			if (zy1_length == 9) {

				if (zy1_flag1 == 1) {
					PreparedStatement psm = conn2
							.prepareStatement("select * from huiyuan where number='"
									+ zy1_txm + "'");
					ResultSet rs = psm.executeQuery();

					if (rs.next()) {
						zy1_flag4 = 1;
					}
				}

				if (zy1_flag4 == 1) {
					PreparedStatement psm = conn2
							.prepareStatement("select * from txm where txm_number='"
									+ zy1_txm + "' and is_use='已注册'");
					ResultSet rs = psm.executeQuery();

					if (rs.next()) {
						zy1_flag5 = 1;
					}
				}
			}

			if (2 == 2) {

				if (zy1_flag1 == 0) {
					out
							.println("<script language='javascript'>alert('组员1信息填写不完整，注册失败');window.location.href='XiaoNeiSai_bm.jsp';</script>");
				}

				else if (zy1_length == 12) {
					if (zy1_flag2 == 0) {
						out
								.println("<script language='javascript'>alert('组员1条形码不存在，注册失败');window.location.href='XiaoNeiSai_bm.jsp';</script>");
					} else if (zy1_flag3 == 0)
						out
								.println("<script language='javascript'>alert('组员1条形码已被注册，请输入正确条形码');window.location.href='XiaoNeiSai_bm.jsp';</script>");
					else {

						zy1_bm = 1;

					}
				}

				else if (zy1_length == 9) {
					if (zy1_flag4 == 0) {
						out
								.println("<script language='javascript'>alert('组员1不是会员，请输入组员1的条形码，注册失败');window.location.href='XiaoNeiSai_bm.jsp';</script>");
					} else if (zy1_flag5 == 1)
						out
								.println("<script language='javascript'>alert('组员1已经报名，不能重复报名');window.location.href='XiaoNeiSai_bm.jsp';</script>");
					else {

						zy1_bm = 1;

					}

				}

			}

			int zy2_flag1 = 0;
			int zy2_flag2 = 0;
			int zy2_flag3 = 1;
			int zy2_flag4 = 0;
			int zy2_flag5 = 0;
			int zy2_bm = 0;
			if ((zy2_name != "") && (zy2_txm != "") && (zy2_number != "")
					&& (zy2_class != "") && (zy2_major != "")
					&& (zy2_major != "") && (zy2_xueyuan != "")
					&& (zy2_sex != "") && (zy2_tel != "")) {
				zy2_flag1 = 1;
			}

			int zy2_length = zy2_txm.length();

			if (zy2_length == 12) {

				if (zy2_flag1 == 1) {
					PreparedStatement psm = conn3
							.prepareStatement("select * from txm where txm_number='"
									+ zy2_txm + "'");
					ResultSet rs = psm.executeQuery();

					if (rs.next()) {
						zy2_flag2 = 1;
					}
				}

				if (zy2_flag2 == 1) {
					PreparedStatement psm = conn3
							.prepareStatement("select * from txm where txm_number='"
									+ zy2_txm + "' and is_use='已注册'");
					ResultSet rs = psm.executeQuery();

					if (rs.next()) {
						zy2_flag3 = 0;
					}
				}

			}

			if (zy2_length == 9) {

				if (zy2_flag1 == 1) {
					PreparedStatement psm = conn3
							.prepareStatement("select * from huiyuan where number='"
									+ zy2_txm + "'");
					ResultSet rs = psm.executeQuery();

					if (rs.next()) {
						zy2_flag4 = 1;
					}
				}

				if (zy2_flag4 == 1) {
					PreparedStatement psm = conn3
							.prepareStatement("select * from txm where txm_number='"
									+ zy2_txm + "' and is_use='已注册'");
					ResultSet rs = psm.executeQuery();

					if (rs.next()) {
						zy2_flag5 = 1;
					}
				}
			}

			if (3 == 3) {

				if (zy2_flag1 == 0) {
					out
							.println("<script language='javascript'>alert('组员2信息填写不完整，注册失败');window.location.href='XiaoNeiSai_bm.jsp';</script>");
				}

				else if (zy2_length == 12) {
					if (zy2_flag2 == 0) {
						out
								.println("<script language='javascript'>alert('组员2条形码不存在，注册失败');window.location.href='XiaoNeiSai_bm.jsp';</script>");
					} else if (zy2_flag3 == 0)
						out
								.println("<script language='javascript'>alert('组员2条形码已被注册，请输入正确条形码');window.location.href='XiaoNeiSai_bm.jsp';</script>");
					else {

						zy2_bm = 1;

					}
				}

				else if (zy2_length == 9) {
					if (zy2_flag4 == 0) {
						out
								.println("<script language='javascript'>alert('组员2不是会员，请输入组员2的条形码，注册失败');window.location.href='XiaoNeiSai_bm.jsp';</script>");
					} else if (zy2_flag5 == 1)
						out
								.println("<script language='javascript'>alert('组员2已经报名，不能重复报名');window.location.href='XiaoNeiSai_bm.jsp';</script>");
					else {

						zy2_bm = 1;

					}

				}

			}

			if (zz_bm == 1 && zy1_bm == 1 && zy2_bm == 1) {

				if (zz_length == 12) {
					PreparedStatement p1 = conn1
							.prepareStatement("update txm set is_use='已注册' where txm_number='"
									+ zz_txm + "'");
					zz_pstmt.executeUpdate();
					p1.executeUpdate();
					zz_pstmt.close();
					conn1.close();
				}

				else {
					String s1 = "insert into txm values (null,?,'已注册')";
					PreparedStatement p1 = conn1.prepareStatement(s1);
					p1.setString(1, zz_txm);

					zz_pstmt.executeUpdate();
					p1.executeUpdate();
					zz_pstmt.close();
					conn1.close();
				}

				if (zy1_length == 12) {
					PreparedStatement p2 = conn2
							.prepareStatement("update txm set is_use='已注册' where txm_number='"
									+ zy1_txm + "'");

					zy1_pstmt.executeUpdate();
					p2.executeUpdate();
					zy1_pstmt.close();
					conn2.close();
				} else {
					String s2 = "insert into txm values (null,?,'已注册')";
					PreparedStatement p2 = conn2.prepareStatement(s2);
					p2.setString(1, zy1_txm);
					zy1_pstmt.executeUpdate();
					p2.executeUpdate();
					zy1_pstmt.close();
					conn2.close();

				}

				if (zy2_length == 12) {
					PreparedStatement p3 = conn3
							.prepareStatement("update txm set is_use='已注册' where txm_number='"
									+ zy2_txm + "'");

					zy2_pstmt.executeUpdate();
					p3.executeUpdate();
					zy2_pstmt.close();
					conn3.close();
				}

				else {
					String s3 = "insert into txm values (null,?,'已注册')";
					PreparedStatement p3 = conn3.prepareStatement(s3);
					p3.setString(1, zy2_txm);
					zy2_pstmt.executeUpdate();
					p3.executeUpdate();
					zy2_pstmt.close();
					conn3.close();

				}
				out
						.println("<script language='javascript'>alert('恭喜，您已成功报名校内选拔赛！');window.location.href='XiaoNeiSai_bm.jsp';</script>");

			}
		%>
	</body>
</html>
