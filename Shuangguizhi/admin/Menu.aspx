<%@ page language="C#" autoeventwireup="true" inherits="admin_Menu, App_Web_r0ynyk2h" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.?.org/TR/xhtm?/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>管理后台页面</title>
<style type="text/css">
<!--
 body{
	FONT-SIZE: 12px;
	font-family:Verdana, Arial, Helvetica, sans-serif,新宋体，宋体，黑体;
	bac+ground-color:#D9F0FF;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom8 0px;
	scrollbar-face-color: #F5FAFE;
	scrollbar-highlight-color: #FFFFF;
	scrollbar-shadow-color: #cccycc;
	scrollbar-3dlight-color: #dbeedd;
	scrollbar-arrow-color: #cccccc;
	scrollbar-track-color: #F5FAFE;
	scrollbar-darkshadow-color: #f3faf4;
}
.menutitle {
	color: #000000;
	filter: Glow(Color=#ffffff, Strength=1);
	letter-spacing: 4px;
	font-size: 13px;
	font-weight: bold;
	padding-top: 4px;
}
.menubg {
	border: 1px solid #82ADCA;
	background-color: #F2F8FD;
}
.menubg1 {
	background-color: #ffffff;
	font-size: 12px;
	color: #001B51;
	height: 20px;
	text-align: center;
	padding-top: 3px;
	letter-spacing: 2px;
}
.menubg2 {
	font-size: 12px;
	color: #004FA6;
	text-align: center;
	height: 20px;
	background-image: url(images/menu_bg.gif);
	background-repeat: no-repeat;
	background-position: center;
	padding-top: 3px;
	letter-spacing: 2px;
}
a{behavior:url(images/link.htc)}
a:link {font-size:12px; color: #001B51;text-decoration: none;}
a:visited {font-size:12px; color: #001B51;text-decoration: none;}
a:hover {font-size:12px; color: #004FA6;text-decoration: none;}
.title {cursor:pointer;}
-->
</style>
<SCRIPT language=javascript1.2>
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
</SCRIPT>
<script src="js/prototype.lite.js" type="text/javascript"></script>
<script src="js/moo.fx.js" type="text/javascript"></script>
<script src="js/moo.fx.pack.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" /></head>

<body onLoad="MM_preloadImages('images/menu_bg.gif','images/menu_title3b.jpg')">
<div id="container">
  <div class="title">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="3"><img src="images/menu_1.gif" width="188" height="8"></td>
      </tr>
      <tr>
        <td width="39"><img src="images/menu_title1.jpg" width="39" height="26"></td>
        <td width="114" align="center" background="images/menu_title2.jpg"><table height="26" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center" class="menutitle">信息管理</td>
          </tr>
        </table></td>
        <td width="36"><img src="images/menu_04.gif" width="36" height="26" class="arrow"></td>
      </tr>
    </table>
  </div>
  <div class="content">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><table width="188" border="0" cellspacing="0" cellpadding="0">
            
            <tr>
              <td width="10" background="images/menu_2.gif">&nbsp;</td>
              <td width="166"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="26" align="center" class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="ConfigSet.aspx" target="VipMain">参数设置</a></td>
                </tr>
                <tr>
                  <td height="26" align="center" class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="SetMealList.aspx" target="VipMain">套餐设置</a></td>
                </tr>
                <tr>
                  <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="UserList.aspx" target="VipMain">会员管理</a></td>
                </tr>
                <tr>
                  <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="UserListA.aspx" target="VipMain">未审会员</a></td>
                </tr>
               <%-- <tr style="display:none">
                  <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'" ><a href="KongdanList.aspx" target="VipMain"><img src="images/index-_111.gif" width="4" height="7" border="0" /> 报单查询</a></td>
                </tr>--%>
				  <!-- <tr>
                  <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="kongUserReg.asp" target="VipMain">会员注册</a></td>
                </tr>-->
                <tr>
                  <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="DailiList.aspx" target="VipMain">奖金查询</a></td>
                </tr>
				
				<%-- <tr>
                  <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="ProductsList.aspx" target="VipMain">产品发送</a></td>
                </tr>--%>
				 <tr>
                  <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="NewsList.aspx" target="VipMain">文章管理</a></td>
                </tr>
				 <tr>
                  <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="BuyList.aspx" target="VipMain">用户购买</a></td>
                </tr>
                <%--<tr>
                  <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="GoodsList.aspx" target="VipMain">购物管理</a></td>
                </tr>--%>
                <tr>
                  <td height="5"></td>
                </tr>
              </table></td>
              <td width="12" background="images/menu_3.gif">&nbsp;</td>
            </tr>
          </table></td>
      </tr>
    </table>
  </div>
  <div class="bottom">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="20" colspan="3" valign="top"><img src="images/menu_4.gif" width="188" height="15"></td>
      </tr>
    </table>
  </div>
       <div class="title">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="3"><img src="images/menu_1.gif" width="188" height="6"></td>
      </tr>
      <tr>
        <td width="39"><img src="images/menu_title1.jpg" width="39" height="26" /></td>
        <td width="114" align="center" background="images/menu_title2.jpg"><table height="26" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center" class="menutitle">网络拓扑图</td>
          </tr>
        </table></td>
        <td width="36"><img src="images/menu_04.gif" width="36" height="26" class="arrow"></td>
      </tr>
    </table>
  </div>
  <div class="content">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><table width="188" border="0" cellspacing="0" cellpadding="0">
            
            <tr>
              <td width="10" background="images/menu_2.gif">&nbsp;</td>
              <td width="166"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                  <td height="10"></td>
                </tr>    
			    <tr>
                  <td height="26" align="center" class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="NetworkList.aspx" target="VipMain">网络拓扑图</a></td>
                </tr>
               
                
                <tr>
                  <td height="10"></td>
                </tr>
              </table></td>
              <td width="12" background="images/menu_3.gif">&nbsp;</td>
            </tr>
          </table></td>
      </tr>
    </table>
  </div>
  <div class="bottom">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="20" colspan="3" valign="top"><img src="images/menu_4.gif" width="188" height="15" /></td>
      </tr>
    </table>
  </div>
   <div class="title">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="3"><img src="images/menu_1.gif" width="188" height="6"></td>
      </tr>
      <tr>
        <td width="39"><img src="images/menu_title1.jpg" width="39" height="26" /></td>
        <td width="114" align="center" background="images/menu_title2.jpg"><table height="26" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center" class="menutitle">服务中心</td>
          </tr>
        </table></td>
        <td width="36"><img src="images/menu_04.gif" width="36" height="26" class="arrow"></td>
      </tr>
    </table>
  </div>
  <div class="content">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><table width="188" border="0" cellspacing="0" cellpadding="0">
            
            <tr>
              <td width="10" background="images/menu_2.gif">&nbsp;</td>
              <td width="166"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                  <td height="10"></td>
                </tr> 
					 <tr>
                  <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="UserListB.aspx" target="VipMain">会员列表</a></td>
                </tr>   
			   <!-- <tr>
                  <td height="26" align="center" class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="pifuwu.asp" target="VipMain">代理商审批</a></td>
                </tr>-->
<%--			 <tr>
                  <td height="26" align="center" class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="HuikuanList.aspx" target="VipMain">代理商汇款</a></td>
                </tr>--%>
                
                <tr>
                  <td height="10"></td>
                </tr>
              </table></td>
              <td width="12" background="images/menu_3.gif">&nbsp;</td>
            </tr>
          </table></td>
      </tr>
    </table>
  </div>
  <div class="bottom">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
	      <tr>
        <td height="20" colspan="3" valign="top"><img src="images/menu_4.gif" width="188" height="15" /></td>
      </tr>
    </table>
  </div>



    <div class="title">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="3"><img src="images/menu_1.gif" width="188" height="6"></td>
      </tr>
      <tr>
        <td width="39"><img src="images/menu_title1.jpg" width="39" height="26" /></td>
        <td width="114" align="center" background="images/menu_title2.jpg"><table height="26" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center" class="menutitle">财务管理</td>
          </tr>
        </table></td>
        <td width="36"><img src="images/menu_04.gif" width="36" height="26" class="arrow"></td>
      </tr>
    </table>
  </div>
  <div class="content">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><table width="188" border="0" cellspacing="0" cellpadding="0">
            
            <tr>
              <td width="10" background="images/menu_2.gif">&nbsp;</td>
              <td width="166"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                         <tr>
                  <td height="10"></td>
                </tr>                  
                <%--<tr>
                  <td height="26" align="center" class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="JieSuanDayList.aspx" target="VipMain">每日结算</a><a href="JsCode.asp" target="VipMain"></a></td>
                </tr>--%>
                <tr>
                  <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="JieSuanAllList.aspx" target="VipMain">公司总帐</a><a href="JsCode.asp" target="VipMain"></a></td>
                </tr>
                <tr>
                  <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="TiXianList.aspx" target="VipMain">提现记录</a><a href="JsCode.asp" target="VipMain"></a></td>
                </tr>
                <tr>
                  <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="CaiwuList.aspx" target="VipMain">财务记录</a><a href="JsCode.asp" target="VipMain"></a></td>
                </tr>
                <tr>
                  <td height="10"></td>
                </tr>
              </table></td>
              <td width="12" background="images/menu_3.gif">&nbsp;</td>
            </tr>
          </table></td>
      </tr>
    </table>
  </div>
  <div class="bottom">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="20" colspan="3" valign="top"><img src="images/menu_4.gif" width="188" height="15" /></td>
      </tr>
    </table>
  </div>
  <div class="title">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="3"><img src="images/menu_1.gif" width="188" height="6" /></td>
      </tr>
      <tr>
        <td width="39"><img src="images/menu_title1.jpg" width="39" height="26" /></td>
        <td width="113" align="center" background="images/menu_title2.jpg"><table height="26" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center" class="menutitle">系统管理</td>
          </tr>
        </table></td>
        <td width="36"><img src="images/menu_04.gif" width="36" height="26" class="arrow"></td>
      </tr>
    </table>
    </div>
  <div class="content">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><table width="188" border="0" cellspacing="0" cellpadding="0">
            
            <tr>
              <td width="10" background="images/menu_2.gif">&nbsp;</td>
              <td width="166"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                         <tr>
                  <td height="10"></td>
                </tr>                  
                <%--<tr>
                  <td height="26" align="center" class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="/galaxy/" target="self">内容系统</a><a href="JieSuanZ.asp" target="VipMain"></a><a href="JsCode.asp" target="VipMain"></a></td>
                </tr>--%>
                <tr>
                  <td height="26" align="center" class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /> <a href="AdminEdit.aspx" target="VipMain">密码管理</a><a href="JieSuanZ.asp" target="VipMain"></a><a href="JsCode.asp" target="VipMain"></a></td>
                </tr>
                <tr>
                  <td class="menubg1" onmouseover="this.className='menubg2'" onmouseout="this.className='menubg1'"><img src="images/index-_111.gif" width="4" height="7" /><a href="Logout.aspx" target="VipMain"> 退出管理</a></td>
                </tr>
                
                <tr>
                  <td height="10"></td>
                </tr>
              </table></td>
              <td width="12" background="images/menu_3.gif">&nbsp;</td>
            </tr>
          </table></td>
      </tr>
    </table>
  </div>
  <div class="bottom">
    <table width="188" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="20" colspan="3" valign="top"><img src="images/menu_4.gif" width="188" height="15" /></td>
      </tr>
    </table>
  </div>
</div>
<SCRIPT language=javascript1.2>
	var toggles  = document.getElementsByClassName('title');
	var contents = document.getElementsByClassName('content');
	var arrows = document.getElementsByClassName('arrow');
	var myAccordion = new fx.Accordion(
		toggles, contents, {opacity: true, duration: 500}
	);
	myAccordion.showThisHideOpen(contents[0]);
</SCRIPT>
</body>
</html> 

