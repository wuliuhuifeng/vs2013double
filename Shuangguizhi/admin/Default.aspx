<%@ page language="C#" autoeventwireup="true" inherits="admin_Default, App_Web_etxj2abt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>旅游积分后台管理系统</title>
<link href="Css/Index.css" rel="stylesheet" type="text/css" />
    <style>
        .table1{
            background-color:#6633CC;
            width:1000px;
            height:200px;
        }
        .table h1{
            top:30%;
        }
    </style>
</head>
<center>
<body>
<iframe src="ChkOut.asp" style="display:none;"></iframe>
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#016EA9">
  <!--<tr>
    <td height="150"><img src="images/head.gif" width="1000" height="200" border="0" usemap="#Map2" /></td>
  </tr>-->
    <div class="table1">
        <h1>旅游积分管理员后台系统</h1>
        <h2>在此后台可以查询会员奖金记录，选择套餐，管理充值等功能。</h2>
        <h2>套餐暂时不能够进行删除处理，必须维持5个</h2>
    </div>
</table>

<table width="1000" height="622" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="19%" height="600" align="left" valign="top"><iframe 
     
      name="leftFrame" id="leftFrame" width="100%" height="600"  marginwidth="0" marginheight="0"
      src="menu.aspx" frameborder="0" noresize="noresize" scrolling="No"> </iframe></td>
    <td width="84%" align="right" valign="top"><iframe id="VipMain" name="VipMain" onload="this.height=VipMain.document.body.scrollHeight+20" align="top" src="SetMealList.aspx" frameborder="0" width="99%" height="100%"></iframe></td>
  </tr>
  <tr>
    <td height="55" colspan="2" background="images/main_2.jpg">&nbsp;</td>
  </tr>
</table>

<map name="Map2" id="Map2">
  <area shape="rect" coords="861,203,965,227" href="AdminOut.asp" />
</map>

<script language=javascript>
function UpdateSession()
{
    document.getElementById("zhuboImg").src="updatesession.aspx?id="+Math.floor(Math.random()*1000);
}
setInterval("UpdateSession()",5000);
</script>
<img src="" id=zhuboImg style=" display:none;" />
</body>
</center>
</html>

