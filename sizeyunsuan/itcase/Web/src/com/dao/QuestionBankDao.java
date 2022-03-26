package com.dao;

import com.entity.Grade;
import com.entity.QuestionBank;

import java.util.List;

public interface QuestionBankDao {
   /***
    * 出题
    * @return
    */
   public List<QuestionBank> chutizs();
   public List<QuestionBank> chutifs();
   public List<QuestionBank> chutikh();
}