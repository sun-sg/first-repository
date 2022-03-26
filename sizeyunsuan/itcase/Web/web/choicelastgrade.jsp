<%@ page import="com.dao.UserDao" %>
<%@ page import="com.dao.UserDaoImp" %><%--
  Created by IntelliJ IDEA.
  User: 86178
  Date: 2022/3/20
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看上次最后成绩</title>
    <style>
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
        .re_right{
            float: right;
            margin: 20px;
        }
        #btn_sub{
            width: 50px;
            height: 30px;
            background-color: turquoise;
            border: 1px solid turquoise ;
            text-align: center;
        }
        .rg{
            float: right;
            margin: 30px;
        }
    </style>
</head>
<body>
<div id="con">
    <%
        String name =(String)session.getAttribute("username");
        UserDao ud = new UserDaoImp();
        int grade = ud.LastGrade(name);
    %>
    <h1>你上次最后的成绩为<%=grade%></h1>
    <div class="rg"><a href="index.jsp"><button>返回</button></a></div>
    <div class="rg">
        <a href="logout.jsp"><button class="re_right" id="btn_sub">退出</button></a>
</div>

</div>
</body>
</html>
