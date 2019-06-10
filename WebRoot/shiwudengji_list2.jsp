<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>失物登记</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有失物登记列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  物品名称：<input name="wupinmingcheng" type="text" id="wupinmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  时间：<input name="shijian1" type="text" id="shijian1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="shijian2" type="text" id="shijian2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />  地点：<input name="didian" type="text" id="didian" style='border:solid 1px #000000; color:#666666' size="12" />  接收人：<input name="jieshouren" type="text" id="jieshouren" style='border:solid 1px #000000; color:#666666' size="12" />  发布人：<input name="faburen" type="text" id="faburen" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>物品编号</td>    <td bgcolor='#CCFFFF'>物品名称</td>    <td bgcolor='#CCFFFF' width='65' align='center'>时间</td>    <td bgcolor='#CCFFFF'>地点</td>    <td bgcolor='#CCFFFF'>接收人</td>    <td bgcolor='#CCFFFF'>发布人</td>    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
 <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"shiwudengji"); 
    String url = "shiwudengji_list2.jsp?1=1"; 
    String sql =  "select * from shiwudengji where faburen='"+request.getSession().getAttribute("username")+"' ";
	if(request.getParameter("wupinmingcheng")=="" ||request.getParameter("wupinmingcheng")==null ){}else{sql=sql+" and wupinmingcheng like '%"+request.getParameter("wupinmingcheng")+"%'";}if (request.getParameter("shijian1")==""  ||request.getParameter("shijian1")==null ) {}else{sql=sql+" and shijian >= '"+request.getParameter("shijian1")+"'";}if (request.getParameter("shijian2")==""  ||request.getParameter("shijian2")==null ) {}else {sql=sql+" and shijian <= '"+request.getParameter("shijian2")+"'";}if(request.getParameter("didian")=="" ||request.getParameter("didian")==null ){}else{sql=sql+" and didian like '%"+request.getParameter("didian")+"%'";}if(request.getParameter("jieshouren")=="" ||request.getParameter("jieshouren")==null ){}else{sql=sql+" and jieshouren like '%"+request.getParameter("jieshouren")+"%'";}if(request.getParameter("faburen")=="" ||request.getParameter("faburen")==null ){}else{sql=sql+" and faburen like '%"+request.getParameter("faburen")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("wupinbianhao") %></td> <td><%=map.get("wupinmingcheng") %></td> <td><%=map.get("shijian") %></td> <td><%=map.get("didian") %></td> <td><%=map.get("jieshouren") %></td>  <td><%=map.get("faburen") %></td> <td width='80' align='center'><%=map.get("issh")%></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="shiwudengji_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="shiwudengji_list2.jsp?scid=<%=map.get("id") %>" onclick="return confirm('真的要删除？')">删除</a> <a href="shiwudengji_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

