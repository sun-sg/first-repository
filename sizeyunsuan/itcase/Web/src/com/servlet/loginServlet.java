package com.servlet;

import com.dao.UserDao;
import com.dao.UserDaoImp;
import com.entity.User;
import com.filter.EncodingFilter;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "loginServlet", value = "/loginServlet")
public class loginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String name = request.getParameter("name");
        String password = request.getParameter("password");

        User user = new User();
        user.setName(name);
        user.setPassword(password);
        UserDao ud = new UserDaoImp();

        User us = ud.login(user);
        HttpSession session = request.getSession();
        session.setAttribute("username", name);
        //把数据库中的User获取出来
        if(us!=null){
            request.getRequestDispatcher("/index.jsp").forward(request,response);
        }else {
            response.sendRedirect("defeat.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doGet(request, response);
    }
}


