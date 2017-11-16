<%@ page language="C#" autoeventwireup="true" inherits="User_Login, App_Web_x1tbcymf" %>



<html>
<head>
<title>旅游积分系统会员登陆</title>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312"> 
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
    background-color: #4A374A;
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
        background-color: #2D2D3F;
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
</head>
   <body>
     <form id=form1 runat=server>
        <div class="login">
            <h1>Login</h1>
            <div class="user">
                
                 <input name="UserName" id="UserName" placeholder="用户名" runat=server type="text" class="sr" size="15" maxlength="50" />
            </div>
            <div class="passwd">
                  
                  <input type="password" nname="UserPwd"  placeholder="密码" id="UserPwd" runat=server class="sr" size="15" maxlength="50">
            </div>
            <div class="yanzhengma">
                  <span class="style1">请输入验证码</span>
                  <input name="password" id="GetCode" runat=server type="text" class="sr" size="5" style="width:80px;height:25px;"> 
                  <img id="validatecode" src='code.aspx' align='absmiddle' border='0' >
                <asp:ImageButton ID=ib_login runat=server ImageUrl="images/bt_login.gif" onclick="ib_login_Click" />
               
            </div>
        </div>
           
              
</form>
</body>
</html>