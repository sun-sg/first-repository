<%@ page import="com.entity.QuestionBank" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="com.dao.QuestionBankDaoImp" %><%--
  Created by IntelliJ IDEA.
  User: 86178
  Date: 2022/3/16
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <base href="<%=basePath%>">
    <title>做题页面</title>
    <style type="text/css">
        #con{
            position:absolute;
            top:0;
            left:0;
            height:100%;
            width:100%;
            background-image:url("image/3.jpeg");
            background-position: center 0;
            background-repeat: no-repeat;
            background-attachment:fixed;
            background-size: cover;
            -webkit-background-size: cover;
            -o-background-size: cover;
            zoom: 1;
        }

        .rg_right{
            /*border: 1px solid red;*/
            float: right;
            margin: 15px;
        }
        .ziti{
            font-size: large;
            color: black;
            line-height: normal;
            text-align: left;
        }
        .anniu{
            width: 100px;
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
            width: 50px;
            height: 30px;
            background-color: turquoise;
            border: 1px solid turquoise ;
            text-align: center;
        }
        td{
            width: 10px;
        }
    </style>
    <script>
        var s=2400;
        window.onload=function start(){
            if(s==2400){
                var btn=document.getElementsByTagName("button")[0];
                var time=setInterval(function (){
                    if(s<=0){
                        clearInterval(time);
                        s=5;
                        finish(s);
                    }else{
                        var f = parseInt(s/60);
                        btn.innerHTML=f+":"+s%60;
                        s--;
                    }
                },1000);
            }

        }
        function finish(x){
            if(s==0){
                alert('考试时间到，考试结束。');
            }else{
                var h = x-s-1;
                var y = parseInt(h/60);
                alert('总用时 '+y+':'+h%60);
            }
        }
    </script>
</head>
<body>
<%
    String type = request.getParameter("type");
    QuestionBankDaoImp qb = new QuestionBankDaoImp();
    List<QuestionBank> lt = null;
    if(type.equals("question_01")){
        lt = qb.chutizs() ;
    } else if(type.equals("question_02")) {
        lt = qb.chutikh();
    } else if(type.equals("question_03")){
        lt = qb.chutifs();
    }
    HttpSession session = request.getSession();
    session.setAttribute("lt", lt);
%>
<div id="con">
    <h2 align="center">做题界面</h2>
    <div class="rg_right">
        <button class="anniu"></button>
    </div >
    <form action="check.jsp" method="post">
    <div class="ziti">
        <table align="center"  cellspacing="5" width="80%">
    <%int i;%>
        <tr>
            <% for( i = 0; i < 2; i++){
            QuestionBank q=lt.get(i);%>
<%--            mount.print(q.getContent()+"&nbsp");--%>

        <td><%=q.getContent()%></td>
        <td ><input  type="text" name="qt_<%=i+1%>" ><br></td>
    <%} %>
        </tr>
        <tr>
            <% for( i = 2; i < 4; i++){
                QuestionBank q=lt.get(i);%>
            <%--            mount.print(q.getContent()+"&nbsp");--%>

            <td><%=q.getContent()%></td>
            <td ><input type="text" name="qt_<%=i+1%>" ><br></td>
            <%} %>
        </tr>
        <tr>
            <% for( i = 4; i < 6; i++){
                QuestionBank q=lt.get(i);%>
            <%--            mount.print(q.getContent()+"&nbsp");--%>

            <td><%=q.getContent()%></td>
            <td ><input  type="text" name="qt_<%=i+1%>" ><br></td>
            <%} %>
        </tr>
        <tr>
            <% for( i = 6; i < 8; i++){
                QuestionBank q=lt.get(i);%>
            <%--            mount.print(q.getContent()+"&nbsp");--%>

            <td><%=q.getContent()%></td>
            <td ><input  type="text" name="qt_<%=i+1%>" ><br></td>
            <%} %>
        </tr>
        <tr>
            <% for( i = 8; i < 10; i++){
                QuestionBank q=lt.get(i);%>
            <%--            mount.print(q.getContent()+"&nbsp");--%>

            <td><%=q.getContent()%></td>
            <td ><input  type="text" name="qt_<%=i+1%>" ><br></td>
            <%} %>
        </tr>
        <tr>
            <% for( i = 10; i < 12; i++){
                QuestionBank q=lt.get(i);%>
            <%--            mount.print(q.getContent()+"&nbsp");--%>

            <td><%=q.getContent()%></td>
            <td ><input  type="text" name="qt_<%=i+1%>" ><br></td>
            <%} %>
        </tr>
        <tr>
            <% for( i = 12; i < 14; i++){
                QuestionBank q=lt.get(i);%>
            <%--            mount.print(q.getContent()+"&nbsp");--%>

            <td><%=q.getContent()%></td>
            <td ><input  type="text" name="qt_<%=i+1%>" ><br></td>
            <%} %>
        </tr>
        <tr>
            <% for( i = 14; i < 16; i++){
                QuestionBank q=lt.get(i);%>
            <%--            mount.print(q.getContent()+"&nbsp");--%>

            <td><%=q.getContent()%></td>
            <td ><input  type="text" name="qt_<%=i+1%>" ><br></td>
            <%} %>
        </tr>
        <tr>
            <% for( i = 16; i < 18; i++){
                QuestionBank q=lt.get(i);%>
            <%--            mount.print(q.getContent()+"&nbsp");--%>

            <td><%=q.getContent()%></td>
            <td ><input  type="text" name="qt_<%=i+1%>" ><br></td>
            <%} %>
        </tr>
        <tr>
            <% for( i = 18; i < 20; i++){
                QuestionBank q=lt.get(i);%>
            <%--            mount.print(q.getContent()+"&nbsp");--%>

            <td><%=q.getContent()%></td>
            <td ><input  type="text" name="qt_<%=i+1%>" ><br></td>
            <%} %>
        </tr>
        <tr>
    <td class="btn_sub" ><input  type="submit" class="btn_sub" onclick="finish(2400)" value="提交"></td>
            <td class="btn_sub"><input type="reset" class="btn_sub" value="重置"></td>
        </tr>
    </table>
    </div>
</form>
</div>
</body>
</html>