<%@ page import="com.entity.QuestionBank" %>
<%@ page import="java.util.List" %>
<%@ page import="com.util.Check" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.dao.UserDao" %>
<%@ page import="com.dao.UserDaoImp" %><%--
  Created by IntelliJ IDEA.
  User: 86178
  Date: 2022/3/20
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>检查页面</title>
    <style>
        #1{
            float: right;
            margin: 15px;
        }
        #2{
            float: right;
            margin: 40px;
        }
 /*       #con{
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
        }*/
        #con{
            background: url("image/1.jpeg") no-repeat fixed center;
            background-size: cover;
        }
        .ziti{
            font-size: large;
            color: black;
        }
        .btn_sub{
            width: 150px;
            height: 40px;
            background-color :turquoise;
            border: 1px solid turquoise ;
        }
        .zb{
            float: right;
            margin: 50px;
        }
        #cor{
            color: red;
        }
    </style>
</head>
<body>
    <%
       List<QuestionBank> ls =(List<QuestionBank>)session.getAttribute("lt");
        String name =(String)session.getAttribute("username");
        JspWriter mount =pageContext.getOut();
        UserDao ud  = new UserDaoImp();
        List<String> flag = new ArrayList<String>();
        List<String> answers = new ArrayList<String>();
        int count = 0;
        int grade = 0;
        for(int i=0;i<20;i++){
            String answer = request.getParameter("qt_"+(i+1));
            answers.add(answer);
            String a = ls.get(i).getResult();
            Check ch = new Check();
            int b=ch.DoCheck(answer,a);
            if(b==1){
                count++;
                grade = grade + 5;
                flag.add("√");
            }else {
                flag.add("×");
            }
        }
        ud.InGrade(name,grade);
        ud.InLastGrade(name,grade);
    %>
    <div id="con">
    <table>
        <tr>
            <div class="zb" align="center"><td class="ziti">成绩：<%=grade%></td></div>
        </tr>
        <tr>
            <table align="center" cellspacing="10" width="70%" border="0" class="ziti">
                <%
                    for(int i=0;i<20;i++){
                        QuestionBank q = ls.get(i);%>
                <tr>
                    <td  width="10px" align="center"><%=q.getContent()%></td>
                    <td  width="10px">用户答案：</td>
                    <td  width="10px"><%=answers.get(i)%></td>
                    <td  width="10px" id="cor"><%=flag.get(i)%></td>
                    <td  width="10px">正确答案：</td>
                    <td  width="10px"><%=q.getResult()%></td>
                </tr>
                <%}%>
            </table>
        </tr>
        <tr><td width="25%" align="center"><a href="index.jsp"><button  class="btn_sub">再做一次</button></a></td>
            <td width="25%" align="center"> <a href="logout.jsp"><button  class="btn_sub">退出</button></a></td></tr>
    </table>
</div>
</body>
</html>
