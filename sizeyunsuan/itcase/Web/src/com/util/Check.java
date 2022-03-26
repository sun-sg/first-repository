package com.util;

import com.dao.QuestionBankDao;
import com.dao.QuestionBankDaoImp;
import com.entity.QuestionBank;

import java.util.List;

public class Check {

    public int DoCheck(String answer,String result) {
        if(answer==null){
            return 0;
        }
        if(result.equals(answer)){
            return 1;
        }
        return 0;
    }
}
