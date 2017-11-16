<%@ page language="C#" autoeventwireup="true" inherits="User_NewsView, App_Web_x1tbcymf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="css/Index1.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
body {
	margin: 0px;
}
-->
</style>
<link href="Css/Index.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE2 {
	font-size: 24px;
	font-weight: bold;
}
.STYLE3 {font-size: 16px}
-->
</style>
</head>

<body>
<form id=form1 runat=server>

<table width="99%" border="0" align="center" class="table1">
  <tr>
    <td width="100%" height="28" align="center" class="td1"><p align="center" class="STYLE2 STYLE3"><strong><asp:Label ID=lb_title runat=server></asp:Label></strong></p></td>
  </tr>
  <tr>
    <td id=td_grey><div style="padding-left:30px; padding-right:30px; padding-top:20px; line-height:23px;">
    <asp:Label ID=lb_content runat=server></asp:Label>
    </div></td>
	<tr>
	<td></td>
	</tr>
  </tr>
</table>
</form>
</body>
</html>
