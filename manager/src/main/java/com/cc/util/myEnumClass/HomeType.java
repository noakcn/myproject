package com.cc.util.myEnumClass;

/**
 * 客房类型枚举
 * Created by yewangwang on 2016/3/20.
 */
public enum HomeType {
    NormalSingle(10,"标房(单)"),
    NormalDouble(20,"标房(双)"),
    BusinessSingle(30,"商务房(单)"),
    BusinessDouble(40,"商务房(双)");

    private int code;
    private String text;
    private HomeType(int code ,String text){
        this.code=code;
        this.text=text;
    }

    public static String getValueByCode(int code){
        for(HomeType homeType:HomeType.values()){
            if(homeType.getCode()==code){
                return homeType.getText();
            }
        }
        return "没有该类型";
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

