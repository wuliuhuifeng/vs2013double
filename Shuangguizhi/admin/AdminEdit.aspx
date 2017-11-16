<%@ page language="C#" autoeventwireup="true" inherits="admin_AdminEdit, App_Web_0p5kntrz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<link href="css/Index.css" rel="stylesheet" type="text/css" />
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
<script src="../SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<link href="../SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE1 {
	font-size: 16px;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<form id="form1" name="form1" runat=server>
  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF" class="table1">
    <tr>
      <td height="30" colspan="2" align="center" background="images/1.gif" bgcolor="#FFCC66" class="td3"><span class="STYLE1">管理账号</span></td>
    </tr>
    <tr>
      <td width="410" height="25" align="right" bgcolor="#F9F9F9" class="td1">管理帐号：</td>
      <td width="582" align="left" bgcolor="#F9F9F9" class="td1" style="padding:2px 20px;"><label><span id="sprytextfield3">
        <input type="text" name="AdminName" id="AdminName"  value="" readonly="readonly" runat=server />
      <span class="textfieldRequiredMsg">请输入管理帐号。</span></span></label></td>
    </tr>
    <tr>
      <td height="25" align="right" bgcolor="#FFCCCC" class="td1">原始密码：</td>
      <td align="left" bgcolor="#FFCCCC" class="td1" style="padding:2px 20px;"><label><span id="sprytextfield2">
      <input type="password" name="GetPwd" id="GetPwd" runat=server />
      <span class="textfieldRequiredMsg">请输入旧密码！</span></span></label></td>
    </tr>
    <tr>
      <td height="25" align="right" bgcolor="#F9F9F9" class="td1">新置密码：</td>
      <td align="left" bgcolor="#F9F9F9" class="td1" style="padding:2px 20px;"><label><span id="sprytextfield1">
      <input type="password" name="AdminPwd" id="AdminPwd" runat=server />
      <span class="textfieldRequiredMsg">请输入新密码！</span><span class="textfieldMinCharsMsg">请输入5-15字符。</span><span class="textfieldMaxCharsMsg">请输入5-15字符。</span></span></label></td>
    </tr>
        <tr>
      <td height="25" align="right" bgcolor="#F9F9F9" class="td1">确认新密码：</td>
      <td align="left" bgcolor="#F9F9F9" class="td1" style="padding:2px 20px;"><label><span id="sprytextfield1">
      <input type="password" name="AdminPwd2" id="AdminPwd2" runat=server />
      <span class="textfieldRequiredMsg">请输入新密码！</span><span class="textfieldMinCharsMsg">请输入5-15字符。</span><span class="textfieldMaxCharsMsg">请输入5-15字符。</span></span></label></td>
    </tr>
    <tr>
      <td height="25" bgcolor="#E1E1E1" class="td1">&nbsp;</td>&nbsp;</td>
      <td bgcolor="#E1E1E1" class="td1"><label><asp:Button ID=bt_update runat=server 
              Text=" 确定修改 " onclick="bt_update_Click" /></label></td>
    </tr>
  </table>
</form>
<script type="text/javascript">
<!--
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "none", {validateOn:["blur"], minChars:5, maxChars:15});
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2", "none", {validateOn:["blur"]});
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3", "none", {validateOn:["blur"]});
//-->
</script>
</body>
</html>

