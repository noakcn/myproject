package com.cc.util.myEnumClass;

/**
 * Created by yewangwang on 2016/3/17.
 */
public enum OrderStatus {
    WeiWanCheng(0,"未完成"),
    YiWanCheng(1,"已完成"),
    Revoke(2,"已撤销")
    ;
    private int code;
    private String text;
    private OrderStatus(int code , String text){
        this.code=code;
        this.text=text;
    }
    public static String getValueByCode(int code){
        for(OrderStatus status: OrderStatus.values()){
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
