package com.cc.util.myEnumClass;

/**
 * ErrorCode
 * Created by yewangwang on 2016/3/18.
 * 3laoshi(C)
 */
public enum  ErrorCode {
    /**
     * 用户errorcode
     */
    NoLogin(-1001,"未登录用户，请登录"),
    EmptyNameOrPwd(-1002,"用户名或密码为空"),
    LoginDenied(-1003,"用户名或密码错误,登录被拒绝"),
    UnauthorizedAccess(-1004,"访问被拒绝,未授权的访问,请登录后重试"),

    /**
     * home errorcode
     */
    EmptyBianHao(-2001,"编号为空"),
    EmptyPrice(-2002,"价格为空"),
    AddHomeError(-2003,"添加房间失败，请重试或联系管理员"),
    AddHomeSuccess(1000,"添加成功");


    private int code;
    private String text;
    private ErrorCode(int code ,String text){
        this.code=code;
        this.text=text;
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
