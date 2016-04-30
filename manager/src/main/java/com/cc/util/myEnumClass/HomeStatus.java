package com.cc.util.myEnumClass;

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
    public static String getValueByCode(int code){
        for(HomeStatus status:HomeStatus.values()){
            if(status.getCode()==code){
                return status.getText();
            }
        }
        return "状态错误";
    }
    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
