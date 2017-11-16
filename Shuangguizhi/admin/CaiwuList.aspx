<%@ page language="C#" autoeventwireup="true" inherits="admin_UserList, App_Web_ukgnqdzt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>转 账 查 看</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<table width=100%>
  <tr>
    <td id=th>转 账 查 看</td>
    </tr>
</table>
<asp:GridView ID=gridview1 runat=server AutoGenerateColumns=false Width=100% >
    <Columns>
    <asp:TemplateField HeaderText="编号">
    <ItemTemplate><%# Eval("Id") %></ItemTemplate>
    <ItemStyle Width=5% HorizontalAlign=Center />
    </asp:TemplateField>
     <asp:TemplateField HeaderText="会员号">
    <ItemTemplate><%# Eval("username") %></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="金额">
    <ItemTemplate><%# Eval("Money") %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="余额">
    <ItemTemplate><%# Eval("YuE") %></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="备注">
    <ItemTemplate><%# Eval("Remark") %></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="时间">
    <ItemTemplate><%# Eval("AddDate") %></ItemTemplate>
    <ItemStyle Width=15% HorizontalAlign=Center />
    </asp:TemplateField>
</Columns>
</asp:GridView>
<div id=pager><%=pager.CreaterHtml() %></div>
</form>
</body>
</html>

