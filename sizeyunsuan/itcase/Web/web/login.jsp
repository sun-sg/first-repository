<%--
  Created by IntelliJ IDEA.
  User: 86178
  Date: 2022/3/15
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    // 获取绝对路径路径 ,开发项目一定要使用绝对路径，不然肯定出错
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":"
            + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="<%=basePath %>" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录界面</title>
   <style type="text/css">
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

       #name,#password,#name{
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
<h1 align="center">用户登录</h1>
        <div>
            <form action="loginServlet" method="post">
                <table align="center">
                    <tr>
                        <td class="td_left"><label for="name">用户名</label></td>
                        <td class="td_right"><input type="text" name="name" id="name" placeholder="请输入您的账号" autofocus="autofocus"></td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="password">密码</label></td>
                        <td class="td_right"><input type="password" name="password" id="password" placeholder="请输入您的密码"></td>
                    </tr>
                    <tr>
                        <td colspan="1"></td>
                        <td>
                            <input colspan="2" align="center" type="submit" class="btn_sub" value="登录"/>
                            <input colspan="2" align="center" type="reset" class="btn_sub" value="重置"/>
                            <a href="register.jsp" target="_blank">注册</a>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
</div>
</body>
</html>
