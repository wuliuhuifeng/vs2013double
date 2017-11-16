<%@ page language="C#" autoeventwireup="true" inherits="User_JiangjinList, App_Web_73mftbmz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>结算</title>
<link href="css/Index.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
body {
	margin: 0px;
}
.STYLE56 {
	font-size: 14px;
	font-weight: bold;
}
.STYLE58 {
	color: #FF0000;
	font-size: 13px;
	font-weight: bold;
}
-->
</style></head>

<body>

<table width="97%" border="0" align="center" cellpadding="1" cellspacing="3" bgcolor="#FFFFFF" class="table2">
  <tr>
    <td height="26" colspan="8" align="center" background="images/sincol_title1_bg.gif" bgcolor="#FFCC66" class="td1"><span class="STYLE56">奖金结算记录</span></td>
  </tr>
  <tr>
 
    <td width="7%" height="30" align="center" bgcolor="#F7F7F7" class="td4"><strong class="STYLE58">提成奖</strong></td>
    <td width="8%" align="center" bgcolor="#F7F7F7" class="td4"><strong class="STYLE58">津贴</strong></td>
   
    <td width="9%" align="center" bgcolor="#F7F7F7" class="td4"><strong class="STYLE58">总金额</strong></td>
	 <td width="10%" align="center" bgcolor="#F7F7F7" class="td4"><strong class="STYLE58">分红基金</strong></td>
	  
	  <td width="10%" align="center" bgcolor="#F7F7F7" class="td4"><strong class="STYLE58">扣税</strong></td>
    <td width="14%" align="center" bgcolor="#F7F7F7" class="td4"><strong class="STYLE58">实发奖金</strong></td>
    <td width="15%" align="center" bgcolor="#F7F7F7" class="td4"><strong class="STYLE58">结算时间</strong></td>
<%--    <td width="15%" align="center" bgcolor="#F7F7F7" class="td4"><strong><span class="STYLE58">详细记录</span></strong></td>--%>
  </tr>
   
   <asp:Repeater ID=repeater1 runat=server>
   <ItemTemplate>
  <tr>
  
    <td height="32" align="center" bgcolor="#F7F7F7" class="td4"><%# Eval("DuiPengJiang") %></td>
    <td align="center" bgcolor="#F7F7F7" class="td4"><%# Eval("JinTie") %></td>
    
    <td align="center" bgcolor="#F7F7F7" class="td4"><%# Eval("AllMoney") %></td>
	 <td align="center" bgcolor="#F7F7F7" class="td4"><%# Eval("FenHong") %></td>
   
	 <td align="center" bgcolor="#F7F7F7" class="td4"><%# Eval("KouShui") %></td>
	  <td align="center" bgcolor="#F7F7F7" class="td4"><%# Eval("ShiJiang") %></td>
    <td align="center" bgcolor="#F7F7F7" class="td4"><%# Eval("AddDate") %></td>
<%--    <td bgcolor="#F7F7F7" class="td4"><div align="center"><a href="#">查看详细</a></div></td>--%>
  </tr>
     
   </ItemTemplate>
   </asp:Repeater> 
  <tr>
    <td height="25" colspan="8" align="right" class="td4">
</td>
  </tr>
</table>

</body>
</html>

