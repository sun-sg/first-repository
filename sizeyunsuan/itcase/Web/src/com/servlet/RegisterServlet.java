package com.servlet;

import com.dao.UserDao;
import com.dao.UserDaoImp;
import com.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");

        User user = new User();
        user.setName(name);
        user.setPassword(password);
        UserDao ud = new UserDaoImp();

        boolean us = ud.register(user);
        if(us) {
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
}
