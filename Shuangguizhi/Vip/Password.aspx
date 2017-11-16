<%@ page language="C#" autoeventwireup="true" inherits="User_Password, App_Web_x1tbcymf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="css/Index.css" rel="stylesheet" type="text/css" />

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
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

<body>
<form id="form1" runat=server>
  <table width="80%" border="0" align="center" cellpadding="0" class="table1">
    <tr>
      <td height="30" colspan="2" align="center" background="Images/1.gif" class="td3">操作需要二级密码</td>
    </tr>
	    <tr>
      <td height="15" colspan="2" align="center" class="td3">&nbsp;</td>
    </tr>
    <tr>
      <td width="328" height="30" align="right" class="td3">用户名：</td>
      <td width="456" class="td3">&nbsp;&nbsp;&nbsp;&nbsp;
        <label>
        <input type="text" name="UserName" id="UserName"  readonly="readonly" runat=server />
      </label></td>
    </tr>
    <tr>
      <td height="30" align="right" class="td3">二级密码：</td>
      <td class="td3">&nbsp;&nbsp;&nbsp;&nbsp;
        <label>
        <input type="password" name="pwd" id="pwd" runat=server />
      </label></td>
    </tr>
    <tr>
      <td height="30" class="td3">&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td class="td3">&nbsp;&nbsp;&nbsp;&nbsp;
        <label>
        <asp:Button ID=bt_login runat=server Text="确定" onclick="bt_login_Click" />
      </label></td>
    </tr>
  </table>
</form>
</body>
</html>

