<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>CSS�����˵�-codeFans.net</title>
<meta http-equiv="Content-Type" mrc="text/html; charset=gb2312" />
<script type="text/javascript">
startList = function() {
	if (document.all&&document.getElementById) {
		navRoot = document.getElementById("nav");
		for (i=0; i<navRoot.childNodes.length; i++) {
			node = navRoot.childNodes[i];
			if (node.nodeName=="LI") {
				node.onmouseover=function() {
					this.className+=" over";
				}
				node.onmouseout=function() {
					this.className=this.className.replace(" over", "");
				}
			}
		}
	}
}
window.onload=startList;
</script>
<style type="text/css">
body{
text-align: center;
font-size:15px;
}
#popimg{
WIDTH:930px;
margin:0 auto;
text-align:center;
}
#popimg2{
WIDTH:900px;
margin:0 auto;
text-align:center;
z-index:-1;
}
ul { 
	padding: 0;
	margin: 0;
	list-style: none;
	
}
li {
	position:relative;
	float: left;	
	width: 132px;
		
}
li ul { 
	position:absolute;
	display: none;
	top: 32px;left:0;

	
	
}
li:hover ul, li.over ul {
	display: block;
	
}
ul li a{
	display:block;
	font-size:14px;
	border: 1px solid #ccc;
	padding:5px;
	margin-right:1px;
	text-decoration: none;
	color: #3366CC;background: #999999;
}
ul li a:hover{
	background-color:#f4f4f4;
}
#test{
	clear:both;
	background-color:#999999;
	width:900px;
	height:100px;
	margin:0 auto;
}
.STYLE1 
{
	color: #339933;
	font-size:20px;
	font-weight: bold;
}
</style>
</head>
<body>
<table width="930" align="center" border="1" bordercolor="#33CCFF" height="170">
  <tr>
    <td><table width="930" align="center" border="0" >
        <tr height="30">
          <td colspan="3" width="900" bordercolor="#00CCFF"><img src="photo/logo_2.jpg" width="930" height="170"> </td>
        </tr>
        <tr>
          <td colspan="3" bordercolor="#33FFFF"><div id="popimg">
              <ul id="nav">
                <li ><a href="" class="STYLE1">��ҳ</a> </li>
                <li><a href="" class="STYLE1">Э����</a></li>
                <li><a href="" class="STYLE1">��������</a>
                  <ul>
                    <li><a href="/sort/list_11_168_1.shtml">��ϯ��</a></li>
                    <li><a href="/sort/list_11_96_1.shtml">�칫��</a></li>
                    <li><a href="/sort/list_11_202_1.shtml">ѧ�в�</a></li>
                    <li><a href="/sort/list_11_202_1.shtml">�߻���</a></li>
                    <li><a href="/sort/list_11_202_1.shtml">������</a></li>
                    <li><a href="/sort/list_11_202_1.shtml">������</a></li>
                    <li><a href="/sort/list_11_202_1.shtml">��֤��</a></li>
                    <li><a href="/sort/list_11_202_1.shtml">���粿</a></li>
                    <li><a href="/sort/list_11_202_1.shtml">����</a></li>
                  </ul>
                </li>
                <li><a href="" class="STYLE1">��������</a>
                  <ul>
                    <li><a href="/sort/list_8_165_1.shtml">֪ͨ����</a></li>
                    <li><a href="/sort/list_8_162_1.shtml">���Ŷ�̬</a></li>
                    <li><a href="/sort/list_8_160_1.shtml">�����Ƽ�</a></li>
                    <li><a href="/sort/list_8_160_1.shtml">��ģ����</a></li>
                  </ul>
                </li>
                <li><a href="" class="STYLE1">�����</a>
                  <ul>
                    <li><a href="/sort/list_11_203_1.shtml">��ѧ��ģȫ����</a></li>
                    <li><a href="/sort/list_11_83_1.shtml">��ѧ��ģ֪ʶ����</a></li>
                    <li><a href="/sort/list_11_112_1.shtml">Ȥζ��ѧ����</a></li>
                    <li><a href="/sort/list_11_112_1.shtml">������ս��</a></li>
                    <li><a href="/sort/list_11_112_1.shtml">�ߺ���У����</a></li>
                    <li><a href="/sort/list_11_112_1.shtml">�Ҳ�����</a></li>
                    <li><a href="/sort/list_11_112_1.shtml">У��ѡ����</a></li>
                    <li><a href="/sort/list_11_112_1.shtml">��ѧ��ģ������ѵ</a></li>
                  </ul>
                </li>
                <li><a href="" class="STYLE1">��ģ֪ʶ</a></li>
                <li><a href="" class="STYLE1">�ɼ�չʾ</a></li>
              </ul>
            </div></td>
        </tr>
        <tr>
          <td  colspan="3"><marquee scrollamount="4"  >
            <font color="#330000" size="4" face="����"> <span unselectable="on">
            <%
							if (session.getAttribute("name") != null) {
						%>
            �װ��� <%=session.getAttribute("name")%> ��Ա��
            <%
							}
						%>
            ���ã���ӭ����������ѧԺ��ѧ��ģЭ����վ����������վǶ���ض���JavaScript������������������ģʽ�������վ.�� </font></span>
            </marquee>
            <font color="#330000" size="4" face="����">
            <div id="bgclock"  align="right"  style="border:thin"></div>
            </font> </td>
        </tr>
        <tr>
          <td width="150" height="35" bordercolordark="#33FFFF"><img src="photo/tz_6.jpg"  ></img> </td>
          <td width="500" height="35" bordercolordark="#33FFFF"><img src="photo/xw_2.jpg"  style="width:500px;height:35px;"></img> </td>
          <td width="178" height="35"><img src="photo/zt.jpg"  ></img> </td>
 
  </tr>
  
  
  <tr height="150" >
				<td bordercolordark="#33FFFF">XXX</td>
				<td bordercolordark="#33FFFF">XXX</td>
				<td bordercolordark="#33FFFF">XXX</td>
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
								
								</td>
							</tr>

						</table>
					</form>
				</td>
	<td bordercolordark="#33FFFF">XXX</td>
				<td bordercolordark="#33FFFF">XXX</td>	
	
	</tr>	
			
  
  <tr>
    <td colspan="4" height="200"><marquee direction="right" scrollamount="2" onmouseover="this.stop()" onmouseout="this.start()">
      <span unselectable="on" > <a  href="picture/1.jpg"  class="preview" > <img src="picture/1.jpg" alt="gallery thumbnail" style=" width: 175px; height:160px;"></img></a> <a  href="picture/2.jpg"  class="preview" > <img src="picture/2.jpg" alt="gallery thumbnail" style="width: 175px; height: 160px;"></img></a> <a  href="picture/3.jpg"  class="preview" > <img src="picture/3.jpg" alt="gallery thumbnail" style="width: 175px; height: 160px;"></img></a> <a  href="picture/4.jpg"  class="preview" > <img src="picture/4.jpg" alt="gallery thumbnail" style="width: 175px; height: 160px;"></img></a> <a  href="picture/5.jpg"  class="preview" title="Lake and a mountain"> <img src="picture/5.jpg" alt="gallery thumbnail" style="width: 175px; height:160px;"></img> </span>
      </marquee>
    </td>
  <tr >
  <tr >
    <td colspan="4"><center>
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      </center></td>
  </tr>
  <tr style="background-image:url(photo/yj_3.jpg)" height="70" width="930">
    <td colspan="4" align="center" ><font color="#333333" face="����" size="2"> Copyright 2012-2013 ����ʦ����ѧ ����ѧԺ ��ѧ��ģЭ�� ��ƹ�&nbsp;&nbsp;&nbsp; <a class="a1" href="administrator_yanzheng.jsp">����Ա��½</a></font> 

	</td>
  </tr>
</table>


       </tr>
      </table></td>
</body>
</html>
