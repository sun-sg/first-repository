<%--
  Created by IntelliJ IDEA.
  User: 86178
  Date: 2022/3/15
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户注册</title>
    <style type="text/css">
        h1{
            text-align: center;
        }
        h4{
            text-align: center;color: red;
        }
        body{
            background-color: antiquewhite;
        }
        div{
            text-align: center;
        }
        #con{
            position:absolute;
            top:0;
            left:0;
            height:100%;
            width:100%;
            background-image:url("image/img.png");
            background-position: center 0;
            background-repeat: no-repeat;
            background-attachment:fixed;
            background-size: cover;
            -webkit-background-size: cover;
            -o-background-size: cover;
            zoom: 1;
        }
        #name,#password,#name,#relpassword{
            width: 251px;
            height: 32px;
            border: 1px solid #A6A6A6 ;
            /*设置边框圆角*/
            border-radius: 5px;
            padding-left: 10px;
        }

        .btn_sub{
            width: 70px;
            height: 30px;
            background-color: turquoise;
            border: 1px solid turquoise ;
        }
    </style>
</head>
<body>
<div id="con">
<h1>用户注册</h1>
<hr/>
<form action="RegisterServlet" method="post" name="registerForm">
    <div>
        <tr>
            <label>您的账号：</label>
            <input type="text" name="name" id="name" placeholder="请输入用户名" autofocus="autofocus">
        </tr>
    </div>
    <div>
        <tr>
            <label>您的密码：</label></td>
            <input type="password" name="password" id="password" placeholder="请输入密码">
        </tr>
    </div>
    <div>
        <tr>
        <label>确认密码：</label>
        <input type="password" name="relpassword" id="relpassword" placeholder="请确认密码">
        </tr>
    </div>
    <div>
        <tr>
            <button type="submit" class="btn_sub" onclick="return checkForm()">注册</button>
            <button type="reset" class="btn_sub">重置</button>
            <a href="login.jsp" target="_blank">返回登录</a>
        </tr>
    </div>
</form>

<script type="text/javascript">
    function checkForm() {
        var name = registerForm.name.value;
        var pwd = registerForm.password.value;
        var repwd = registerForm.relpassword.value;
        //alert(name + pwd + repwd);
        if (name == "" || name == null) {
            alert("请输入用户名");
            registerForm.name.focus();
            return false;
        } else if (pwd == "" || pwd == null) {
            alert("请输入密码");
            registerForm.password.focus();
            return false;
        } else if (repwd == "" || repwd == null) {
            alert("请输入确认密码");
            registerForm.relpassword.focus();
            return false;
        } else if (pwd != repwd) {
            alert("两次密码输入不一致，请重新输入!");
            registerForm.relpassword.focus();
            return false;
        }
        alert('注册成功！');
        return true;
    }
</script>

</div>
</body>
</html>
