﻿<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="SinglePageView, App_Web_l0sgfu93" title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table id=box>
<tr>
<td id=left valign=top>
<div>
<%=sb.ToString() %>
</div>
<table>
<tbody>
<tr>
<td align="middle" height="56" style="padding-top:7px;"><a href="SinglePageView.aspx?sortId=22"><img height="46" alt="人才招聘" src="images/button_human.jpg" width="212" border="0" /></a></td>
</tr>
<tr>
<td align="middle" height="72"><a href="ChanPinList.aspx?id=21"><img height="46" alt="客户留言" src="images/button_message.jpg" width="212" border="0" /></a></td>
</tr>
<tr>
<td align="middle" height="66"><a href="SinglePageView.aspx?sortId=19"><img height="46" alt="联系我们" src="images/button_contact.jpg" width="212" border="0" /></a></td>
</tr>
</tbody>
</table>
</td>
<td width=></td>
<td id=right valign=top>
<%=content %>
</td>
</tr>
</table>
</asp:Content>

