<%@ page language="C#" autoeventwireup="true" inherits="User_BuyList, App_Web_bzobtowr" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<style type="text/css">
<!--
.STYLE1 {
	color: #FF9900;
	font-weight: bold;
	font-size: 13px;
}
-->
</style>
<link href="css/Index.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE2 {color: #FFCC00}
-->
</style>
</head>

<body>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFE8" class="table1">
  <tr>
    <td height="10" align="center">&nbsp;</td>
  
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
  <asp:Repeater ID=repeater1 runat=server>
  <ItemTemplate>
  <td align="center"><a href="Shopping.aspx?id=<%# Eval("id") %>"><img src="<%# Eval("picture") %>" width="200" height="205" border="0" /><Br /><Br /><b><%# Eval("name") %></b></a></td>
  </ItemTemplate>
  </asp:Repeater>
  </tr>
  <tr>
    <td height="10" align="center">&nbsp;</td>
   
    <td align="center" class="STYLE1">&nbsp;</td>
  </tr>
</table>

</body>
</html>

