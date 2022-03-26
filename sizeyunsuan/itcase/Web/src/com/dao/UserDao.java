package com.dao;

import com.entity.Grade;
import com.entity.User;

import java.util.List;

public interface UserDao {
    /***
     * 用户登入的方法声明
     * @param user
     * @return
     */
    public User login(User user);

    /***
     * 用户注册的方法声明
     * @param user
     * @return
     */
    public boolean register(User user);

    /***
     *查询成绩
     * @param name
     * @return
     */
    public List<Integer> getGrade(String name);

    //查询最后一次做题成绩
    public int LastGrade(String name);

    //将做题成绩加入成绩库库
    public void InGrade(String name, int grade);

    //将做题成绩加入用户库
    public void InLastGrade(String name, int grade);

    //退出将成绩表中的成绩清空
    public void DleGrade();
}
