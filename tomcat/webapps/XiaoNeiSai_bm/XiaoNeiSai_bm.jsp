<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>��ѧ��ģЭ���»�Աע��</title>

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
		document.getElementById("nameErr_1").innerHTML = "<font color='red'>��������ȷ�������������ﲻ�ܺ��пո�</font>";
		return false;
	}
	if (form1.name_1.value == "") {
		document.getElementById("nameErr_1").innerHTML = "<font color='red'>��������������������Ϊ�գ�</font>";
		return false;
	}
	document.getElementById("nameErr_1").innerHTML = "";
	flag_name_1 = 1;
	return true;
}



function check_name_2() {
	if (isWhiteWpace(form1.name_2.value)) {
		document.getElementById("nameErr_2").innerHTML = "<font color='red'>��������ȷ�������������ﲻ�ܺ��пո�</font>";
		return false;
	}
	if (form1.name_2.value == "") {
		document.getElementById("nameErr_2").innerHTML = "<font color='red'>��������������������Ϊ�գ�</font>";
		return false;
	}
	document.getElementById("nameErr_2").innerHTML = "";
	flag_name_2 = 1;
	return true;
}


function check_name_3() {
	if (isWhiteWpace(form1.name_3.value)) {
		document.getElementById("nameErr_3").innerHTML = "<font color='red'>��������ȷ�������������ﲻ�ܺ��пո�</font>";
		return false;
	}
	if (form1.name_3.value == "") {
		document.getElementById("nameErr_3").innerHTML = "<font color='red'>��������������������Ϊ�գ�</font>";
		return false;
	}
	document.getElementById("nameErr_3").innerHTML = "";
	flag_name_3 = 1;
	return true;
}





function check_txm_1() {
	if (form1.txm_1.value == "") {
		document.getElementById("txmErr_1").innerHTML = "<font color='red'>������������</font>";
		return false;
	}
	document.getElementById("txmErr_1").innerHTML = "";
	flag_txm_1 = 1;
	return true;
}


function check_txm_2() {
	if (form1.txm_2.value == "") {
		document.getElementById("txmErr_2").innerHTML = "<font color='red'>������������</font>";
		return false;
	}
	document.getElementById("txmErr_2").innerHTML = "";
	flag_txm_2 = 1;
	return true;
}

function check_txm_3() {
	if (form1.txm_3.value == "") {
		document.getElementById("txmErr_3").innerHTML = "<font color='red'>������������</font>";
		return false;
	}
	document.getElementById("txmErr_3").innerHTML = "";
	flag_txm_3 = 1;
	return true;
}


function check_number_1() {
	if (form1.number_1.value.length != 9) {
		document.getElementById("numberErr_1").innerHTML = "<font color='red'>��������ȷѧ��</font>";
		return false;
	}
	document.getElementById("numberErr_1").innerHTML = "";
	flag_number_1 = 1;
	return true;
}

function check_number_2() {
	if (form1.number_2.value.length != 9) {
		document.getElementById("numberErr_2").innerHTML = "<font color='red'>��������ȷѧ��</font>";
		return false;
	}
	document.getElementById("numberErr_2").innerHTML = "";
	flag_number_2 = 1;
	return true;
}

function check_number_3() {
	if (form1.number_3.value.length != 9) {
		document.getElementById("numberErr_3").innerHTML = "<font color='red'>��������ȷѧ��</font>";
		return false;
	}
	document.getElementById("numberErr_3").innerHTML = "";
	flag_number_3 = 1;
	return true;
}


function check_major_1() {
	if (form1.major_1.value == "") {
		document.getElementById("majorErr_1").innerHTML = "<font color='red'>������רҵ</font>";
		return false;
	}
	document.getElementById("majorErr_1").innerHTML = "";
	flag_major_1 = 1;
	return true;
}

function check_major_2() {
	if (form1.major_2.value == "") {
		document.getElementById("majorErr_2").innerHTML = "<font color='red'>������רҵ</font>";
		return false;
	}
	document.getElementById("majorErr_2").innerHTML = "";
	flag_major_2 = 1;
	return true;
}

