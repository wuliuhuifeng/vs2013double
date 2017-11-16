<%@ page language="C#" autoeventwireup="true" inherits="admin_left, App_Web_x1rzjssu" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>网站后台管理</title>
<style type=text/css>
body  { background:#39867B; margin:0px; font:9pt 宋体; }
table  { border:0px; }
td  { font:normal 12px 宋体; }
img  { vertical-align:bottom; border:0px; }
a  { font:normal 12px 宋体; color:#000000; text-decoration:none; }
a:hover  { color:#cc0000;text-decoration:underline; }
.sec_menu  { border-left:1px solid white; border-right:1px solid white; border-bottom:1px solid white; overflow:hidden; background:#C6EBDE; }
.menu_title  { }
.menu_title span  { position:relative; top:2px; left:8px; color:#39867B; font-weight:bold; }
.menu_title2  { }
.menu_title2 span  { position:relative; top:2px; left:8px; color:#cc0000; font-weight:bold; }
</style>
<SCRIPT language=javascript1.2>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}
</SCRIPT>
</head>
<BODY leftmargin="0" topmargin="0" marginheight="0" marginwidth="0">
<table width=100% cellpadding=0 cellspacing=0 border=0 align=left>
    <tr><td valign=top>
<table width=158 border="0" align=center cellpadding=0 cellspacing=0>
  <tr>
    <td height=42 valign=bottom>
	  <img src="images/title.gif" width=158 height=38>
    </td>
  </tr>
</table>
<table cellpadding=0 cellspacing=0 width=158 align=center>
  <tr>
        <td height=25 style="background-image:url(images/title_bg_quit.gif);"> 
          <span><a href="default.aspx"><b>管理首页</b></a> | <a href="logout.aspx" target=_top><b>退出</b></a></span> 
        </td>
  </tr>
  <tr>
    <td style="display:" id='submenu0'>
<div class=sec_menu style="width:158">
<table cellpadding=0 cellspacing=0 align=center width=130>
<tr><td height=20>用户名：<%=Session["username"]!=null?Session["username"].ToString():"" %></td></tr>
<tr><td height=20>权&nbsp;&nbsp;限：超级用户</td></tr>
</table>
</div>
<div  style="width:158">
<table cellpadding=0 cellspacing=0 align=center width=130>
<tr><td height=6></td></tr>
</table>
</div>
	</td>
  </tr>
</table>

<table cellpadding=0 cellspacing=0 width=158 align=center>
  <tr>
        <td height=25 class=menu_title onmouseover=this.className='menu_title2'; onmouseout=this.className='menu_title'; background="images/Admin_left_1.gif" id=menuTitle1 onclick="showsubmenu(1)" style="cursor:hand;"> 
          <span>常规管理</span> </td>
  </tr>
  <tr>
    <td style="display:" id='submenu1'>
<div class=sec_menu style="width:158">
<table cellpadding=0 cellspacing=0 align=center width=130>
<tr><td height=20><a href=webconfig.aspx target=main>网站配置管理</a></td></tr>
<tr><td height=20><a href=InfoCateList.aspx target=main>文章分类管理</a></td></tr>
<tr><td height=20><a href=ContentManage.aspx target=main>网站内容管理</a></td></tr>
<tr><td height=20><a href='/admin/' target='self'>会员平台管理</a></td></tr>
<%--<tr><td height=20><a href=InfoList.aspx target=main>文章管理</a></td></tr>--%>
<%--<tr><td height=20><a href=ModuleList.aspx target=main>功能模块管理</a></td></tr>--%>
</table>
</div>
<div  style="width:158">
<table cellpadding=0 cellspacing=0 align=center width=130>
<tr><td height=6></td></tr>
</table>
</div>
	</td>
  </tr>
</table>
<table cellpadding=0 cellspacing=0 width=158 align=center>
  <tr>
        <td height=25 class=menu_title onmouseover=this.className='menu_title2'; onmouseout=this.className='menu_title'; background="images/Admin_left_9.gif" id=menuTitle9> 
          <span>版权信息</span> </td>
  </tr>
  <tr>
    <td>
<div class=sec_menu style="width:158">
<table cellpadding=0 cellspacing=0 align=center width=130>
<tr><td height=20>
设计制作：&nbsp;乾剑科技<BR>
联系QQ：&nbsp;1286054197<BR>

</td></tr>
</table>
	  </div>
	</td>
  </tr>
</table>
</body>
</html>