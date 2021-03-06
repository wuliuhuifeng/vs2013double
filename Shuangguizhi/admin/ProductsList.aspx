﻿<%@ page language="C#" autoeventwireup="true" inherits="admin_UserList, App_Web_cu4qre4t" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>无标题页</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<table width=100%>
  <tr>
    <td id=th>购买发送</td>
    </tr>
<tr><td><asp:TextBox ID=tb_username runat=server></asp:TextBox> 
    <asp:Button ID=bt_search runat=server Text="搜索" onclick="bt_search_Click" /> &nbsp;<a href="SendBuy.aspx">发送产品</a></td></tr>
</table>
<asp:GridView ID=gridview1 runat=server AutoGenerateColumns=false Width=100% 
    onrowdeleting="gridview1_RowDeleting" >
    <Columns>
    <asp:TemplateField HeaderText="编号">
    <ItemTemplate><%# Eval("Id") %></ItemTemplate>
    <ItemStyle Width=6% HorizontalAlign=Center />
    </asp:TemplateField>
     <asp:TemplateField HeaderText="收货人">
    <ItemTemplate><%# Eval("username") %></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="套餐级别">
    <ItemTemplate><%# Eval("setMealName") %></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="价格">
    <ItemTemplate><%# Eval("price") %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="产品信息">
    <ItemTemplate><%# Eval("content") %></ItemTemplate>
    <ItemStyle Width=20%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="状态">
    <ItemTemplate><%# Eval("status").ToString()=="1"?"已发送":"<a href='SendBuy.aspx?id="+Eval("id")+"&username="+Eval("username")+"'><font color=red>未发送</font></a>" %></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="注册时间">
    <ItemTemplate><%# Eval("AddDate") %></ItemTemplate>
    <ItemStyle Width=12% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="操作">
    <ItemTemplate><asp:LinkButton ID="delete" CommandName="delete" runat=server Text="删除"></asp:LinkButton></ItemTemplate>
    <ItemStyle Width=6% HorizontalAlign=Center />
    </asp:TemplateField>   
</Columns>
</asp:GridView>
<div id=pager><%=pager.CreaterHtml() %></div>
</form>
</body>
</html>

