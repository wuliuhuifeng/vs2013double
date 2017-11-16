<%@ page language="C#" autoeventwireup="true" inherits="admin_webconfig, App_Web_xptb_qd5" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style.css" rel=Stylesheet type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width=98% cellpadding="2" cellspacing="1" border="0">
    <tr><th colspan=2>网站配置管理</th></tr>
    <tr><td id=tdr width=20%>网站名称：</td><td id=tdl>
                    <asp:TextBox ID="name" runat="server" Width="350px"></asp:TextBox>
                    </td></tr>
                    </td></tr>
    <tr><td id=tdr>网站顶部：</td><td id=tdl><input id=gonggao runat=server style="display:none" />
    <iframe ID="eWebEditor1" src="../editor/ewebeditor.htm?id=gonggao&style=standard650" frameborder="0" scrolling="no" width="100%" HEIGHT="300"></iframe></td></tr>
    <tr><td id=tdr>网站公告：</td><td id=tdl><input id=chengnuo runat=server style="display:none" />
<iframe ID="eWebEditor1" src="../editor/ewebeditor.htm?id=chengnuo&style=standard650" frameborder="0" scrolling="no" width="100%" HEIGHT="300"></iframe></td></tr>
    <tr><td id=tdr>联系我们：</td><td id=tdl><input id=contact runat=server style="display:none" />
<iframe ID="eWebEditor1" src="../editor/ewebeditor.htm?id=contact&style=standard650" frameborder="0" scrolling="no" width="100%" HEIGHT="300"></iframe></td></tr>
    <tr><td id=tdr>公司简介：</td><td id=tdl><input id=jianjie runat=server style="display:none" />
<iframe ID="eWebEditor1" src="../editor/ewebeditor.htm?id=jianjie&style=standard650" frameborder="0" scrolling="no" width="100%" HEIGHT="300"></iframe></td></tr>
    <tr><td id=tdr>版权信息：</td><td id=tdl><input id=foot runat=server style="display:none" />
<iframe ID="eWebEditor1" src="../editor/ewebeditor.htm?id=foot&style=standard650" frameborder="0" scrolling="no" width="100%" HEIGHT="300"></iframe></td></tr>
    <tr><td id=tdr>&nbsp;</td><td id=tdl>
                    <asp:Button ID="Button1" runat="server" Text=" 修 改 " onclick="Button1_Click" />
                    </td></tr>
    </table>
    </div>
    </form>
</body>
</html>
