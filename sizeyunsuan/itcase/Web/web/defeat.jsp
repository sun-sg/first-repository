<%--
  Created by IntelliJ IDEA.
  User: 86178
  Date: 2022/3/15
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登入失败</title>
    <style >
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
        h4{
            text-align: center; color: red;
        }
        body{
            background-color: antiquewhite;
        }
        div{
            text-align: center;
        }
    </style>
</head>
<body>
<div id="con">
    <h4>登入失败</h4>
<div>
    <a href="login.jsp">返回登录</a>
</div>
</div>
</body>
</html>
