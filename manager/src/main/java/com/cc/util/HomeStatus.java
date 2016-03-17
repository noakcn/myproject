package com.cc.util;

/**
 * Created by yewangwang on 2016/3/17.
 */
public enum HomeStatus {
    KongXiang(10,"空闲"),
    YiRuZhu(20,"已入住"),
    DaShaoZhong(30,"打扫中"),
    BuKeYong(40,"不可用");
    private int code;
    private String text;
    private HomeStatus(int code ,String text){
        this.code=code;
        this.text=text;
    }
}
