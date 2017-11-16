<%@ page language="C#" autoeventwireup="true" inherits="User_Default, App_Web_x1tbcymf" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<TITLE>旅游积分会员系统</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META content="MSHTML 6.00.2900.5583" name=GENERATOR>
<link href="main.files/index.css" type=text/css rel=STYLESHEET>
<link href="Css/css3button.css" type="text/css" rel="Stylesheet" />
<link href="Css/cssmenu.css" type="text/css" rel="Stylesheet" />
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<head>
    <script src="main.files/cssmenu.js" type="text/javascript"></script>
    <script src="main.files/jquery-3.2.1.min.js" type="text/javascript"></script>
 
<script type="text/javascript">
    $(document).ready(function () {
        $('.inactive').click(function () {
            if ($(this).siblings('ul').css('display') == 'none') {
                $(this).parent('li').siblings('li').removeClass('inactives');
                $(this).addClass('inactives');
                $(this).siblings('ul').slideDown(100).children('li');
                if ($(this).parents('li').siblings('li').children('ul').css('display') == 'block') {
                    $(this).parents('li').siblings('li').children('ul').parent('li').children('a').removeClass('inactives');
                    $(this).parents('li').siblings('li').children('ul').slideUp(100);

                }
            } else {
                //控制自身变成+号
                $(this).removeClass('inactives');
                //控制自身菜单下子菜单隐藏
                $(this).siblings('ul').slideUp(100);
                //控制自身子菜单变成+号
                $(this).siblings('ul').children('li').children('ul').parent('li').children('a').addClass('inactives');
                //控制自身菜单下子菜单隐藏
                $(this).siblings('ul').children('li').children('ul').slideUp(100);

                //控制同级菜单只保持一个是展开的（-号显示）
                $(this).siblings('ul').children('li').children('a').removeClass('inactives');
            }
        })
    });
</script>
</head>
<HTML xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">

<BODY>
<!--套餐申请按钮-->
<div class="nav" >
    <div class="slide">
        <h1>会员积分系统</h1>
        <h2>在套餐申请里申请套餐，可以选择会员等级</h2>
        <div class="abutton">
        <a href="NetWorkList.aspx" target="right" ><span class="button button-silver">套餐申请</span></a>
        </div>
    </div>
   
</div>
<!--状态条套餐+用户-->
<div class="taocan">  
 &nbsp;当前登录用户：
    <asp:Label ID=lb_userName runat=server></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;套餐级别：
    <asp:Label ID=lb_setMealName runat=server></asp:Label>
       
		<img src="Images/home.gif" />&nbsp;&nbsp;<a href="default.aspx">回首页</a>
		&nbsp;&nbsp;&nbsp;
		<img src="Images/quit.gif" width="16" height="16" />&nbsp;&nbsp;
       <A style="CURSOR: hand" onclick="{window.parent.location.href='logout.aspx';}">退出系统</A>
</div>
  
      
     
<div class="list">
	<ul class="yiji ">
        <li> 
		   <A href="Searchjiangjin.aspx" target=right><span class="STYLE10">用户信息<asp:Label ID=Label3 runat=server></asp:Label></span></A>
        </li>
          <li style="background-color:#808080;"> 
		   <A href="TiXian.aspx" target=right>
               <span class="STYLE10">旅游积分：<asp:Label ID=lb_jifen runat=server></asp:Label>  奖金：<asp:Label ID=lb_money runat=server></asp:Label></span>
		   </A>
        </li>          
		<li> 
		   <A href="TiXian.aspx" target=right><span class="STYLE10">奖金提现<asp:Label ID=Label1 runat=server></asp:Label></span></A>
        </li>
        <li> 
		   <A href="JiFen.aspx" target=right><span class="STYLE10">奖金积分互转<asp:Label ID=Label2 runat=server></asp:Label></span></A>
        </li>       		
		
     
    <li><a href="#" class="inactive">系统设置</a>
			<ul style="display: none">
				
						<li><a href="UserEditB.aspx" target="right">修改资料</a></li>
						<li><span><a href="UserEditA.aspx" target=right>修改密码</a>&nbsp;&nbsp;</span></li>
			</ul>
		</li>
    <li><a href="Logout.aspx"  target="right"><span class="STYLE10">安全退出</span></a><br></li>      
	</ul>
</div>


    <!--end of div table-->
    <div class="table">
<TABLE cellSpacing=0 cellPadding=0 width="999" align=center border=1 > 
   <div class="zongbiao">
    <TD vAlign=top width=215>
      <TABLE cellSpacing=10 cellPadding=0 width=240 border=0>               
       </TABLE></TD>
	  <td background="Images/main_16.gif" width="4"></td>
    <TD width="777" vAlign=top bgColor=#ffffff><!-- 右侧开始 -->
   <!--   <IFRAME class=td1 name=right src="user.asp" frameBorder=0 width="100%" height=550></IFRAME>-->
  <IFRAME class=td1 name=right src="Searchjiangjin.aspx?id=1" frameBorder=0 width="100%" height=580></IFRAME>
     <!-- 框架结束 --></TD>
  <TR>
    <TD colSpan=4>	  
	  <table class="submenu"    width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25" align="right" background="Images/main_25.gif"></td>
  </tr>
  <tr><td height="40" align="center" >Copyright 2010-2017 奖金积分系统 All Rights Reserved.<br>  </td>
  </tr>
      </table>  
	 </TD></TR>
    </div>
	  </TABLE>

        </div><!--end of div table-->


    	<!-- Contenedor 菜单导航开始-->
   <!-- <div class="cssmenu">
	<ul id="accordion" class="accordion">
		<li>
			<div class="link"><i class="fa fa-paint-brush"></i>Diseño web<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="#">Photoshop</a></li>
				<li><a href="#">HTML</a></li>
				<li><a href="#">CSS</a></li>
				<li><a href="#">Maquetacion web</a></li>
			</ul>
		</li>
		<li>
			<div class="link"><i class="fa fa-code"></i>Desarrollo front-end<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="#">Javascript</a></li>
				<li><a href="#">jQuery</a></li>
				<li><a href="#">Frameworks javascript</a></li>
			</ul>
		</li>
		<li>
			<div class="link"><i class="fa fa-mobile"></i>Diseño responsive<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="#">Tablets</a></li>
				<li><a href="#">Dispositivos mobiles</a></li>
				<li><a href="#">Medios de escritorio</a></li>
				<li><a href="#">Otros dispositivos</a></li>
			</ul>
		</li>
		<li><div class="link"><i class="fa fa-globe"></i>Posicionamiento web<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="#">Google</a></li>
				<li><a href="#">Bing</a></li>
				<li><a href="#">Yahoo</a></li>
				<li><a href="#">Otros buscadores</a></li>
			</ul>
		</li>
	</ul>
    </div>-->

    <script src="main.files/cssmenu2.js" type="text/javascript"></script>
	  <script language=javascript>
function UpdateSession()
{
    document.getElementById("zhuboImg").src="updatesession.aspx?id="+Math.floor(Math.random()*1000);
}
setInterval("UpdateSession()",5000);
</script>
<img src="" id=zhuboImg style=" display:none;" />

</body>
</html>

