<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>�ޱ����ĵ�</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//�����л�
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>

<script type="text/javascript">
function imgshow(){document.getElementById("tmms").style.display="block";}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" /></head>

<body style="background:#f0f9fd;" font-size:9pt;>
	<div class="lefttop"><span></span>ϵͳ���ܲ˵�</div>
    
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <span><img src="images/leftico01.png" /></span>�������Ϲ���
    </div>
    	<ul class="menuson">
        <li><cite></cite><a href="yonghuzhuce_updt2.jsp" target="rightFrame">�������Ϲ���</a><i></i></li>
       
        </ul>    
    </dd>
        
    <dd>
    <div class="title">
    <span><img src="images/leftico02.png" /></span>���¹���
    </div>
    <ul class="menuson">
        <li class="active"><cite></cite><a href="xinwentongzhi_add2.jsp" target="rightFrame">�������</a><i></i></li>
        <li><cite></cite><a href="xinwentongzhi_list2.jsp" target="rightFrame">�ҵ�����</a><i></i></li>
        </ul>     
    </dd> 
	
	
	 <dd>
    <div class="title">
    <span><img src="images/leftico04.png" /></span>ʧ��Ǽ�
    </div>
    <ul class="menuson">
        <li><cite></cite><a href="shiwudengji_add.jsp" target="rightFrame">ʧ��Ǽ�</a><i></i></li>
        <li><cite></cite><a href="shiwudengji_list2.jsp" target="rightFrame">�ҵĹ黹��Ʒ</a><i></i></li>
        </ul>     
    </dd> 
	
	 <dd>
    <div class="title">
    <span><img src="images/leftico04.png" /></span>����Ѱ��
    </div>
    <ul class="menuson">
        <li><cite></cite><a href="shiwudengji_list_cx.jsp" target="rightFrame">��ʧ��Ʒ����</a><i></i></li>
        </ul>     
    </dd> 
	
	<dd>
    <div class="title">
    <span><img src="images/leftico01.png" /></span>��ϵ����Ա
    </div>
    <ul class="menuson">
        <li><cite></cite><a href="javascript:imgshow();" target="rightFrame">��ϵ����Ա</a><i></i></li>
        </ul>     
    </dd> 
    
  <!--  
     <dd><div class="title"><span><img src="images/leftico03.png" /></span>���Թ���</div>
    <ul class="menuson">
        <li><cite></cite><a href="liuyanban_list.jsp" target="rightFrame">���Թ���</a><i></i></li>
        
    </ul>    
    </dd>  
    
    
    <dd><div class="title"><span><img src="images/leftico04.png" /></span>ϵͳ����</div>
    <ul class="menuson">
        <li><cite></cite><a href="databack.jsp" target="rightFrame">���ݱ���</a><i></i></li>
        <li><cite></cite><a href="youqinglianjie_add.jsp" target="rightFrame">�����������</a><i></i></li>
        <li><cite></cite><a href="youqinglianjie_list.jsp" target="rightFrame">�������Ӳ�ѯ</a><i></i></li>
        <li><cite></cite><a href="dx.jsp?lb=ϵͳ��s��" target="rightFrame">ϵͳ�������</a><i></i></li>
		<li><cite></cite><a href="dx.jsp?lb=ϵͳ����" target="rightFrame">ϵͳ��������</a><i></i></li>
    </ul>
    
    </dd>   -->
 
<p id="tmms" style="display:none;"><img name="tm" src="images/ewm.jpg" width="185" height="185" alt="" /></p>
    </dl>
    
</body>
</html>
