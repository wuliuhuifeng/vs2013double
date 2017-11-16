<%@ page language="C#" autoeventwireup="true" inherits="admin_UserList, App_Web_spnfzznk" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>未会员信息管理</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<table width=100%>
  <tr>
    <td id=th>未会员信息管理</td>
    </tr>
</table>
<asp:GridView ID=gridview1 runat=server AutoGenerateColumns=false Width=100% 
        onrowupdating="gridview1_RowUpdating" 
        onrowdeleting="gridview1_RowDeleting" >
    <Columns>
    <asp:TemplateField HeaderText="编号">
    <ItemTemplate><%# Eval("Id") %></ItemTemplate>
    <ItemStyle Width=5% HorizontalAlign=Center />
    </asp:TemplateField>
     <asp:TemplateField HeaderText="会员号">
    <ItemTemplate><%# Eval("username") %></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="推荐人">
    <ItemTemplate><%# Eval("TuiJianRen") %></ItemTemplate>
        </asp:TemplateField>
    <asp:TemplateField HeaderText="管理人">
    <ItemTemplate><%# Eval("GuanLiRen") %></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="服务中心">
    <ItemTemplate><%# Eval("AgencyName") %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="单数">
    <ItemTemplate><%# Eval("dan") %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="套餐类型">
    <ItemTemplate><%# Eval("SetMealName") %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="注册时间">
    <ItemTemplate><%# Eval("AddDate") %></ItemTemplate>
    <ItemStyle Width=15% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="状态">
    <ItemTemplate><asp:LinkButton ID="update" CommandName="update" runat=server Text='<font color=red>未开通</font>' OnClientClick="return confirm('您确定要为该会员审核吗？此操作将扣除推荐人的注册积分');"></asp:LinkButton></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="操作">
    <ItemTemplate><asp:LinkButton ID="delete" CommandName="delete" runat=server Text="删除"></asp:LinkButton></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>    
</Columns>
<EmptyDataTemplate>
<font color=red>没有未开通会员</font>
</EmptyDataTemplate>
</asp:GridView>
</form>
</body>
</html>

