<%@ page language="C#" autoeventwireup="true" inherits="User_UserEdit, App_Web_bzobtowr" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
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
</style>
</head>

<body>
<form id=form1 runat=server>
  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="table1">
    <tr>
      <td height="30" colspan="4" align="center" background="Images/1.gif" class="td3" style="padding:1px 45px;"><span class="STYLE1">会 员 信 息&nbsp; 管理</span></td>
    </tr>
    <tr>
      <td width="235" height="25" align="right" class="td3" >会 员 号：</td>
      <td width="344" align="left" class="td3" ><asp:Label ID=lb_username runat=server></asp:Label>&nbsp;</td>
      <td align="right" class="td3" >开户名：</td>
      <td width="216" class="td3" ><asp:Label ID=lb_truename runat=server></asp:Label>&nbsp; </td>
    </tr>
    <tr>
      <td height="25" align="right" class="td3"  >推 荐 人：</td>
      <td height="25" align="left" class="td3" ><asp:Label ID=lb_tuijianRen runat=server></asp:Label>&nbsp; </td>
      <td width="209" align="right" class="td3"  >开户帐号：</td>
      <td class="td3" ><asp:Label ID=lb_bankAccount runat=server></asp:Label>&nbsp; </td>
    </tr>
    <tr>
      <td height="25" align="right" class="td3"  >管 理 人：</td>
      <td height="25" align="left" class="td3" ><asp:Label ID=lb_guanliRen runat=server></asp:Label>&nbsp;</td>
      <td width="209" align="right" class="td3"  >开户银行：</td>
      <td class="td3" ><asp:Label ID=lb_bankType runat=server></asp:Label>&nbsp; </td>
    </tr>
    <tr>
      <td height="25" align="right" class="td3"  >会员类型：</td>
      <td height="25" align="left" class="td3" ><asp:Label ID=lb_setMealName runat=server></asp:Label>
        &nbsp;&nbsp; </td>
      <td width="209" align="right" class="td3"  >注册时间：</td>
      <td class="td3" ><asp:Label ID=lb_addDate runat=server></asp:Label>&nbsp; </td>
    </tr>
    <div id=temp runat=server visible=false>
        <tr>
      <td height="25" align="right" class="td3"  >支付宝姓名：</td>
      <td height="25" align="left" class="td3" ><asp:Label ID=lb_zfbName runat=server></asp:Label>
        &nbsp;&nbsp; </td>
      <td width="209" align="right" class="td3"  >支付宝账号：</td>
      <td class="td3" ><asp:Label ID=lb_zfb runat=server></asp:Label>&nbsp; </td>
    </tr>
    </div>
    <tr>
      <td height="25" align="right" class="td3"  >服务中心：</td>
      <td height="25" align="left" class="td3" ><asp:Label ID=lb_agencyName runat=server></asp:Label>
        &nbsp; </td>
      <td width="209" align="right" class="td3"  >手&nbsp;&nbsp; &nbsp;机：</td>
      <td class="td3" ><label><asp:TextBox ID=tb_mobile runat=server></asp:TextBox></label></td>
    </tr>
    <tr>
      <td height="25" align="right" class="td3"  >电子币余额：</td>
      <td height="25" align="left" class="td3" ><asp:Label ID=lb_Mondy runat=server></asp:Label>&nbsp;</td>
           <td width="209" align="right" class="td3"  >Q&nbsp;&nbsp; &nbsp;Q：</td>
      <td class="td3" ><label><asp:TextBox ID=tb_qq runat=server></asp:TextBox></label></td>
    </tr>
    <tr>
      <td height="25" colspan="4" align="right" class="td3"  ><div align="center">
          <asp:Button ID=bt_update runat=server Text="提交修改" onclick="bt_update_Click" />
      </div></td>
    </tr>
  </table>
</form>


</body>
</html>

