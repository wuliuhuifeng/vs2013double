<%@ page language="C#" autoeventwireup="true" inherits="User_CaiWuList, App_Web_73mftbmz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="css/Index.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
body,td,th {
	font-size: 12px;
}
-->
</style></head>


<body>
<table width="100%"  border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF" class="table1">
  <tr>
    <td height="30" colspan="2" align="center" background="Images/1.gif" class="td3"><strong>货币记录</strong></td>
  </tr>
     <tr>
    <td height="5"colspan="2" class="td3" ></td>
  </tr>
  <tr>
    <td colspan="2" valign="top" class="td3" ><table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#FFFFFF" class="table3">  
  <tr>
    
    <td width="13%" align="center" class="td3"> 编号</td>
    <td width="10%" align="center" class="td3">发生金额</td>
    <td width="12%" align="center" class="td3" >余额</td>
    <td width="18%" align="center" class="td3" >类型</td>
    <td width="21%" align="center" class="td3">时间</td>
  </tr>

  <asp:Repeater ID=repeater1 runat=server>
  <ItemTemplate>
  <tr>
   <td height="22" align="center" class="td3"><%# Eval("Id") %>&nbsp;</td>

    <td align="center" class="td3">
	<%# Eval("Money") %>
	&nbsp;</td>
    <td align="center" class="td3" >
	<%# Eval("YuE") %>&nbsp;</td>
    <td align="center" class="td3"><%# Eval("Remark") %>&nbsp;</td>
    <td align="center" class="td3"><%# Eval("AddDate") %>&nbsp;</td>
  </tr>
      </ItemTemplate>
  </asp:Repeater>
	<tr  valign="bottom"> 
                      <td height="50" colspan="7" align="center" class="td3" ></td>
  </tr> 			
				     
  <tr>
    <td height="25" colspan="7">&nbsp;&nbsp;用户<asp:Label ID=lb_user runat=server></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;用户所余电子币：<span style="color:#FF0000;"><asp:Label ID=lb_money runat=server></asp:Label></span>  </td>
  </tr>
  
  
</table></td>
  </tr>
</table>

  


</body>
</html>