function check_major_3() {
	if (form1.major_3.value == "") {
		document.getElementById("majorErr_3").innerHTML = "<font color='red'>������רҵ</font>";
		return false;
	}
	document.getElementById("majorErr_3").innerHTML = "";
	flag_major_3 = 1;
	return true;
}


function check_tel_1() {
	if (form1.tel_1.value == "") {
		document.getElementById("telErr_1").innerHTML = "<font color='red'>��������ϵ�绰��</font>";
		return false;
	}
	if (form1.tel_1.value.length != 11) {
		document.getElementById("telErr_1").innerHTML = "<font color='red'>�绰����λ��û��11λ</font>";
		return false;
	}
	document.getElementById("telErr_1").innerHTML = "";
	flag_tel_1 = 1;
	return true;
}


function check_tel_2() {
	if (form1.tel_2.value == "") {
		document.getElementById("telErr_2").innerHTML = "<font color='red'>��������ϵ�绰��</font>";
		return false;
	}
	if (form1.tel_2.value.length != 11) {
		document.getElementById("telErr_2").innerHTML = "<font color='red'>�绰����λ��û��11λ</font>";
		return false;
	}
	document.getElementById("telErr_2").innerHTML = "";
	flag_tel_2 = 1;
	return true;
}

function check_tel_3() {
	if (form1.tel_3.value == "") {
		document.getElementById("telErr_3").innerHTML = "<font color='red'>��������ϵ�绰��</font>";
		return false;
	}
	if (form1.tel_3.value.length != 11) {
		document.getElementById("telErr_3").innerHTML = "<font color='red'>�绰����λ��û��11λ</font>";
		return false;
	}
	document.getElementById("telErr_3").innerHTML = "";
	flag_tel_3 = 1;
	return true;
}

