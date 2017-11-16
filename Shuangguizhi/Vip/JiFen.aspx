<%@ page language="C#" autoeventwireup="true" inherits="User_JiFen, App_Web_x1tbcymf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>积分</title>
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
    <td height="25" colspan="2" background="Images/dbg.gif" bgcolor="#FFCC66" class="td1"><div align="center" class="STYLE1">奖金积分互转</div></td>
  </tr>
  
  <tr>
    <td width="31%" height="30" align="right" bgcolor="#F9F9F9" class="td10">&nbsp;&nbsp; 用 户 名：&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td width="69%" bgcolor="#F9F9F9" class="td10"><label>
    &nbsp;&nbsp;<asp:Label ID=lb_username runat=server></asp:Label>
    </label></td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#F9F9F9" class="td10">&nbsp;&nbsp; 当前余额：&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td bgcolor="#F9F9F9" class="td10"><label>
    &nbsp;&nbsp;<asp:Label ID=lb_money runat=server></asp:Label>
   </label></td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#F9F9F9" class="td10">&nbsp;&nbsp; 当前积分：&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td bgcolor="#F9F9F9" class="td10"><label>
    &nbsp;&nbsp;<asp:Label ID=lb_jifen runat=server></asp:Label>
   </label></td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#F9F9F9" class="td10">&nbsp;&nbsp; 兑换金额：&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td bgcolor="#F9F9F9" class="td10">&nbsp;<label>
      <input name="money" type="text" id="tb_money" size="6" runat=server />
      <span class="STYLE2">*</span>(1:1兑换成积分）</label>
      <asp:Button ID="bt_jifen" runat=server Text=" 兑换积分 " onclick="bt_jifen_Click" /></td>
  </tr>
   <tr>
    <td height="30" align="right" bgcolor="#F9F9F9" class="td10">&nbsp;&nbsp; 兑换积分：&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td bgcolor="#F9F9F9" class="td10">&nbsp;<label>
      <input name="money" type="text" id="tb_jifen" size="6" runat=server />
      <span class="STYLE2">*</span>(1:1兑换成奖金）</label>
       <asp:Button ID="bt_jiangjin" runat=server Text=" 兑换奖金 " onclick="bt_jiangjin_Click" /></td>
  </tr>
  
  <tr>
    <td height="25" colspan="2" bgcolor="#F9F9F9" class="td10">&nbsp; </td>
    </tr>
</table>

</form>
</body>
</html>

