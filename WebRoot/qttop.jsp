<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



	<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("用户名或密码错误");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("验证码错误");
 <%}%>
 
 popheight = 39;
 </script>
 



<table id="__01" width="1000" height="185" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="1000" height="146" background="qtimages/1_01_01.gif"><table width="72%" height="51" border="0" align="left">
              <tr>
                <td><div style="font-family:宋体; color:#FFFFFF;  WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
                    <div align="center" class="STYLE5">红河学院失物招领网</div>
                </div></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td width="1000" height="39" background="qtimages/1_01_02.gif"><table width="88%" border="0" align="center" cellpadding="0" cellspacing="0" class="red">
              <tr>
                <td align="center"><strong><a href="index.jsp"><font  class="STYLE1">首页</font></a></strong></td>
                <td align="center"><strong><a href="news.jsp?lb=站内新闻"><font  class="STYLE1">站内新闻</font></a></strong></td>
                <td align="center"><strong><a href="dx_detail.jsp?lb=系统简介"><font  class="STYLE1">系统简介</font></a></strong></td>
                <td align="center"><strong><a href="news.jsp?lb=寻物启事"><font  class="STYLE1">寻物启事</font></a></strong></td>
                <td align="center"><strong><a href="news.jsp?lb=失物招领"><font  class="STYLE1">失物招领</font></a></strong></td>
                <td align="center"><strong><a href="lyblist.jsp"><font  class="STYLE1">在线留言</font></a></strong></td>
                <td align="center"><strong><a href="userreg.jsp"><font  class="STYLE1">用户注册</font></a></strong></td>
                <td align="center"><strong><a href="login.jsp"><font  class="STYLE1">后台</font></a></strong></td>
              </tr>
            </table></td>
          </tr>
        </table>