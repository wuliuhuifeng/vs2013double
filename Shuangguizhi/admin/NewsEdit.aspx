<%@ page language="C#" autoeventwireup="true" inherits="admin_NewsEdit, App_Web_etxj2abt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>文本设置</title>
<link href="css/Index.css" rel="stylesheet" type="text/css" />
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
.STYLE1 {
	font-size: 14px;
	font-weight: bold;
}
-->
</style>
</head>

<body>



<form id="form1" name="form1" runat=server>


<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top">

  <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#FFFFFF" class="table1" style="padding:1px 3px;">
    
    <tr>
      <td height="25" colspan="2" align="center" class="td1"><span class="STYLE1"><asp:Label ID=lb_t runat=server Text='添加新文章'></asp:Label></span></td>
    </tr>
    <tr>
      <td height="25" bgcolor="#F9F9F9" class="td1" style="padding:1px 10px;">类别：</td>
      <td height="25" bgcolor="#F9F9F9" class="td1" style="padding:1px 10px;"><select  id="lei"  name="lei" runat=server></select>&nbsp;</td>
    </tr>
    <tr>
      <td class="td1" style="padding:1px 10px;">标题：</td>
      <td height="30" class="td1" style="padding:1px 10px;"><label>
        <input name="biaoti" type="text" id="biaoti" width=300 runat=server /> <asp:CheckBox ID=cb_titleRed runat=server />标题醒目 <asp:CheckBox ID=cb_isTop runat=server />置顶
      </label></td>
    </tr>
    <tr>
      <td valign="top" class="td1" style="padding:1px 10px;">内容：<br />
        <br />
        <br />
        <br />
        <br />
        <br /></td>
      <td height="30" class="td1" style="padding:1px 10px;"><input id=content runat=server style="display:none" />
<iframe ID="eWebEditor1" src="../editor/ewebeditor.htm?id=content&style=standard650" frameborder="0" scrolling="no" width="100%" HEIGHT="300"></iframe></td>
    </tr>
    <tr>
      <td width="19%" class="td1" style="padding:1px 10px;">&nbsp;</td>
      <td width="81%" height="30" class="td1" style="padding:1px 10px;">&nbsp;</td>
    </tr>
    <tr>
      <td height="25" colspan="2" align="center" bgcolor="#F9F9F9" class="td1">
          <asp:Button ID=bt_add runat=server Text=" 添加文章 " onclick="bt_add_Click" /></td>
    </tr>
    <tr>
      <td height="25" colspan="2" align="right" class="td1"><a href="NewsList.aspx"><strong><font color="#FF0000">返回文章列表 </font></strong></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
  </table>
  </td>
  </tr>
</table>

</form>

</body>
</html>
