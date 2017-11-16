<%@ page language="C#" autoeventwireup="true" inherits="galaxy_InfoCateList, App_Web_ms7moug_" %>
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
<form action="?moduleId=<%=moduleId %>&sortId=<%=sortId %>&page=<%=page %>&action=delete" method=post>
<%=sb.ToString() %>
<br />
</form>
</body>
</html>
