<%@ page language="C#" autoeventwireup="true" inherits="User_UserList, App_Web_x1tbcymf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��Ա����</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 14px;
	font-weight: bold;
}
-->
</style>
</head>
<link href="css/Index.css" rel="stylesheet" type="text/css" />

<body>
<form id=from1 runat=server>
<table width="99%" border="0" align="center" cellpadding="2" cellspacing="3" bgcolor="#FFFFFF" class="table1">
  <tr>
    <td height="30" colspan="12" align="center" background="images/1.gif" class="td2"><strong>��Ա���</strong></td>
  </tr>
  <tr>
    <td  height="26" align="center" class="td2">��Ա��</td>
    <td  align="center" class="td2">������</td>
    <td  align="center" class="td2">��Ա����</td>
    <td  align="center" class="td2">������</td>
    <td align="center" class="td2">�Ƽ���</td>
    <td align="center" class="td2">������</td>
    <td  align="center" class="td2">״̬</td>
    <td  align="center" class="td2">����</td>
    <td align="center" class="td2">ע��ʱ��</td>
  </tr>
  
  <asp:Repeater ID=repeater1 runat=server>
  <ItemTemplate>
  <tr>
    <td height="24" align="center" bgcolor="#F9F9F9" class="td10"><%# Eval("username") %>&nbsp;</td>
    <td align="center" bgcolor="#F9F9F9" class="td10"><%# Eval("truename") %>&nbsp;</td>
    
    <td align="center" bgcolor="#F9F9F9" class="td10"><%# Eval("setMealName") %>&nbsp;</td>
    <td align="center" bgcolor="#F9F9F9" class="td10"><%# Eval("guanliRen") %>&nbsp;</td>
    <td align="center" bgcolor="#F9F9F9" class="td10"><%# Eval("tuijianRen") %>&nbsp;</td>
    <td align="center" bgcolor="#F9F9F9" class="td10"><%# Eval("agencyname") %>&nbsp;</td>
    <td align="center" bgcolor="#F9F9F9" class="td10" style="BORDER-RIGHT: #FF9696 1px solid; BORDER-BOTTOM: #FF9696 1px solid;"> 
<span class="STYLE2"><%# Eval("status").ToString() == "1" ? "�����" : "<a href='?action=check&id=" + Eval("Id") + "' onclick=\"return confirm('�˲������۳���Ӧ���ӱң�ȷ��Ҫ��˴��û���');\"><font color=red>δ���</font></a>"%></span>
	</td>
    <td align="center" bgcolor="#F9F9F9" class="td10">
    <a href="?action=delete&id=<%# Eval("Id") %>" onclick="return confirm('ȷ��Ҫɾ����');"> ɾ��</a></td>
    <td align="center" bgcolor="#F9F9F9" class="td10"><%# Eval("addDate") %></td>
  </tr>
    </ItemTemplate>
  </asp:Repeater>
  
  <tr>
    <td height="47" colspan="12" align="center" class="td2">&nbsp;</td>
  </tr>
</table>
</form>
</body>
</html>