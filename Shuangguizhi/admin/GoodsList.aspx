<%@ page language="C#" autoeventwireup="true" inherits="admin_SetMealList, App_Web_r0ynyk2h" %>

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
    <td id=th>购物管理</td>
    </tr>
</table>
<asp:GridView ID=gridview1 runat=server AutoGenerateColumns=false Width=100% 
        onrowdeleting="gridview1_RowDeleting" onrowupdating="gridview1_RowUpdating">
    <Columns>
         <asp:TemplateField HeaderText="编号">
    <ItemTemplate><%# Eval("Id") %></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
     <asp:TemplateField HeaderText="名称">
    <ItemTemplate><asp:TextBox ID=name runat=server Text='<%# Eval("name") %>' Width=150px></asp:TextBox></ItemTemplate>
    <ItemStyle Width=25% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="价格">
    <ItemTemplate><asp:TextBox ID=price runat=server Text='<%# Eval("price") %>' Width=100px></asp:TextBox>元</ItemTemplate>
    <ItemStyle Width=20% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="图片地址">
    <ItemTemplate><asp:TextBox ID=picture runat=server Text='<%# Eval("picture") %>' Width=150px></asp:TextBox></ItemTemplate>
    <ItemStyle Width=25%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="操作">
    <ItemTemplate>
    <asp:LinkButton ID="update" CommandName="update" runat=server Text="修改"></asp:LinkButton>&nbsp;|&nbsp; <asp:LinkButton ID="delete" CommandName="delete" runat=server Text="删除" OnClientClick="return confirm('确定要删除吗？');"></asp:LinkButton>
    </ItemTemplate>
    <ItemStyle Width=20% HorizontalAlign=Center />
    </asp:TemplateField>
</Columns>
</asp:GridView>

</form>
</body>
</html>
