<%@ page language="C#" autoeventwireup="true" inherits="admin_SetMealList, App_Web_cu4qre4t" %>

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
    <td id=th>套餐管理</td>
    </tr>
</table>
<asp:GridView ID=gridview1 runat=server AutoGenerateColumns=false Width=100% 
        onrowdeleting="gridview1_RowDeleting" onrowupdating="gridview1_RowUpdating">
    <Columns>
    <asp:TemplateField HeaderText="是否代理">
    <ItemTemplate><%# Eval("Id") %><asp:CheckBox ID=isAgency runat=server Checked='<%# Eval("isAgency").ToString()=="1"?true:false %>' /></ItemTemplate>
    <ItemStyle Width=8% HorizontalAlign=Center />
    </asp:TemplateField>
     <asp:TemplateField HeaderText="名称">
    <ItemTemplate><asp:TextBox ID=name runat=server Text='<%# Eval("name") %>' Width=100px></asp:TextBox></ItemTemplate>
    <ItemStyle Width=20% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="金额">
    <ItemTemplate><asp:TextBox ID=money runat=server Text='<%# Eval("Money") %>' Width=50px></asp:TextBox>元</ItemTemplate>
    <ItemStyle Width=12% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="积分">
    <ItemTemplate><asp:TextBox ID=point runat=server Text='<%# Eval("point") %>' Width=50px></asp:TextBox>积分</ItemTemplate>
    <ItemStyle Width=12%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="直推奖">
    <ItemTemplate><asp:TextBox ID=serviceAward runat=server Text='<%# Eval("ServiceAward") %>' Width=50px></asp:TextBox>%</ItemTemplate>
    <ItemStyle Width=12% HorizontalAlign=Center />
    </asp:TemplateField>
    
    <asp:TemplateField HeaderText="对碰奖">
    <ItemTemplate><asp:TextBox ID=touchAward runat=server Text='<%# Eval("TouchAward") %>' Width=50px></asp:TextBox>元/单</ItemTemplate>
    <ItemStyle Width=12% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="封顶奖金">
    <ItemTemplate><asp:TextBox ID=cappingAward runat=server Text='<%# Eval("CappingAward") %>' Width=50px></asp:TextBox>元</ItemTemplate>
    <ItemStyle Width=12%  HorizontalAlign=Center />
    </asp:TemplateField>
    
    
    <asp:TemplateField HeaderText="操作">
    <ItemTemplate>
    <asp:LinkButton ID="update" CommandName="update" runat=server Text="修改"></asp:LinkButton>&nbsp;|&nbsp; <asp:LinkButton ID="delete" CommandName="delete" runat=server Text="删除" OnClientClick="return confirm('确定要删除吗？');"></asp:LinkButton>
    </ItemTemplate>
    <ItemStyle Width=12% HorizontalAlign=Center />
    </asp:TemplateField>
</Columns>
</asp:GridView>
<br />
<table width=100%>
  <tr>
    <td id=th>套餐添加</td>
    </tr>
</table>
<table cellspacing="0" rules="all" border="1" id="gridview1" style="width:100%;border-collapse:collapse;">
	<tr>
		<th scope="col">是否代理</th><th scope="col">名称</th><th scope="col">金额</th><th scope="col">积分</th><th scope="col">封顶奖金</th><th scope="col">对碰奖</th><th scope="col">服务奖</th><th scope="col">操作</th>
	</tr><tr>
		<td align="center" style="width:8%;"><asp:CheckBox ID=cb_isAgency runat=server /></td>
		<td align="center" style="width:20%;"><asp:TextBox ID=name runat=server Width=100px></asp:TextBox></td>
		<td align="center" style="width:12%;"><asp:TextBox ID=money runat=server Width=50px></asp:TextBox>元</td>
		<td align="center" style="width:12%;"><asp:TextBox ID=point runat=server Width=50px></asp:TextBox>单</td>
		<td align="center" style="width:12%;"><asp:TextBox ID=cappingAward runat=server Width=50px></asp:TextBox>元</td>
		<td align="center" style="width:12%;"><asp:TextBox ID=touchAward runat=server Width=50px></asp:TextBox>元/单</td>
		<td align="center" style="width:12%;"><asp:TextBox ID=serviceAward runat=server Width=50px></asp:TextBox>%</td>
		<td align="center" style="width:12%;"><asp:Button ID=bt_add runat=server 
                Text=" 添加 " onclick="bt_add_Click" /></td>
	</tr>
	</table>
</form>
</body>
</html>
