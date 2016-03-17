<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>数学建模协会新会员注册</title>

		<link REL=stylesheet href="1.css" type="text/css">
		<script language="JavaScript">
		

		var flag_name_1 = 0;
		var flag_txm_1 = 0;
		var flag_number_1 = 0;
		var flag_pwd_1 = 0;
		var flag_repwd_1 = 0;
		var flag_major_1 = 0;
		var flag_qq_1 = 0;
		var flag_tel_1 = 0;
		
		
		var flag_name_2 = 0;
		var flag_txm_2 = 0;
		var flag_number_2 = 0;
		var flag_pwd_2 = 0;
		var flag_repwd_2 = 0;
		var flag_major_2 = 0;
		var flag_qq_2 = 0;
		var flag_tel_2 = 0;
		
		
		
		var flag_name_3 = 0;
		var flag_txm_3 = 0;
		var flag_number_3 = 0;
		var flag_pwd_3 = 0;
		var flag_repwd_3 = 0;
		var flag_major_3 = 0;
		var flag_qq_3 = 0;
		var flag_tel_3 = 0;
		
	function isWhiteWpace(s) {
	var whitespace = "\t\n\r";
	var i;
	for (i = 0; i < s.length; i++) {
		var c = s.charAt(i);
		if (whitespace.indexOf(c) >= 0) {
			return true;
		}
	}
	return false;
}

function check_name_1() {
	if (isWhiteWpace(form1.name_1.value)) {
		document.getElementById("nameErr_1").innerHTML = "<font color='red'>请输入正确的姓名，姓名里不能含有空格</font>";
		return false;
	}
	if (form1.name_1.value == "") {
		document.getElementById("nameErr_1").innerHTML = "<font color='red'>请输入姓名，姓名不能为空！</font>";
		return false;
	}
	document.getElementById("nameErr_1").innerHTML = "";
	flag_name_1 = 1;
	return true;
}



function check_name_2() {
	if (isWhiteWpace(form1.name_2.value)) {
		document.getElementById("nameErr_2").innerHTML = "<font color='red'>请输入正确的姓名，姓名里不能含有空格</font>";
		return false;
	}
	if (form1.name_2.value == "") {
		document.getElementById("nameErr_2").innerHTML = "<font color='red'>请输入姓名，姓名不能为空！</font>";
		return false;
	}
	document.getElementById("nameErr_2").innerHTML = "";
	flag_name_2 = 1;
	return true;
}


function check_name_3() {
	if (isWhiteWpace(form1.name_3.value)) {
		document.getElementById("nameErr_3").innerHTML = "<font color='red'>请输入正确的姓名，姓名里不能含有空格</font>";
		return false;
	}
	if (form1.name_3.value == "") {
		document.getElementById("nameErr_3").innerHTML = "<font color='red'>请输入姓名，姓名不能为空！</font>";
		return false;
	}
	document.getElementById("nameErr_3").innerHTML = "";
	flag_name_3 = 1;
	return true;
}





function check_txm_1() {
	if (form1.txm_1.value == "") {
		document.getElementById("txmErr_1").innerHTML = "<font color='red'>请输入条形码</font>";
		return false;
	}
	document.getElementById("txmErr_1").innerHTML = "";
	flag_txm_1 = 1;
	return true;
}


function check_txm_2() {
	if (form1.txm_2.value == "") {
		document.getElementById("txmErr_2").innerHTML = "<font color='red'>请输入条形码</font>";
		return false;
	}
	document.getElementById("txmErr_2").innerHTML = "";
	flag_txm_2 = 1;
	return true;
}

function check_txm_3() {
	if (form1.txm_3.value == "") {
		document.getElementById("txmErr_3").innerHTML = "<font color='red'>请输入条形码</font>";
		return false;
	}
	document.getElementById("txmErr_3").innerHTML = "";
	flag_txm_3 = 1;
	return true;
}


function check_number_1() {
	if (form1.number_1.value.length != 9) {
		document.getElementById("numberErr_1").innerHTML = "<font color='red'>请输入正确学号</font>";
		return false;
	}
	document.getElementById("numberErr_1").innerHTML = "";
	flag_number_1 = 1;
	return true;
}

function check_number_2() {
	if (form1.number_2.value.length != 9) {
		document.getElementById("numberErr_2").innerHTML = "<font color='red'>请输入正确学号</font>";
		return false;
	}
	document.getElementById("numberErr_2").innerHTML = "";
	flag_number_2 = 1;
	return true;
}

