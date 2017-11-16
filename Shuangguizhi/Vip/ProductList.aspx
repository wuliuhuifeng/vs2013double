<%@ page language="C#" autoeventwireup="true" inherits="User_ProductList, App_Web_x1tbcymf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>结算</title>
<link href="css/Index.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
body {
	margin: 0px;
}
.STYLE1 {
	font-size: 14px;
	font-weight: bold;
}
-->
</style></head>

<!--include file="mima2ji.asp" -->

<body>

<table width="98%" border="0" align="center" cellpadding="1" cellspacing="3" bgcolor="#FFFFFF" class="table2">
  <tr class="td1">
    <td height="26" colspan="3" background="images/sincol_title1_bg.gif" bgcolor="#FFCC66" class="td1"><div align="center" class="STYLE1">我的产品列表</div></td>
  </tr>
  <tr>
    <td width="20%" align="center" bgcolor="#F9F9F9" class="td10">产品名称 </td>
    <td width="60%" align="center" bgcolor="#F9F9F9" class="td10">产品信息</td>
    <td width="20%" align="center" bgcolor="#F9F9F9" class="td10">收到时间</td>
  </tr>
  <asp:Repeater ID=repeater1 runat=server>
  <ItemTemplate>
  <tr>
  <td class="td10" align=center><%# Eval("Name")%>&nbsp;</td>
  <td class="td10" align=center><%# Eval("Content")%>&nbsp;</td>
  <td class="td10" align=center><%# Eval("AddDate")%>&nbsp;</td>
  </tr>
  </ItemTemplate>
  </asp:Repeater>
  
  <tr>
    <td height="25" colspan="6" align="center" bgcolor="#F9F9F9" class="td10">
    
    </td>
  </tr>
</table>
</body>
</html>

