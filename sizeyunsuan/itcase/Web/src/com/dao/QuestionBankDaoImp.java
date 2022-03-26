package com.dao;

import com.entity.QuestionBank;
import com.util.Jdbc;
import com.util.Radom;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public class QuestionBankDaoImp implements QuestionBankDao{
/*    public static void main(String[] args) {
        QuestionBankDaoImp qb = new QuestionBankDaoImp();
        List<QuestionBank> list = qb.chutizs();
        System.out.println(list);
        for(QuestionBank s:list){
            System.out.println(s.getContent());
        }
    }*/
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    QuestionBank qb = null;
    @Override
    public List<QuestionBank> chutizs() {
        Radom r = new Radom();
        HashSet hs= r.radom();
        List<QuestionBank> list = new ArrayList<>();
        for(Object a : hs) {
            try {
                con = Jdbc.getCon();
                String sql = "select * from `integer` where id =? ";
                chuti(list, a, sql);
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } finally {
                Jdbc.close(con, ps, rs);
            }
        }
        return list;
    }

    @Override
    public List<QuestionBank> chutifs() {
        Radom r = new Radom();
        HashSet hs= r.radom();
        List<QuestionBank> list = new ArrayList<>();
        for(Object a : hs) {
            try {
                con = Jdbc.getCon();
                String sql = "select * from fraction where id =?";
                chuti(list, a, sql);
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } finally {
                Jdbc.close(con, ps, rs);
            }
        }
        return list;
    }

    @Override
    public List<QuestionBank> chutikh() {
        Radom r = new Radom();
        HashSet hs= r.radom();
        List<QuestionBank> list = new ArrayList<>();
        for(Object a : hs) {
            try {
                con = Jdbc.getCon();
                String sql = "select * from bracket where id =?";
                chuti(list, a, sql);
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } finally {
                Jdbc.close(con, ps, rs);
            }
        }
        return list;
    }
    private void chuti(List<QuestionBank> list, Object a, String sql) throws SQLException {
        ps = con.prepareStatement(sql);
        ps.setObject(1,  a);
        rs = ps.executeQuery();//执行sql语句
        if (rs.next()) {
            qb = new QuestionBank();
            qb.setId(rs.getInt("id"));
            qb.setContent(rs.getString("content"));
            qb.setResult(rs.getString("result"));
            list.add(qb);
        }
    }
}
