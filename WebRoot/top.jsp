<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>javascript:alert('�Բ������ѳ�ʱ��δ��½,����IE�����´򿪵�½��');window.close();</script>");
	out.close();
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>�ޱ����ĵ�</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script type="text/javascript">
$(function(){	
	//���������л�
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>


<meta http-equiv="Content-Type" content="text/html; charset=gb2312" /></head>

<body style="background:url(images/topbg.gif) repeat-x;">

    <div class="topleft">
    <div style="font-family:����; color:#FFFFFF;WIDTH: 100%; FONT-WEIGHT: bold; font-size:24px; margin-top:20px;">
            <div align="center">���ѧԺʧ��������</div>
        </div>
    </div>
        
    <ul class="nav">
    <li><a href="sy.jsp" target="rightFrame" class="selected"><img src="images/icon01.png" /><h2>����̨</h2></a></li>
    <li><a href="yhzhgl.jsp" target="rightFrame"><img src="images/icon02.png" /><h2>ϵͳ�û�����</h2></a></li>
	<%
	if(request.getSession().getAttribute("cx").equals("��������Ա") || request.getSession().getAttribute("cx").equals("��ͨ����Ա"))
	{
	%>
	<li><a href="mod.jsp"  target="rightFrame"><img src="images/icon03.png"/><h2>�޸�����</h2></a></li>
	<%
	}
	
	else
	{
	%>
	<li><a href="mod2.jsp"  target="rightFrame"><img src="images/icon03.png"/><h2>�޸�����</h2></a></li>
	<%
	}
	%>
    
    
    <li><a href="databack.jsp"  target="rightFrame"><img src="images/icon06.png" title="ϵͳ����" /><h2>���ݱ���</h2></a></li>
	<li><a href="logout.jsp" target="_parent"><img src="images/icon05.png" title="�ļ�����" /><h2>�˳�ϵͳ</h2></a></li>
    </ul>
            
    <div class="topright">    
    <ul>
    <li><span><img src="images/help.png" title="����"  class="helpimg"/></span><a onclick="javascript:alert('��Ȩ������Լ�д����ɣ�лл������');" style="cursor:pointer">����</a></li>
    <li><a href="index.jsp" target="_parent">������ҳ</a></li>
    <li><a href="logout.jsp" target="_parent">�˳�</a></li>
    </ul>
     
    <div class="user">
    <span><%=request.getSession().getAttribute("username")%> [<%=request.getSession().getAttribute("cx")%>]</span>
   
    </div>    
    
    </div>

</body>
</html>
