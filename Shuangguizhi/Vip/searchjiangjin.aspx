<%@ page language="C#" autoeventwireup="true" inherits="User_searchjj, App_Web_x1tbcymf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="css/Index1.css" rel="stylesheet" type="text/css" />
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
<link href="Css/Index.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE2 {
	font-size: 24px;
	font-weight: bold;
}
.STYLE3 {font-size: 16px}
-->
.viptable{
    width:100%;
}
.viptable column{
    color:red;
    border-color:red;
}
</style>
</head>

<body>
<%-- <form id=form1 runat=server>

<table width="99%" border="0" align="center" class="table1">
  <tr>
    <td width="100%" height="28" align="center" class="td1"><p align="center" class="STYLE2 STYLE3"><strong><asp:Label ID=lb_title runat=server></asp:Label></strong></p></td>
  </tr>
  <tr>
    <td id=td_grey><div style="padding-left:30px; padding-right:30px; padding-top:20px; line-height:23px;">
    <asp:Label ID=lb_content runat=server></asp:Label>
    </div></td>
	<tr>
	<td></td>
	</tr>
  </tr>
</table>
</form>--%>
    <form id="form1" runat="server">
<table width=100%>
<tr>
<td id=th style="font-size:large;">��Ա��Ϣ�ۺϹ���</td>
</tr>
<!--<tr>
<td>
�� Ա �ţ�<asp:TextBox ID=tb_username runat=server></asp:TextBox> 
    <asp:Button ID=search runat=server Text=" �� ѯ " onclick="search_Click" />
</td>
</tr>-->
</table>

<asp:GridView ID=gridview1 runat=server AutoGenerateColumns=false Width=100% >
    <Columns>
    <asp:TemplateField HeaderText="���">
    <ItemTemplate><%# Eval("Id") %></ItemTemplate>
    <ItemStyle Width=5% HorizontalAlign=Center />
    </asp:TemplateField>
     <asp:TemplateField HeaderText="��Ա��">
    <ItemTemplate><%# Eval("username") %></ItemTemplate>
    <ItemStyle Width=7% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="������">
    <ItemTemplate><%# Eval("GuanLiRen") %></ItemTemplate>
    <ItemStyle Width=7% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="�Ƽ���">
    <ItemTemplate><%# Eval("TuiJianRen") %></ItemTemplate>
    <ItemStyle Width=7%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="�ײ�">
    <ItemTemplate><%# Eval("SetMealName") %></ItemTemplate>
    <ItemStyle Width=7%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="����">
    <ItemTemplate><%# Eval("JiangJin") %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
        <asp:TemplateField HeaderText="ֱ�ƽ�">
    <ItemTemplate><%# Eval("JiangJin") %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
        <asp:TemplateField HeaderText="������">
    <ItemTemplate><%# Eval("JiangJin") %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
     <asp:TemplateField HeaderText="����">
    <ItemTemplate><%# Eval("JiFen") %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="����">
    <ItemTemplate><%# Eval("point") %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="ע��ʱ��">
    <ItemTemplate><%# Eval("AddDate") %></ItemTemplate>
    <ItemStyle Width=15% HorizontalAlign=Center />
    </asp:TemplateField>
</Columns>
   
<EmptyDataTemplate>
<font color=red>û���ҵ�<%=tb_username.Text %>�˻�Ա��¼</font>
</EmptyDataTemplate>
</asp:GridView>
<div id=pager><%=pager.CreaterHtml() %></div>
</form>
</body>
</html>
