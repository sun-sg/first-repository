<%@ page import="com.dao.UserDao" %>
<%@ page import="com.dao.UserDaoImp" %><%--
  Created by IntelliJ IDEA.
  User: 86178
  Date: 2022/3/21
  Time: 17:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>退出登录</title>
</head>
<body>
<%
    UserDao ud = new UserDaoImp();
    ud.DleGrade();
    session.invalidate();
    response.sendRedirect("login.jsp");
%>
</body>
</html>
