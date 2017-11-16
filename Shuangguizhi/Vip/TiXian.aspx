<%@ page language="C#" autoeventwireup="true" inherits="User_TiXian, App_Web_x1tbcymf" %>

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
    <td height="25" colspan="2" background="Images/dbg.gif" bgcolor="#FFCC66" class="td1"><div align="center" class="STYLE1">申请提现</div></td>
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
    <td height="30" align="right" bgcolor="#F9F9F9" class="td10">&nbsp;&nbsp; 提现方式：&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td bgcolor="#F9F9F9" class="td10">&nbsp;&nbsp;<input name="kaihuhang"  type="text" id="kaihuhang" runat=server readonly="readonly"/>
      <span class="STYLE2">*</span></td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#F9F9F9" class="td10">&nbsp;&nbsp; 开户姓名：&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td bgcolor="#F9F9F9" class="td10">&nbsp;<input name="kaihuname"  type="text" id="kaihuname" value="" runat=server /><label>
      
      <span class="STYLE2">*</span></label></td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#F9F9F9" class="td10">&nbsp;&nbsp; 银行账号：&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td bgcolor="#F9F9F9" class="td10">&nbsp;<label>
      <input name="yinhang"  readonly="readonly" type="text" id="yinhang" value="" runat=server />
      <span class="STYLE2">*</span></label></td>
  </tr>
  <div id=temp runat=server visible=false>
    <tr>
    <td height="30" align="right" bgcolor="#F9F9F9" class="td10">&nbsp;&nbsp; 支付宝姓名：&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td bgcolor="#F9F9F9" class="td10">&nbsp;<label>
      <input name="zfbName"  type="text" id="zfbName" value="" runat=server />
      <span class="STYLE2">*</span></label></td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#F9F9F9" class="td10">&nbsp;&nbsp; 支付宝账号：&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td bgcolor="#F9F9F9" class="td10">&nbsp;<label>
      <input name="zfb"  readonly="readonly" type="text" id="zfb" value="" runat=server />
      <span class="STYLE2">*</span></label></td>
  </tr>
  </div>
  <tr>
    <td height="30" align="right" bgcolor="#F9F9F9" class="td10">&nbsp;&nbsp; 提取金额：&nbsp;&nbsp;&nbsp;&nbsp; </td>
    <td bgcolor="#F9F9F9" class="td10">&nbsp;<label>
      <input name="money" type="text" id="tb_money" size="6" runat=server />
      <span class="STYLE2">*</span>(请申请100的整数倍，提现手续费2%）</label></td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#F9F9F9" class="td10">&nbsp;&nbsp; 申请时间：&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td bgcolor="#F9F9F9" class="td10">&nbsp;<label>
      <input name="shijian" type="text" id="shijian" value=""   readonly="readonly" runat=server/>
    </label></td>
  </tr>
  <tr>
    <td height="30" align="right" bgcolor="#F9F9F9" class="td10">&nbsp;   &nbsp;&nbsp; </td>
    <td bgcolor="#F9F9F9" class="td10"><label>
      <asp:Button ID=bt_submit runat=server Text=" 提 交 " onclick="bt_submit_Click" />
    </label></td>
  </tr>
 

  
  <tr>
    <td height="25" colspan="2" bgcolor="#F9F9F9" class="td10">&nbsp; </td>
    </tr>
</table>

</form>
</body>
</html>

