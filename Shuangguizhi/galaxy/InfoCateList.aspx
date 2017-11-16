<%@ page language="C#" autoeventwireup="true" inherits="galaxy_InfoCateList, App_Web_xptb_qd5" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>无标题页</title>
<link href="style.css" rel=Stylesheet type="text/css" />
    <style type="text/css">
        #picName3
        {
            width: 50px;
        }
        #picLink
        {
            width: 50px;
        }
        .input{ border:solid 1px red;}
    </style>
    
<script language=javascript>
function mm()
{
   var a = document.getElementsByTagName("input");
   var id = document.getElementById('CheckAll');
   if(id.checked==false){
   for (var i=0; i<a.length; i++)
      if (a[i].type == "checkbox") a[i].checked = false;
   }
   else
   {
   for (var i=0; i<a.length; i++)
      if (a[i].type == "checkbox") a[i].checked = true;
   }
}
</script>

</head>
<body>
<form id=form1 runat=server>
<asp:GridView ID=gv_catelist runat=server AllowPaging=false 
    AutoGenerateColumns=false Width=100% 
    onrowdatabound="gv_catelist_RowDataBound" 
    onrowdeleting="gv_catelist_RowDeleting" 
    onrowupdating="gv_catelist_RowUpdating" 
    onrowediting="gv_catelist_RowEditing">
<Columns>
<asp:TemplateField HeaderText="编号">
<ItemTemplate><%# Eval("id") %></ItemTemplate>
<ItemStyle Width=60px HorizontalAlign=Center />
</asp:TemplateField>
<asp:TemplateField HeaderText="状态">
<ItemTemplate><asp:LinkButton ID="sortStatus" runat=server CommandName="update" Text='<%# Eval("sortStatus").ToString()=="1"?"启用":"禁用" %>'></asp:LinkButton></ItemTemplate>
<ItemStyle Width=60px HorizontalAlign=Center />
</asp:TemplateField>
<asp:TemplateField HeaderText="栏目名称">
<ItemTemplate><%# GetSpace(int.Parse(Eval("sortlevel").ToString())) %><asp:TextBox ID=tb_sortname runat=server Text='<%# Eval("sortname") %>'></asp:TextBox></ItemTemplate>
<ItemStyle  />
</asp:TemplateField>
<asp:TemplateField HeaderText="链接">
<ItemTemplate><asp:TextBox ID=tb_sorturl runat=server Text='<%# Eval("sorturl") %>' Width=120px></asp:TextBox></ItemTemplate>
<ItemStyle Width=15% HorizontalAlign=Center />
</asp:TemplateField>
<asp:TemplateField HeaderText="所属模块">
<ItemTemplate>
<asp:HiddenField ID="hf_moduleId" runat="server" Value='<%# Eval("ModuleId") %>' />
<asp:DropDownList ID=ddl_module runat=server>
</asp:DropDownList>
</ItemTemplate>
<ItemStyle Width=10% HorizontalAlign=Center />
</asp:TemplateField>
<asp:TemplateField HeaderText="类型">
<ItemTemplate>
<asp:HiddenField ID="hf_sortType" runat="server" Value='<%# Eval("sortType") %>' />
<asp:DropDownList ID=ddl_sortType runat=server>
<asp:ListItem Value="1">文章列表</asp:ListItem>
<asp:ListItem Value="2">单篇文章</asp:ListItem>
<asp:ListItem Value="3">链接地址</asp:ListItem>
</asp:DropDownList>
</ItemTemplate>
<ItemStyle Width=10% HorizontalAlign=Center />
</asp:TemplateField>
<asp:TemplateField HeaderText="排序">
<ItemTemplate><asp:TextBox ID=tb_sortorder runat=server Text='<%# Eval("sortOrder") %>' Width=50></asp:TextBox></ItemTemplate>
<ItemStyle Width=60px HorizontalAlign=Center />
</asp:TemplateField>
<asp:TemplateField HeaderText="基本操作">
<ItemTemplate>
<asp:LinkButton ID="edit" CommandName="edit" runat=server Text="编辑"></asp:LinkButton> | <asp:LinkButton ID="delete" runat=server CommandName="delete" Text="删除" OnClientClick="return confirm('确定要删除吗');"></asp:LinkButton>
</ItemTemplate>
<ItemStyle Width=100px HorizontalAlign=Center />
</asp:TemplateField>
<asp:TemplateField HeaderText="选择">
<ItemTemplate>
<asp:CheckBox ID="checkbox1" runat=server />
</ItemTemplate>
<ItemStyle Width=60px HorizontalAlign=Center />
</asp:TemplateField>
</Columns>
</asp:GridView>
<table border=0 width=100% cellpadding=0 cellspacing=0>
<tr bgcolor="#ffffff">
<td colspan="8" style="line-height:30px; height:30px; padding:0px 5px;" align="right">
<input id="CheckAll" type="checkbox" onClick="mm()" /> 全选 
<asp:Button ID=bt_delete runat=server Text=" 删除 " 
        OnClientClick="return confirm('确定要删除吗');" onclick="bt_delete_Click" />
