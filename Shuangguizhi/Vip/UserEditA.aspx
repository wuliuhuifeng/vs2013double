<%@ page language="C#" autoeventwireup="true" inherits="User_UserPwd, App_Web_73mftbmz" %>

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
<form id="form1" name="form1" runat=server>
  <table width="100%" border="0" align="center" cellpadding="0" class="table1">
    <tr>
      <td height="30" colspan="2" align="center" background="Images/1.gif" class="td3"><span class="STYLE1">�û������޸�</span></td>
    </tr>
	    <tr>
      <td height="15" colspan="2" align="center" class="td3">&nbsp;</td>
    </tr>
    <tr>
      <td height="30" align="right" class="td3">�û�����</td>
      <td width="563" class="td3">&nbsp;&nbsp;&nbsp;&nbsp;
        <label>
        <input type="text" name="UserName" id="UserName" value="gg2" readonly="readonly" runat=server />
      </label></td>
    </tr>
    <tr>
      <td height="30" align="right" class="td3">ԭһ�����룺</td>
      <td class="td3">&nbsp;&nbsp;&nbsp;&nbsp;
        <label>
        <input type="password" name="GetPwd2" id="password" runat=server /> ���޸�һ������������
      </label></td>
    </tr>
    <tr>
      <td height="30" align="right" class="td3">��һ�����룺</td>
      <td class="td3">&nbsp;&nbsp;&nbsp;&nbsp;
        <label>
        <input type="password" name="UserPwd2" id="newPassword" runat=server />
      </label></td>
    </tr>
        <tr>
      <td height="30" align="right" class="td3">ԭ�������룺</td> 
      <td class="td3">&nbsp;&nbsp;&nbsp;&nbsp;
        <label>
        <input type="password" name="GetPwd2" id="passwordA" runat=server /> ���޸Ķ�������������
      </label></td>
    </tr>
    <tr>
      <td height="30" align="right" class="td3">�¶������룺</td>
      <td class="td3">&nbsp;&nbsp;&nbsp;&nbsp;
        <label>
        <input type="password" name="UserPwd2" id="newPasswordA" runat=server />
      </label></td>
    </tr>
    <tr>
      <td height="30" class="td3">&nbsp;</td>
      <td class="td3">&nbsp;&nbsp;&nbsp;&nbsp;
        <label>
        <asp:Button ID=bt_update runat=server Text="ȷ���޸�" onclick="bt_update_Click" />
      </label></td>
    </tr>
  </table>
</form>
</body>
</html>
