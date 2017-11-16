<%@ page language="C#" autoeventwireup="true" inherits="User_BuyList, App_Web_x1tbcymf" %>

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
.STYLE2 {color: #FF0000}
-->
</style></head>

<body>

<form id="form1" runat=server>




<table width="95%" border="0" align="center" cellpadding="1" cellspacing="3" bgcolor="#FFFFFF" class="table1">
  <tr>
    <td height="25" colspan="2" background="Images/dbg.gif" bgcolor="#FFCC66" class="td1"><div align="center" class="STYLE1"></div></td>
  </tr>
  
  <tr>
    <td height="30" align="right" bgcolor="#F9F9F9" class="td10">&nbsp;&nbsp;商品名称：&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td bgcolor="#F9F9F9" class="td10">&nbsp; <asp:Label ID=lb_name runat=server></asp:Label></td>
  </tr>
  
<%--  <tr>
    <td height="30" align="right" bgcolor="#F9F9F9" class="td10">&nbsp;&nbsp;手机号：&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td bgcolor="#F9F9F9" class="td10"><label><asp:TextBox ID=tb_mobile runat=server></asp:TextBox>&nbsp;*</label></td>
  </tr>--%>
  
  
  
  <tr>
    <td height="30" align="right" bgcolor="#F9F9F9" class="td10">&nbsp;&nbsp; 金额：&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td bgcolor="#F9F9F9" class="td10"><asp:DropDownList ID=ddl_money runat=server></asp:DropDownList></td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#F9F9F9" class="td10">&nbsp;   &nbsp;&nbsp; </td>
    <td bgcolor="#F9F9F9" class="td10"><label>
      <asp:Button ID=bt_buy runat=server Text="确认购买" onclick="bt_buy_Click" />
    </label></td>
  </tr>
 

  
  <tr>
    <td height="25" colspan="2" bgcolor="#F9F9F9" class="td10">&nbsp; </td>
    </tr>
</table>

</form>
</body>
</html>
