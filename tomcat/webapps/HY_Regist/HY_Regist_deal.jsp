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
			Connection conn = DriverManager.getConnection(url);

			String sql = "insert into huiyuan values (null,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			Statement stmt = conn.createStatement();

			String hy_name = request.getParameter("name");
			String hy_txm = request.getParameter("txm");
			String hy_number = request.getParameter("number");
			String hy_class = request.getParameter("class");
			String hy_major = request.getParameter("major");
			String hy_xueyuan = request.getParameter("xueyuan");
			String hy_pwd = request.getParameter("pwd");
			String hy_sex = request.getParameter("sex");
			String hy_qq = request.getParameter("qq");
			String hy_tel = request.getParameter("tel");
			String hy_suggestion = request.getParameter("suggestion");

			pstmt.setString(1, hy_name);
			pstmt.setString(2, hy_txm);
			pstmt.setString(3, hy_number);
			pstmt.setString(4, hy_class);
			pstmt.setString(5, hy_major);
			pstmt.setString(6, hy_xueyuan);
			pstmt.setString(7, hy_pwd);
			pstmt.setString(8, hy_sex);
			pstmt.setString(9, hy_qq);
			pstmt.setString(10, hy_tel);
			pstmt.setString(11, hy_suggestion);

			int flag1 = 0;
			int flag2 = 0;
			int flag3 = 1;
			if ((hy_name != "") && (hy_name != "") && (hy_txm != "")
					&& (hy_number != "") && (hy_class != "")
					&& (hy_major != "") && (hy_xueyuan != "") && (hy_pwd != "")
					&& (hy_sex != "") && (hy_qq != "") && (hy_tel != "")
					&& (hy_suggestion != "")) {
				flag1 = 1;
			}

			if (flag1 == 1) {
				PreparedStatement psm = conn
						.prepareStatement("select * from txm where txm_number='"
								+ hy_txm + "'");
				ResultSet rs = psm.executeQuery();

				if (rs.next()) {
					flag2 = 1;
				}
			}

			if (flag2 == 1) {
				PreparedStatement psm = conn
						.prepareStatement("select * from txm where txm_number='"
								+ hy_txm + "' and is_use='已注册'");
				ResultSet rs = psm.executeQuery();

				if (rs.next()) {
					flag3 = 0;
				}
			}

			if (1 == 1) {
				if (flag1 == 0)
					out
							.println("<script language='javascript'>alert('信息填写不完整，注册失败');window.location.href='HY_Regist.jsp';</script>");

				if (flag2 == 0)
					out
							.println("<script language='javascript'>alert('条形码不存在，注册失败');window.location.href='HY_Regist.jsp';</script>");
				else if (flag3 == 0)
					out
							.println("<script language='javascript'>alert('该条形码已被注册，请输入正确条形码');window.location.href='HY_Regist.jsp';</script>");

				else {

					PreparedStatement p = conn
							.prepareStatement("update txm set is_use='已注册' where txm_number='"
									+ hy_txm + "'");

					pstmt.executeUpdate();
					p.executeUpdate();
					pstmt.close();
					conn.close();
					out
							.println("<script language='javascript'>alert('恭喜，您已成功注册！');window.location.href='HY_Regist.jsp';</script>");

				}
			}
		%>
	</body>
</html>
