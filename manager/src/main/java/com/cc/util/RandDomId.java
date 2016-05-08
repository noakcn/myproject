package com.cc.util;

/**
 * Created by yewangwang on 2016/3/20.
 */
public class RandDomId {
    public static String getId() {

        return RandomToken.getToken().substring(0, 8);
    }


}
