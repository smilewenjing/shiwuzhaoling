<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>失物登记</title>
	<!--bixanjxiqxi-->
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<!--hxsglxiangdxongjxs-->
  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
//wxfladd
new CommDAO().update(request,response,"shiwudengji",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"shiwudengji"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="shiwudengji_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改失物登记:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>物品编号：</td><td><input name='wupinbianhao' type='text' id='wupinbianhao' value='<%= mmm.get("wupinbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>物品名称：</td><td><input name='wupinmingcheng' type='text' id='wupinmingcheng' value='<%= mmm.get("wupinmingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>时间：</td><td><input name='shijian' type='text' id='shijian' value='<%= mmm.get("shijian")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>     <tr><td>地点：</td><td><input name='didian' type='text' id='didian' size='50' value='<%=mmm.get("didian")%>' style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>接收人：</td><td><input name='jieshouren' type='text' id='jieshouren' value='<%= mmm.get("jieshouren")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr style='display:none'><td>管理员回复：</td><td><textarea name='guanliyuanhuifu' cols='50' rows='5' id='guanliyuanhuifu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("guanliyuanhuifu")%></textarea></td></tr>     <tr><td>发布人：</td><td><input name='faburen' type='text' id='faburen' value='<%= mmm.get("faburen")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