function check_number_3() {
	if (form1.number_3.value.length != 9) {
		document.getElementById("numberErr_3").innerHTML = "<font color='red'>请输入正确学号</font>";
		return false;
	}
	document.getElementById("numberErr_3").innerHTML = "";
	flag_number_3 = 1;
	return true;
}


function check_major_1() {
	if (form1.major_1.value == "") {
		document.getElementById("majorErr_1").innerHTML = "<font color='red'>请输入专业</font>";
		return false;
	}
	document.getElementById("majorErr_1").innerHTML = "";
	flag_major_1 = 1;
	return true;
}

function check_major_2() {
	if (form1.major_2.value == "") {
		document.getElementById("majorErr_2").innerHTML = "<font color='red'>请输入专业</font>";
		return false;
	}
	document.getElementById("majorErr_2").innerHTML = "";
	flag_major_2 = 1;
	return true;
}

function check_major_3() {
	if (form1.major_3.value == "") {
		document.getElementById("majorErr_3").innerHTML = "<font color='red'>请输入专业</font>";
		return false;
	}
	document.getElementById("majorErr_3").innerHTML = "";
	flag_major_3 = 1;
	return true;
}


function check_tel_1() {
	if (form1.tel_1.value == "") {
		document.getElementById("telErr_1").innerHTML = "<font color='red'>请输入联系电话！</font>";
		return false;
	}
	if (form1.tel_1.value.length != 11) {
		document.getElementById("telErr_1").innerHTML = "<font color='red'>电话号码位数没有11位</font>";
		return false;
	}
	document.getElementById("telErr_1").innerHTML = "";
	flag_tel_1 = 1;
	return true;
}


function check_tel_2() {
	if (form1.tel_2.value == "") {
		document.getElementById("telErr_2").innerHTML = "<font color='red'>请输入联系电话！</font>";
		return false;
	}
	if (form1.tel_2.value.length != 11) {
		document.getElementById("telErr_2").innerHTML = "<font color='red'>电话号码位数没有11位</font>";
		return false;
	}
	document.getElementById("telErr_2").innerHTML = "";
	flag_tel_2 = 1;
	return true;
}

function check_tel_3() {
	if (form1.tel_3.value == "") {
		document.getElementById("telErr_3").innerHTML = "<font color='red'>请输入联系电话！</font>";
		return false;
	}
	if (form1.tel_3.value.length != 11) {
		document.getElementById("telErr_3").innerHTML = "<font color='red'>电话号码位数没有11位</font>";
		return false;
	}
	document.getElementById("telErr_3").innerHTML = "";
	flag_tel_3 = 1;
	return true;
}

