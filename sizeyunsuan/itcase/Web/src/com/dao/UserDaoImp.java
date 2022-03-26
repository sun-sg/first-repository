package com.dao;

import com.entity.Grade;
import com.entity.User;
import com.util.Jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImp implements UserDao {
    public static void main(String[] args) {
        UserDao ud = new UserDaoImp();
        List<Integer> list=ud.getGrade("王靖凯");
        for(int i=0;i< list.size();i++){
            System.out.println(list.get(i));
        }
    }
    @Override
    public User login(User user) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        User users = null;
        try {
           con = Jdbc.getCon();//获取数据库连接
            String sql = "select * from user where name =? and password =? ";
            ps = con.prepareStatement(sql);//预编译
            //设置值
            ps.setString(1,user.getName());
            ps.setString(2, user.getPassword());
            rs = ps.executeQuery();//执行sql语句
            if (rs.next()){
                users = new User();
                users.setName(rs.getString("name"));
                users.setPassword(rs.getString("password"));
            }
        } catch(ClassNotFoundException e){
            e.printStackTrace();
        }catch (SQLException e) {
            e.printStackTrace();
        }finally {
            Jdbc.close(con,ps,rs);
        }
        return users;
    }


    @Override
    public boolean register(User user) {
        Connection con = null;
        PreparedStatement ps = null;
        boolean flag = false;
        try {
            con = Jdbc.getCon();//获取数据库连接
            String sql = "insert into user(name,password) values(?,?)";
            ps = con.prepareStatement(sql);//预编译
            //设置值
            ps.setString(1,user.getName());
            ps.setString(2, user.getPassword());
            int count = ps.executeUpdate();
            if(count>0) {
                flag = true;
            }
        } catch(ClassNotFoundException e){
            e.printStackTrace();
        }catch (SQLException  e) {
            e.printStackTrace();
        }finally {
            Jdbc.close(con,ps, null);
        }
        if (flag){
            return true;
        }
        return false;
    }

    @Override
    public List<Integer> getGrade(String name) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Grade grades = null;
        try {
            con = Jdbc.getCon();//获取数据库连接
            String sql = "select * from grade where gname =? ";
            List<Integer> list = new ArrayList<>();
            ps = con.prepareStatement(sql);//预编译
            //设置值
            ps.setString(1,name);
            rs = ps.executeQuery();//执行sql语句
            while (rs.next()){
                grades = new Grade();
                grades.setGname(rs.getString("gname"));
                grades.setScore(rs.getInt("score"));
               list.add(grades.getScore());
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }finally {
            Jdbc.close(con,ps,rs);
        }
        return null;
    }

    @Override
    public int LastGrade(String name) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int a =0;
        try {
            con=Jdbc.getCon();
            String sql = "select score from user where name =?";
            ps = con.prepareStatement(sql);//预编译
            //设置值
            ps.setString(1,name);
            rs = ps.executeQuery();//执行sql语句
            if (rs.next()){
                a = rs.getInt("score");
                return a;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }finally {
            Jdbc.close(con,ps,rs);
        }
        return 0;
    }

    @Override
    public void InGrade(String name,int grade) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            con=Jdbc.getCon();
            String sql = "insert into grade(gname,score) values(?,?)";
            ps = con.prepareStatement(sql);//预编译
            //设置值
            ps.setString(1,name);
            ps.setInt(2, grade);
            int count = ps.executeUpdate();
            if(count>0) {
                System.out.println("加入成功");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }finally {
            Jdbc.close(con,ps,null);
        }
    }

    @Override
    public void InLastGrade(String name, int grade) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        boolean flag = false;
        try {
            con=Jdbc.getCon();
            String sql = "update user set score =? where name =? ";
            ps = con.prepareStatement(sql);//预编译
            //设置值
            ps.setString(2,name);
            ps.setInt(1, grade);
            int count = ps.executeUpdate();
            if(count>0) {
                System.out.println("加入成功");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }finally {
            Jdbc.close(con,ps,rs);
        }
    }

    @Override
    public void DleGrade() {
        Connection con = null;
        PreparedStatement ps = null;
        try {
            con=Jdbc.getCon();
            String sql = "truncate table grade ";
            ps = con.prepareStatement(sql);
            int count = ps.executeUpdate();
            if(count>0) {
                System.out.println("删除成功");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }finally {
            Jdbc.close(con,ps,null);
        }
    }

}
