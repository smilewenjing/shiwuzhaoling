<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=shiwudengji.xls");
%>
<html>
  <head>
    <title>ʧ��Ǽ�</title>
  </head>

  <body >
  <p>����ʧ��Ǽ��б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>��Ʒ���</td>    <td bgcolor='#CCFFFF'>��Ʒ����</td>    <td bgcolor='#CCFFFF' width='65' align='center'>ʱ��</td>    <td bgcolor='#CCFFFF'>�ص�</td>    <td bgcolor='#CCFFFF'>������</td>        <td bgcolor='#CCFFFF'>������</td>    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "shiwudengji_list.jsp?1=1"; 
    String sql =  "select * from shiwudengji where 1=1";
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
    <td><%=map.get("wupinbianhao") %></td>    <td><%=map.get("wupinmingcheng") %></td>    <td><%=map.get("shijian") %></td>    <td><%=map.get("didian") %></td>    <td><%=map.get("jieshouren") %></td>        <td><%=map.get("faburen") %></td>    <td width='80' align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=shiwudengji" onclick="return confirm('��ȷ��Ҫִ�д˲�����')"><%=map.get("issh")%></a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

