package com.entity;

public class Grade {
    private String gname;
    private int score;

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "Grade{" +
                "gname='" + gname + '\'' +
                ", score=" + score +
                '}';
    }
}
