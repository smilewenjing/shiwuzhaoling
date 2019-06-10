<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>失物登记详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"shiwudengji");
     %>
  失物登记详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>物品编号：</td><td width='39%'><%=m.get("wupinbianhao")%></td>
<td width='11%'>物品名称：</td><td width='39%'><%=m.get("wupinmingcheng")%></td></tr><tr>
<td width='11%'>时间：</td><td width='39%'><%=m.get("shijian")%></td>
<td width='11%'>地点：</td><td width='39%'><%=m.get("didian")%></td></tr><tr>
<td width='11%'>接收人：</td><td width='39%'><%=m.get("jieshouren")%></td>
<td width='11%'>发布人：</td>
<td width='39%'><%=m.get("faburen")%></td></tr><tr>
<td width='11%'>管理员回复：</td>
<td colspan="3"><%=m.get("guanliyuanhuifu")%></td>
</tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
  </table>

  </body>
</html>


