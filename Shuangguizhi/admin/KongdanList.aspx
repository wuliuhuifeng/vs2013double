<%@ page language="C#" autoeventwireup="true" inherits="admin_KongdanList, App_Web_0p5kntrz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<table width=100%>
<tr><td id=th>业绩统计</td></tr>
<tr><td>
选择周期：
<asp:Repeater ID=repeater1 runat=server>
<ItemTemplate>
<a href="KongdanList.aspx?id=<%# Eval("JieSuanId") %>&adddate=<%# Eval("addDate") %>"><%# Eval("JieSuanId") %></a>&nbsp;
</ItemTemplate>
</asp:Repeater>
</td></tr>
<tr><td>本周期总单数：<font color=red><%=allPoint%></font></td></tr>
</table>
<table width=100%>
  <tr>
    <th width="20%" height="27">用户号</th>
    <th width="15%">单数</th>
    <th width="20%">状态</th>
    <th width="25%">注册时间</th>
  </tr>
  <asp:Repeater ID=repeater2 runat=server>
  <ItemTemplate>
  <tr>
    <td height="28" class="td1"><div align="center"><%# Eval("username") %>,<%# Eval("truename") %></div></td>
    <td height="28" class="td1"><div align="center"><%# Eval("point") %></div></td>
    <td class="td1"><div align="center">已审核</div></td>
    <td class="td1"><div align="center"><%# Eval("AddDate") %></div></td>
  </tr>
    </ItemTemplate>
  </asp:Repeater>
</table>
</form>
</body>
</html>
