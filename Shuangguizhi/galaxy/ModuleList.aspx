<%@ page language="C#" autoeventwireup="true" inherits="galaxy_InfoCateList, App_Web_x1rzjssu" %>
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
<ItemStyle Width=60 HorizontalAlign=Center />
</asp:TemplateField>
<asp:TemplateField HeaderText="模块名称">
<ItemTemplate><asp:TextBox ID=tb_name runat=server Text='<%# Eval("Modulename") %>'></asp:TextBox></ItemTemplate>
<ItemStyle  />
</asp:TemplateField>
<asp:TemplateField HeaderText="模块表名">
<ItemTemplate><asp:TextBox ID=tb_tableName runat=server Text='<%# Eval("ModuleTableName") %>'></asp:TextBox></ItemTemplate>
<ItemStyle Width=20% HorizontalAlign=Center />
</asp:TemplateField>
<asp:TemplateField HeaderText="模块描述">
<ItemTemplate><asp:TextBox ID=tb_description runat=server Text='<%# Eval("ModuleInfo") %>'></asp:TextBox></ItemTemplate>
<ItemStyle Width=20% HorizontalAlign=Center />
</asp:TemplateField>
<asp:TemplateField HeaderText="查看">
<ItemTemplate>
<a href='ModuleEdit.aspx?id=<%# Eval("id") %>'>查看参数</a>
</ItemTemplate>
<ItemStyle Width=20% HorizontalAlign=Center />
</asp:TemplateField>
<asp:TemplateField HeaderText="基本操作">
<ItemTemplate>
<asp:LinkButton ID="update" CommandName="update" runat=server Text="编辑"></asp:LinkButton> | <asp:LinkButton ID="delete" runat=server CommandName="delete" Text="删除" OnClientClick="return confirm('此操作不可逆，是否继续操作！');"></asp:LinkButton>
</ItemTemplate>
<ItemStyle Width=20% HorizontalAlign=Center />
</asp:TemplateField>
</Columns>
</asp:GridView>
<br />
<form name="addSplide" action="?action=add" method=post>
<table border=0 width=100% cellpadding=0 cellspacing=0>
<tr><th colspan=2>添加模块</th></tr>
<tr><td width=18% id=tdr>模块名称</td><td id=tdl><asp:TextBox ID=tb_name runat=server></asp:TextBox></td></tr>
<tr><td id=tdr>模块表名</td><td id=tdl><asp:TextBox ID=tb_tableName runat=server></asp:TextBox></td></tr>
<tr><td id=tdr>模块描述</td><td id=tdl><asp:TextBox ID=tb_description runat=server Width=400px Height=60px TextMode=MultiLine></asp:TextBox></td></tr>
<tr><td id=tdr></td><td id=tdl><asp:Button ID=bt_add runat=server Text=" 添 加 " 
        onclick="bt_add_Click" /></td></tr>
</table>
</form>
</form>
</body>
</html>
