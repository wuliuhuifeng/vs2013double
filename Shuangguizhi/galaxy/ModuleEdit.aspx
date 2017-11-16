<%@ page language="C#" autoeventwireup="true" inherits="galaxy_InfoCateList, App_Web_uc4oazam" %>
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
<div id=tableTitle>
<asp:Label ID=lb_moduleName runat=server></asp:Label>
</div>
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
<asp:TemplateField HeaderText="字段说明">
<ItemTemplate><asp:TextBox ID=fieldInfo runat=server Text='<%# Eval("FieldInfo") %>'></asp:TextBox></ItemTemplate>
<ItemStyle  />
</asp:TemplateField>
<asp:TemplateField HeaderText="字段名称">
<ItemTemplate><asp:TextBox ID=fieldName runat=server Text='<%# Eval("FieldName") %>'></asp:TextBox></ItemTemplate>
<ItemStyle Width=20% HorizontalAlign=Center />
</asp:TemplateField>
<asp:TemplateField HeaderText="字段描述">
<ItemTemplate><asp:TextBox ID=description runat=server Text='<%# Eval("FieldInfoA") %>'></asp:TextBox></ItemTemplate>
<ItemStyle Width=20% HorizontalAlign=Center />
</asp:TemplateField>
<asp:TemplateField HeaderText="排序">
<ItemTemplate><asp:TextBox ID=filedOrder runat=server Text='<%# Eval("FieldOrder") %>' Width=60px></asp:TextBox></ItemTemplate>
<ItemStyle Width=20% HorizontalAlign=Center />
</asp:TemplateField>
<asp:TemplateField HeaderText="基本操作">
<ItemTemplate>
<asp:LinkButton ID="edit" CommandName="edit" runat=server Text="编辑"></asp:LinkButton> | <asp:LinkButton ID="delete" runat=server CommandName="delete" Text="删除" OnClientClick="return confirm('此操作不可逆，是否继续操作！');"></asp:LinkButton>
</ItemTemplate>
<ItemStyle Width=20% HorizontalAlign=Center />
</asp:TemplateField>
</Columns>
<EmptyDataTemplate>
<font color=red>还没有添加记录</font>
</EmptyDataTemplate>
</asp:GridView>
<br />
<form name="addSplide" action="?action=add" method=post>
<table border=0 width=100% cellpadding=0 cellspacing=0>
<tr><th colspan=2><a href="?id=<%=Request.QueryString["id"] %>">添加新字段</a></th></tr>
<tr><td width=18% id=tdr>字段说明</td><td id=tdl><asp:HiddenField ID=hf_id runat=server Value="-1" /><asp:TextBox ID=tb_fieldInfo runat=server></asp:TextBox></td></tr>
<tr><td id=tdr>字段名称</td><td id=tdl><asp:TextBox ID=tb_fieldName runat=server></asp:TextBox></td></tr>
<tr><td id=tdr>字段描述</td><td id=tdl><asp:TextBox ID=tb_fieldInfoA runat=server Width=400px Height=60px TextMode=MultiLine></asp:TextBox></td></tr>
<tr><td width=18% id=tdr>字段排序</td><td id=tdl><asp:TextBox ID=tb_fieldOrder runat=server Text="0" Width=60px></asp:TextBox></td></tr>
<tr><td width=18% id=tdr>字段数据类型</td><td id=tdl>
<asp:RadioButtonList ID=rbl_fieldDataType runat=server RepeatColumns=5 RepeatDirection=Horizontal CssClass="radio">
<asp:ListItem Value="Text(255)" Selected=True>文本类型</asp:ListItem>
<asp:ListItem Value="Memo">备注类型</asp:ListItem>
<asp:ListItem Value="Date">日期类型</asp:ListItem>
<asp:ListItem Value="int">整型</asp:ListItem>
<asp:ListItem Value="double">浮点型</asp:ListItem>
</asp:RadioButtonList>
</td></tr>
<tr><td width=18% id=tdr>HTML标签类型</td><td id=tdl>
<asp:RadioButtonList ID=rbl_htmlType runat=server RepeatColumns=7 RepeatDirection=Horizontal CssClass="radio">
<asp:ListItem Value="1" Selected=True>文本框</asp:ListItem>
<asp:ListItem Value="2">文本域</asp:ListItem>
<asp:ListItem Value="3">在线编辑器</asp:ListItem>
<asp:ListItem Value="4">多选框</asp:ListItem>
<asp:ListItem Value="5">单选框</asp:ListItem>
<asp:ListItem Value="6">下拉框</asp:ListItem>
<asp:ListItem Value="7">文件上传</asp:ListItem>
</asp:RadioButtonList>
</td></tr>
<tr><td width=18% id=tdr>默认值</td><td id=tdl><asp:TextBox ID=tb_defaultValue runat=server Width=400px Height=60px TextMode=MultiLine></asp:TextBox></td></tr>
<tr><td width=18% id=tdr>标签宽度</td><td id=tdl><asp:TextBox ID=tb_width runat=server Text="0" Width=60px ></asp:TextBox></td></tr>
<tr><td width=18% id=tdr>标签高度</td><td id=tdl><asp:TextBox ID=tb_height runat=server Text="0" Width=60px></asp:TextBox></td></tr>
<tr><td width=18% id=tdr>是否显示</td><td id=tdl><asp:CheckBox ID=cb_isShow runat=server Text="是否在列表界面显示" /></td></tr>
<tr><td width=18% id=tdr>列表宽度</td><td id=tdl><asp:TextBox ID=tb_listWidth runat=server Text="0" Width=60px ></asp:TextBox></td></tr>
<tr><td id=tdr></td><td id=tdl><asp:Button ID=bt_add runat=server Text=" 添 加 " 
        onclick="bt_add_Click" /></td></tr>
</table>
</form>
</form>
</body>
</html>
