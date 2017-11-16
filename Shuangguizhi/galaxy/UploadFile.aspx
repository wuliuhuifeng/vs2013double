<%@ page language="C#" autoeventwireup="true" inherits="galaxy_UploadFile, App_Web_xptb_qd5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<style>
body{ padding:0px; margin:0px; font-size:12px;}
a{ text-decoration:none;}
</style>
<script language=javascript>
function SendUrl(picPath)
{
    parent.document.getElementById("<%=Request.QueryString["id"] %>").value=picPath;
}
</script>
<body>
<form id="form1" runat="server">
<div id=up runat=server>
<asp:FileUpload ID="FileUpload1" runat="server" Width=250px />
&nbsp;<asp:Button ID="Button1" runat="server" Text="上传" 
    onclick="Button1_Click" />
</div>
<asp:LinkButton ID="uped" runat=server onclick="uped_Click"></asp:LinkButton>
</form>
</body>
</html>
