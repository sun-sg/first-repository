package com.entity;

public class QuestionBank {
    private int id;
    private String content;
    private String result;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    @Override
    public String toString() {
        return "QuestionBank{" +
                "id=" + id +
                ", content='" + content + '\'' +
                ", result='" + result + '\'' +
                '}';
    }
}
