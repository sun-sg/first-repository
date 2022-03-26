<%--
  Created by IntelliJ IDEA.
  User: 86178
  Date: 2022/3/15
  Time: 0:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html >
<head>
    <title>四则运算</title>
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
        #1,#2,#3,#4{
            width: 500px;
            height: 40px;
            border: 1px solid #A6A6A6 ;
            /*设置边框圆角*/
            border-radius: 5px;
            padding-left: 10px;
        }

        .anniu{
            width: 200px;
            padding:8px;
            background-color: chartreuse;
            border-color: aqua;
            -moz-border-radius: 10px;
            -webkit-border-radius: 10px;
            border-radius: 10px;
            -khtml-border-radius: 10px;
            text-align: center;
            vertical-align: middle;
            border: 1px solid transparent;
            font-weight: 900;
            font-size:125%
        }
        .btn_sub{
            width: 100px;
            height: 40px;
            background-color: turquoise;
            border: 2px solid turquoise ;
        }
    </style>
</head>
<body>
<%
    String name =(String)session.getAttribute("username");
%>
<div id="con">
<h1 align="center">欢迎登陆<%=name%></h1>
<div align="center">
    <form action="test.jsp" align="center">
        <table border="0" cellpadding="0" cellspacing="0" align="center">
            <tr id="1"><td>一百以内加减乘除：<input type="radio" name="type" value="question_01"></td> </tr>
            <tr id="2"><td>一百以内括号算式:<input type="radio" name="type" value="question_02"></td></tr>
            <tr id="3"> <td>一百以内分式算式:<input type="radio" name="type" value="question_03"></td></tr>

            <tr align="center" id="4" >
                <td align="center"  colspan="3"><input type="submit" class="btn_sub" value="做题"></td>
            </tr>
        </table>
    </form>
    <table align="center">
        <tr><td><a href="choicegrade.jsp" ><button class="anniu">查看成绩</button></a></td></tr>
        <tr><td><a href="choicelastgrade.jsp"><button class="anniu">查看上次最后成绩</button></a></tr></td>
        <tr><td><a href="logout.jsp"><button class="anniu">退出</button></a></td></tr>
    </table>
</div>
</div>
</body>

</html>