<%@ page language="C#" autoeventwireup="true" inherits="admin_NewsList, App_Web_-affu90p" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>文本设置</title>
<link href="css/Index.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	margin: 0px;
	font-size:12px;
}
-->
</style>

<script src="../SpryAssets/SpryValidationCheckbox.js" type="text/javascript"></script>
<link href="../SpryAssets/SpryValidationCheckbox.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE5 {font-size: 14px}
-->
</style>
</head>

<body>
<form runat=server id=form1>
<div style="padding-top:15px;">
<table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#FFFFFF" class="table1" style="padding:1px 3px;">
  <tr class="td2">
    <td height="34" colspan="5" align="center" class="td1"><span class="STYLE5"><strong>文章管理</strong></span></td>
    </tr>
  <tr class="td2">
    <td height="34" colspan="5" align="left" class="td1">&nbsp;<a href="NewsEdit.aspx" ><strong><font color="#FF0000">添加新文章</font></strong></a></td>
  </tr>
  <tr>
    <td width="9%" height="27" class="td1"><div align="center"><strong>文章编号</strong></div></td>
    <td width="15%" class="td1"><div align="center"><strong>分类</strong></div></td>
    <td width="26%" class="td1"><div align="center"><strong>文章标题</strong></div></td>
    <td width="24%" class="td1"><div align="center"><strong>发布时间</strong></div></td>
    <td width="26%" class="td1"><div align="center"><strong>操作</strong></div></td>
  </tr>
  <asp:Repeater ID=rp_newslist runat=server>
  <ItemTemplate>
  <tr>
    <td height="28" class="td1"><div align="center"><%# Eval("id") %></div></td>
    <td height="28" class="td1"><div align="center"><%# Eval("sortName") %></div></td>
    <td class="td1"><div align="center"><%# Eval("title") %></div></td>
    <td class="td1"><div align="center"><%# Eval("AddDate") %></div></td>
    <td class="td1"><div align="center"><a href="NewsEdit.aspx?id=<%# Eval("id") %>">修改</a>&nbsp; <a href="NewsEdit.aspx?id=<%# Eval("id") %>&action=delete" onclick="return confirm('确认要删除吗？');">删除</a></div></td>
  </tr>
    </ItemTemplate>
  </asp:Repeater>
  
  
</table>

<div id=pager><%=pager.CreaterHtml() %></div>
</div>
</form>
</body>
</html>
