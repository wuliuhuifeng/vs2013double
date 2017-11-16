<%@ page language="C#" autoeventwireup="true" inherits="admin_Login, App_Web_jivjg7cu" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>管理系统</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<style type="text/css">
<!--
.sr {height: 40px;width: 240px;}
.style1 {color: #3c4d82;font-size:15px;}
    .login {
        align-content:center;
        top:50%;
    }
body {	

    margin：0px solid #000;
    positon:absolute;
    text-align:center;
    border:0px solid #f00;
    background-color: #312E3D;
    }
div{
    border:0px solid #b6ff00;
}
    input {
        outline: none;
        padding: 10px;
        font-size: 13px;
        color: #fff;
        text-shadow: 1px 1px 1px;
        border-top: 1px solid #312E3D;
        border-left: 1px solid #312E3D;
        border-right: 1px solid #312E3D;
        border-bottom: 1px solid #56536A;
        border-radius: 4px;
        background-color: #56536A;
    }
#form1{
    text-align:center;
    top:50%;
    margin-top:200px;
    border:0px solid #3c4d82;
}
.login h1{   
    color: #fff;    
    text-shadow:0 0 10px;    
    letter-spacing: 1px;    
    text-align: center;    
}    

}
    .user {
    text-align:center;
    margin:1 solid auto;
    height:50px;
    width:300px;
    }
     .passwd {
    text-align:center;
    margin:0 auto;
    height:50px;
    width:300px;
    }
    
      .yanzhengma {
    text-align:center;
    margin:0 auto;
    height:50px;
    width:300px;
    }
-->

</style>


</HEAD>
<BODY bgColor=#f6f6f6 leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
 <form id=form1 runat=server>
        <div class="login">
            <h1>管理员后台</h1>
            <div class="user">
                
                <input name="UserName" type="text" placeholder="用户名" class="input1" id="UserName" tabindex="1" onFocus="this.className='input11'" onBlur="this.className='input1'" size="28" runat=server>
            </div> 
            <div class="passwd">   
                    
                   <input name="UserPwd" type="password"  placeholder="密码" class="input1" id="UserPwd" tabindex="2" onFocus="this.className='input11'" onBlur="this.className='input1'" size="28" runat=server>
            </div>
             <div class="yanzhengma">
                  <span>验证码</span>
                   <input name="GetCode" type="text" class="input2" id="GetCode" tabindex="3" onFocus="this.className='input22'" onBlur="this.className='input2'" size="12" runat=server style="width:110px;height:25px;">
                        <img id="validatecode" src='code.aspx' align='absmiddle' border='0' >
               </div>
            <div class="yanzhengma">       
                    <asp:ImageButton ID=ib_login runat=server type="button"
                            ImageUrl="images/d_03.gif" onclick="ib_login_Click" />
              </div>
            
            </div>
     <div class="vip">
                <h1><a href="../Vip/Login.aspx">VIP会员登录系统</a></h1>
            </div>
    
</form>
</BODY></HTML>