function check()
 {
	
	if (flag_name_1 == 0)  {alert("组长姓名填写有误，请重新填写！"); } 
	   else  if (flag_txm_1 == 0) {alert("组长条形码填写有误，请重新填写！");}	
	        else if (flag_number_1 == 0) {alert("组长学号填写有误，请重新填写！");} 
	           else if (flag_major_1 == 0) {alert("组长专业填写有误，请重新填写！");} 
	              else if (flag_tel_1 == 0) {alert("组长联系电话填写有误，请重新填写！");}
					else if (flag_name_2 == 0) {alert("组员1姓名填写有误，请重新填写！");} 
					  else if (flag_txm_2 == 0) {alert("组员1条形码填写有误，请重新填写！");}	
					    else if (flag_number_2 == 0) {alert("组员1学号填写有误，请重新填写！");} 
					      else if (flag_major_2 == 0) {alert("组员1专业填写有误，请重新填写！");} 
					         else if (flag_tel_2 == 0) {alert("组员1联系电话填写有误，请重新填写！");}
                                else if (flag_name_3 == 0) {alert("组员2姓名填写有误，请重新填写！");} 
                                   else if (flag_txm_3 == 0) {alert("组员2条形码填写有误，请重新填写！");}
                                     else if (flag_number_3 == 0) {alert("组员2学号填写有误，请重新填写！");}
                                       else if (flag_major_3 == 0) {alert("组员2专业填写有误，请重新填写！");} 
                                         else  if (flag_tel_3 == 0) {alert("组员2联系电话填写有误，请重新填写！");}
}


		</script>
	</head>


	<body>






		<form name="form1" action="XiaoNeiSai_bm_deal.jsp" method="post">

			<table width="800" height="683" border="1" align="center"
				background="images/1.png" bordercolor="#9966FF">
				<tr>
					<td colspan="3" height="30" id="x1">
						<center>
							数学建模校内选拔赛报名
						</center>
					</td>
				</tr>
				<tr>
					<td rowspan="8" width="100" align="center" id="x2">
						组长
					</td>

					<td width="" height="30" align="center" id="x2">
						姓名
					</td>
					<td width="">
						<input id="x3" type="text" name="name_1" onblur="check_name_1()">
						<span id="nameErr_1"></span>
					</td>
				</tr>


				<tr>

					<td width="210" height="30" align="center" id="x2">
						学号
					</td>
					<td width="463">
						<input id="x3" type="text" name="number_1"
							onblur="check_number_1()">
						<span id="numberErr_1"></span>
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						条形码
					</td>
					<td width="463">
						<input id="x3" type="text" name="txm_1" onblur="check_txm_1()">
						<span id="txmErr_1"></span>
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						性别
					</td>
					<td width="463" id="x2">
						<input type="radio" value="男" checked name="sex_1">
							男 &nbsp;&nbsp; 
						<input type="radio" value="女" name="sex_1">
							女 
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						年级
					</td>
					<td>
						<select name="class_1" id="x3">
							<option value="2010" selected>
								2010
							</option>
							<option value="2011">
								2011
							</option>
							<option value="2012">
								2012
							</option>
							<option value="2013">
								2013
							</option>
						</select>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						专业
					</td>
					<td width="463">
						<input id="x3" type="text" name="major_1" onblur="check_major_1()">
						<span id="majorErr_1"></span>
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						学院
					</td>
					<td>
						<select name="xueyuan_1" id="x3">
							<option value="数学计算机科学学院" SELECTED>
								数学计算机科学学院
							</option>
							<option value="文学院">
								文学院
							</option>
							<option value="教育科学学院">
								教育科学学院
							</option>
							<option value="经济管理学院">
								经济管理学院
							</option>
							<option value="政法学院">
								政法学院
							</option>
							<option value="社会学院">
								社会学院
							</option>
							<option value="外国语学院">
								外国语学院
							</option>
							<option value="音乐学院">
								音乐学院
							</option>
							<option value="美术学院">
								美术学院
							</option>
							<option value="传媒学院">
								传媒学院
							</option>
							<option value="物理与电子信息学院">
								物理与电子信息学院
							</option>
							<option value="化学与材料科学学院">
								化学与材料科学学院
							</option>
							<option value="国土资源与旅游学院">
								国土资源与旅游学院
							</option>
							<option value="体育学院">
								体育学院
							</option>
							<option value="生命科学学院">
								生命科学学院
							</option>
							<option value="环境科学学院">
								环境科学学院
							</option>

							</script>
					</td>
				</tr>



				<tr>
					<td width="210" height="30" align="center" id="x2">
						联系电话
					</td>
					<td width="463">
						<input id="x3" type="text" name="tel_1" onblur="check_tel_1()">
						<span id="telErr_1"></span>
					</td>

				</tr>



				<tr>
					<td rowspan="8" width="100" align="center" id="x2">
						组员
					</td>

					<td width="" height="30" align="center" id="x2">
						姓名
					</td>
					<td width="">
						<input id="x3" type="text" name="name_2" onblur="check_name_2()">
						<span id="nameErr_2"></span>
					</td>
				</tr>


				<tr>

					<td width="210" height="30" align="center" id="x2">
						学号
					</td>
					<td width="463">
						<input id="x3" type="text" name="number_2"
							onblur="check_number_2()">
						<span id="numberErr_2"></span>
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						条形码
					</td>
					<td width="463">
						<input id="x3" type="text" name="txm_2" onblur="check_txm_2()">
						<span id="txmErr_2"></span>
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						性别
					</td>
					<td width="463" id="x2">
						<input type="radio" value="男" checked name="sex_2">
							男 &nbsp;&nbsp; 
						<input type="radio" value="女" name="sex_2">
							女 
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						年级
					</td>
					<td>
						<select name="class_2" id="x3">
							<option value="2010" selected>
								2010
							</option>
							<option value="2011">
								2011
							</option>
							<option value="2012">
								2012
							</option>
							<option value="2013">
								2013
							</option>
						</select>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						专业
					</td>
					<td width="463">
						<input id="x3" type="text" name="major_2" onblur="check_major_2()">
						<span id="majorErr_2"></span>
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						学院
					</td>
					<td>
						<select name="xueyuan_2" id="x3">
							<option value="数学计算机科学学院" SELECTED>
								数学计算机科学学院
							</option>
							<option value="文学院">
								文学院
							</option>
							<option value="教育科学学院">
								教育科学学院
							</option>
							<option value="经济管理学院">
								经济管理学院
							</option>
							<option value="政法学院">
								政法学院
							</option>
							<option value="社会学院">
								社会学院
							</option>
							<option value="外国语学院">
								外国语学院
							</option>
							<option value="音乐学院">
								音乐学院
							</option>
							<option value="美术学院">
								美术学院
							</option>
							<option value="传媒学院">
								传媒学院
							</option>
							<option value="物理与电子信息学院">
								物理与电子信息学院
							</option>
							<option value="化学与材料科学学院">
								化学与材料科学学院
							</option>
							<option value="国土资源与旅游学院">
								国土资源与旅游学院
							</option>
							<option value="体育学院">
								体育学院
							</option>
							<option value="生命科学学院">
								生命科学学院
							</option>
							<option value="环境科学学院">
								环境科学学院
							</option>

							</script>
					</td>
				</tr>



				<tr>
					<td width="210" height="30" align="center" id="x2">
						联系电话
					</td>
					<td width="463">
						<input id="x3" type="text" name="tel_2" onblur="check_tel_2()">
						<span id="telErr_2"></span>
					</td>

				</tr>



				<tr>
					<td rowspan="8" width="100" align="center" id="x2">
						组员
					</td>

					<td width="" height="30" align="center" id="x2">
						姓名
					</td>
					<td width="">
						<input id="x3" type="text" name="name_3" onblur="check_name_3()">
						<span id="nameErr_3"></span>
					</td>
				</tr>


				<tr>

					<td width="210" height="30" align="center" id="x2">
						学号
					</td>
					<td width="463">
						<input id="x3" type="text" name="number_3"
							onblur="check_number_3()">
						<span id="numberErr_3"></span>
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						条形码
					</td>
					<td width="463">
						<input id="x3" type="text" name="txm_3" onblur="check_txm_3()">
						<span id="txmErr_3"></span>
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						性别
					</td>
					<td width="463" id="x2">
						<input type="radio" value="男" checked name="sex_3">
							男 &nbsp;&nbsp; 
						<input type="radio" value="女" name="sex_3">
							女 
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						年级
					</td>
					<td>
						<select name="class_3" id="x3">
							<option value="2010" selected>
								2010
							</option>
							<option value="2011">
								2011
							</option>
							<option value="2012">
								2012
							</option>
							<option value="2013">
								2013
							</option>
						</select>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						专业
					</td>
					<td width="463">
						<input id="x3" type="text" name="major_3" onblur="check_major_3()">
						<span id="majorErr_3"></span>
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						学院
					</td>
					<td>
						<select name="xueyuan_3" id="x3">
							<option value="数学计算机科学学院" SELECTED>
								数学计算机科学学院
							</option>
							<option value="文学院">
								文学院
							</option>
							<option value="教育科学学院">
								教育科学学院
							</option>
							<option value="经济管理学院">
								经济管理学院
							</option>
							<option value="政法学院">
								政法学院
							</option>
							<option value="社会学院">
								社会学院
							</option>
							<option value="外国语学院">
								外国语学院
							</option>
							<option value="音乐学院">
								音乐学院
							</option>
							<option value="美术学院">
								美术学院
							</option>
							<option value="传媒学院">
								传媒学院
							</option>
							<option value="物理与电子信息学院">
								物理与电子信息学院
							</option>
							<option value="化学与材料科学学院">
								化学与材料科学学院
							</option>
							<option value="国土资源与旅游学院">
								国土资源与旅游学院
							</option>
							<option value="体育学院">
								体育学院
							</option>
							<option value="生命科学学院">
								生命科学学院
							</option>
							<option value="环境科学学院">
								环境科学学院
							</option>

							</script>
					</td>
				</tr>



				<tr>
					<td width="210" height="30" align="center" id="x2">
						联系电话
					</td>
					<td width="463">
						<input id="x3" type="text" name="tel_3" onblur="check_tel_3()">
						<span id="telErr_3"></span>
					</td>

				</tr>















				<td bordercolor="#FFFFFF" colspan="3" height="30"  id="x3">
				<a href="Download.jsp">比赛规则下载</a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="重置" id="x4">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;












					
					<input type="submit" value="提交" id="x4" onclick="check()">
				</td>





				<tr>
					<td colspan="2" height="170" id="x3"></td>
				</tr>

				<tr>
					<td colspan="3" height="20" id="x5" align="center">
						安徽师范大学 数计学院 数学建模协会 
						
						<a href="administrator_yanzheng.jsp">管理员登录</a>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
