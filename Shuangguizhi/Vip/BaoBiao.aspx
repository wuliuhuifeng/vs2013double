<%@ page language="C#" autoeventwireup="true" inherits="User_BaoBiao, App_Web_73mftbmz" %>

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
-->
</style>
</head>

<body>
<table width="57%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="table1">
  <tr>
    <td height="30" colspan="3" align="center" background="Images/1.gif" class="td3" style="padding:1px 45px;"><strong>购物积分</strong></td>
  </tr>
  <tr>
    <td width="189" height="25" align="right" class="td3" >&nbsp;</td>
    <td width="193" align="left" class="td3" ><div align="center">购物A区</div></td>
    <td width="179" align="right" class="td3" ><div align="center">购物B区&nbsp; </div></td>
  </tr>
  <tr>
    <td height="25" align="right" class="td3" >昨日积分比：</td>
    <td align="left" class="td3" ><div align="center">&nbsp;<asp:Label ID=lb_left runat=server></asp:Label></div></td>
    <td align="right" class="td3" ><div align="center">&nbsp;<asp:Label ID=lb_right runat=server></asp:Label></div></td>
  </tr>
  <tr>
    <td height="25" align="right" class="td3" >今日积分比：</td>
    <td align="left" class="td3" ><div align="center">&nbsp;<asp:Label ID=lb_leftA runat=server></asp:Label></div></td>
    <td align="right" class="td3" ><div align="center">&nbsp;<asp:Label ID=lb_rightA runat=server></asp:Label></div></td>
  </tr>
  <tr>
    <td height="25" align="right" class="td3"  >新增积分比：</td>
    <td height="25" align="left" class="td3" ><div align="center">&nbsp;<asp:Label ID=lb_leftB runat=server></asp:Label></div></td>
    <td align="right" class="td3"  ><div align="center">&nbsp;<asp:Label ID=lb_rightB runat=server></asp:Label> </div></td>
  </tr>
  <!--<tr>
    <td height="25" align="right" class="td3"  >累计总积分：</td>
    <td height="25" align="left" class="td3" ><div align="center">&nbsp;</div></td>
    <td align="right" class="td3"  ><div align="center">&nbsp;</div></td>
  </tr>-->
</table>


</body>
</html>

