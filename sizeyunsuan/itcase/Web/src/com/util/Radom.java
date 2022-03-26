package com.util;

import java.util.HashSet;
import java.util.Random;
import java.util.Set;

public class Radom {
    public HashSet<Integer> radom(){
        Random r = new Random();
        HashSet<Integer> hs = new HashSet<Integer>();
        while(hs.size()<20){
            int res = r.nextInt(1000)+1;
            hs.add(res);
        }
        return hs;
    }
}