function check()
 {
	
	if (flag_name_1 == 0)  {alert("�鳤������д������������д��"); } 
	   else  if (flag_txm_1 == 0) {alert("�鳤��������д������������д��");}	
	        else if (flag_number_1 == 0) {alert("�鳤ѧ����д������������д��");} 
	           else if (flag_major_1 == 0) {alert("�鳤רҵ��д������������д��");} 
	              else if (flag_tel_1 == 0) {alert("�鳤��ϵ�绰��д������������д��");}
					else if (flag_name_2 == 0) {alert("��Ա1������д������������д��");} 
					  else if (flag_txm_2 == 0) {alert("��Ա1��������д������������д��");}	
					    else if (flag_number_2 == 0) {alert("��Ա1ѧ����д������������д��");} 
					      else if (flag_major_2 == 0) {alert("��Ա1רҵ��д������������д��");} 
					         else if (flag_tel_2 == 0) {alert("��Ա1��ϵ�绰��д������������д��");}
                                else if (flag_name_3 == 0) {alert("��Ա2������д������������д��");} 
                                   else if (flag_txm_3 == 0) {alert("��Ա2��������д������������д��");}
                                     else if (flag_number_3 == 0) {alert("��Ա2ѧ����д������������д��");}
                                       else if (flag_major_3 == 0) {alert("��Ա2רҵ��д������������д��");} 
                                         else  if (flag_tel_3 == 0) {alert("��Ա2��ϵ�绰��д������������д��");}
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
							��ѧ��ģУ��ѡ��������
						</center>
					</td>
				</tr>
				<tr>
					<td rowspan="8" width="100" align="center" id="x2">
						�鳤
					</td>

					<td width="" height="30" align="center" id="x2">
						����
					</td>
					<td width="">
						<input id="x3" type="text" name="name_1" onblur="check_name_1()">
						<span id="nameErr_1"></span>
					</td>
				</tr>


				<tr>

					<td width="210" height="30" align="center" id="x2">
						ѧ��
					</td>
					<td width="463">
						<input id="x3" type="text" name="number_1"
							onblur="check_number_1()">
						<span id="numberErr_1"></span>
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						������
					</td>
					<td width="463">
						<input id="x3" type="text" name="txm_1" onblur="check_txm_1()">
						<span id="txmErr_1"></span>
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						�Ա�
					</td>
					<td width="463" id="x2">
						<input type="radio" value="��" checked name="sex_1">
							�� &nbsp;&nbsp; 
						<input type="radio" value="Ů" name="sex_1">
							Ů 
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						�꼶
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
						רҵ
					</td>
					<td width="463">
						<input id="x3" type="text" name="major_1" onblur="check_major_1()">
						<span id="majorErr_1"></span>
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						ѧԺ
					</td>
					<td>
						<select name="xueyuan_1" id="x3">
							<option value="��ѧ�������ѧѧԺ" SELECTED>
								��ѧ�������ѧѧԺ
							</option>
							<option value="��ѧԺ">
								��ѧԺ
							</option>
							<option value="������ѧѧԺ">
								������ѧѧԺ
							</option>
							<option value="���ù���ѧԺ">
								���ù���ѧԺ
							</option>
							<option value="����ѧԺ">
								����ѧԺ
							</option>
							<option value="���ѧԺ">
								���ѧԺ
							</option>
							<option value="�����ѧԺ">
								�����ѧԺ
							</option>
							<option value="����ѧԺ">
								����ѧԺ
							</option>
							<option value="����ѧԺ">
								����ѧԺ
							</option>
							<option value="��ýѧԺ">
								��ýѧԺ
							</option>
							<option value="�����������ϢѧԺ">
								�����������ϢѧԺ
							</option>
							<option value="��ѧ����Ͽ�ѧѧԺ">
								��ѧ����Ͽ�ѧѧԺ
							</option>
							<option value="������Դ������ѧԺ">
								������Դ������ѧԺ
							</option>
							<option value="����ѧԺ">
								����ѧԺ
							</option>
							<option value="������ѧѧԺ">
								������ѧѧԺ
							</option>
							<option value="������ѧѧԺ">
								������ѧѧԺ
							</option>

							</script>
					</td>
				</tr>



				<tr>
					<td width="210" height="30" align="center" id="x2">
						��ϵ�绰
					</td>
					<td width="463">
						<input id="x3" type="text" name="tel_1" onblur="check_tel_1()">
						<span id="telErr_1"></span>
					</td>

				</tr>



				<tr>
					<td rowspan="8" width="100" align="center" id="x2">
						��Ա
					</td>

					<td width="" height="30" align="center" id="x2">
						����
					</td>
					<td width="">
						<input id="x3" type="text" name="name_2" onblur="check_name_2()">
						<span id="nameErr_2"></span>
					</td>
				</tr>


				<tr>

					<td width="210" height="30" align="center" id="x2">
						ѧ��
					</td>
					<td width="463">
						<input id="x3" type="text" name="number_2"
							onblur="check_number_2()">
						<span id="numberErr_2"></span>
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						������
					</td>
					<td width="463">
						<input id="x3" type="text" name="txm_2" onblur="check_txm_2()">
						<span id="txmErr_2"></span>
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						�Ա�
					</td>
					<td width="463" id="x2">
						<input type="radio" value="��" checked name="sex_2">
							�� &nbsp;&nbsp; 
						<input type="radio" value="Ů" name="sex_2">
							Ů 
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						�꼶
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
						רҵ
					</td>
					<td width="463">
						<input id="x3" type="text" name="major_2" onblur="check_major_2()">
						<span id="majorErr_2"></span>
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						ѧԺ
					</td>
					<td>
						<select name="xueyuan_2" id="x3">
							<option value="��ѧ�������ѧѧԺ" SELECTED>
								��ѧ�������ѧѧԺ
							</option>
							<option value="��ѧԺ">
								��ѧԺ
							</option>
							<option value="������ѧѧԺ">
								������ѧѧԺ
							</option>
							<option value="���ù���ѧԺ">
								���ù���ѧԺ
							</option>
							<option value="����ѧԺ">
								����ѧԺ
							</option>
							<option value="���ѧԺ">
								���ѧԺ
							</option>
							<option value="�����ѧԺ">
								�����ѧԺ
							</option>
							<option value="����ѧԺ">
								����ѧԺ
							</option>
							<option value="����ѧԺ">
								����ѧԺ
							</option>
							<option value="��ýѧԺ">
								��ýѧԺ
							</option>
							<option value="�����������ϢѧԺ">
								�����������ϢѧԺ
							</option>
							<option value="��ѧ����Ͽ�ѧѧԺ">
								��ѧ����Ͽ�ѧѧԺ
							</option>
							<option value="������Դ������ѧԺ">
								������Դ������ѧԺ
							</option>
							<option value="����ѧԺ">
								����ѧԺ
							</option>
							<option value="������ѧѧԺ">
								������ѧѧԺ
							</option>
							<option value="������ѧѧԺ">
								������ѧѧԺ
							</option>

							</script>
					</td>
				</tr>



				<tr>
					<td width="210" height="30" align="center" id="x2">
						��ϵ�绰
					</td>
					<td width="463">
						<input id="x3" type="text" name="tel_2" onblur="check_tel_2()">
						<span id="telErr_2"></span>
					</td>

				</tr>



				<tr>
					<td rowspan="8" width="100" align="center" id="x2">
						��Ա
					</td>

					<td width="" height="30" align="center" id="x2">
						����
					</td>
					<td width="">
						<input id="x3" type="text" name="name_3" onblur="check_name_3()">
						<span id="nameErr_3"></span>
					</td>
				</tr>


				<tr>

					<td width="210" height="30" align="center" id="x2">
						ѧ��
					</td>
					<td width="463">
						<input id="x3" type="text" name="number_3"
							onblur="check_number_3()">
						<span id="numberErr_3"></span>
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						������
					</td>
					<td width="463">
						<input id="x3" type="text" name="txm_3" onblur="check_txm_3()">
						<span id="txmErr_3"></span>
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						�Ա�
					</td>
					<td width="463" id="x2">
						<input type="radio" value="��" checked name="sex_3">
							�� &nbsp;&nbsp; 
						<input type="radio" value="Ů" name="sex_3">
							Ů 
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						�꼶
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
						רҵ
					</td>
					<td width="463">
						<input id="x3" type="text" name="major_3" onblur="check_major_3()">
						<span id="majorErr_3"></span>
					</td>
				</tr>

				<tr>
					<td width="210" height="30" align="center" id="x2">
						ѧԺ
					</td>
					<td>
						<select name="xueyuan_3" id="x3">
							<option value="��ѧ�������ѧѧԺ" SELECTED>
								��ѧ�������ѧѧԺ
							</option>
							<option value="��ѧԺ">
								��ѧԺ
							</option>
							<option value="������ѧѧԺ">
								������ѧѧԺ
							</option>
							<option value="���ù���ѧԺ">
								���ù���ѧԺ
							</option>
							<option value="����ѧԺ">
								����ѧԺ
							</option>
							<option value="���ѧԺ">
								���ѧԺ
							</option>
							<option value="�����ѧԺ">
								�����ѧԺ
							</option>
							<option value="����ѧԺ">
								����ѧԺ
							</option>
							<option value="����ѧԺ">
								����ѧԺ
							</option>
							<option value="��ýѧԺ">
								��ýѧԺ
							</option>
							<option value="�����������ϢѧԺ">
								�����������ϢѧԺ
							</option>
							<option value="��ѧ����Ͽ�ѧѧԺ">
								��ѧ����Ͽ�ѧѧԺ
							</option>
							<option value="������Դ������ѧԺ">
								������Դ������ѧԺ
							</option>
							<option value="����ѧԺ">
								����ѧԺ
							</option>
							<option value="������ѧѧԺ">
								������ѧѧԺ
							</option>
							<option value="������ѧѧԺ">
								������ѧѧԺ
							</option>

							</script>
					</td>
				</tr>



				<tr>
					<td width="210" height="30" align="center" id="x2">
						��ϵ�绰
					</td>
					<td width="463">
						<input id="x3" type="text" name="tel_3" onblur="check_tel_3()">
						<span id="telErr_3"></span>
					</td>

				</tr>















				<td bordercolor="#FFFFFF" colspan="3" height="30"  id="x3">
				<a href="Download.jsp">������������</a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="����" id="x4">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;












					
					<input type="submit" value="�ύ" id="x4" onclick="check()">
				</td>





				<tr>
					<td colspan="2" height="170" id="x3"></td>
				</tr>

				<tr>
					<td colspan="3" height="20" id="x5" align="center">
						����ʦ����ѧ ����ѧԺ ��ѧ��ģЭ�� 
						
						<a href="administrator_yanzheng.jsp">����Ա��¼</a>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