<asp:Button ID=bt_save runat=server Text=" 保存 " onclick="bt_save_Click" />
</td>
            </tr>
</table>
<br />
<form name="addSplide" action="?action=add" method=post>
<table border=0 width=100% cellpadding=1 cellspacing=1>
<tr><th colspan=2>添加栏目</th></tr>
<tr><td width=18% id=tdr>所属模块</td><td id=tdl>
<asp:DropDownList ID=ddl_module runat=server></asp:DropDownList></td></tr>
<tr><td width=18% id=tdr>所属栏目</td>
<td id=tdl>
<asp:HiddenField ID=hf_id runat=server Value="0" />
<asp:DropDownList ID=ddl_cate runat=server SelectedValue='<%# Eval("sortType") %>'></asp:DropDownList>
</td></tr>
<tr><td width=18% id=tdr>类型</td><td id=tdl>
<asp:DropDownList ID=ddl_sortType runat=server>
<asp:ListItem Value="1">文章列表</asp:ListItem>
<asp:ListItem Value="2">单篇文章</asp:ListItem>
<asp:ListItem Value="3">链接地址</asp:ListItem>
</asp:DropDownList></td></tr>
<tr><td width=18% id=tdr>分类名称</td><td id=tdl><asp:TextBox ID=tb_sortname runat=server></asp:TextBox></td></tr>
<tr><td id=tdr>链接地址</td><td id=tdl><asp:TextBox ID=tb_sortUrl runat=server></asp:TextBox></td></tr>
<tr><td id=tdr>排序</td><td id=tdl><asp:TextBox ID=tb_sortOrder runat=server Width=60 Text="0"></asp:TextBox></td></tr>
<tr><td id=tdr>生成路径</td><td id=tdl><asp:TextBox ID=tb_sortPath runat=server></asp:TextBox></td></tr>
<tr><td id=tdr>生成名称</td><td id=tdl><asp:TextBox ID=tb_sortFileName runat=server></asp:TextBox></td></tr>
<tr><td id=tdr>标题</td><td id=tdl><asp:TextBox ID=tb_sortTitle runat=server Width=400px></asp:TextBox></td></tr>
<tr><td id=tdr>关键词</td><td id=tdl><asp:TextBox ID=tb_keywords runat=server Width=400px></asp:TextBox></td></tr>
<tr><td id=tdr>描述</td><td id=tdl><asp:TextBox ID=tb_description runat=server Width=400px Height=60px TextMode=MultiLine></asp:TextBox></td></tr>
<tr><td id=tdr></td><td id=tdl><asp:Button ID=bt_add runat=server Text=" 添 加 " 
        onclick="bt_add_Click" /></td></tr>
</table>
</form>
</form>
</body>
</html>
