package com.cc.request;

/**
 * Created by yewangwang on 2016/5/1.
 */
public class MakeOrderRequest {
    private String home_id;
    private Integer day_number;
    private String name;
    private String identity;
    private Double yajin;
    private Double price;
    private Double off;
    private String mobile;

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getHome_id() {
        return home_id;
    }

    public void setHome_id(String home_id) {
        this.home_id = home_id;
    }

    public Integer getDay_number() {
        return day_number;
    }

    public void setDay_number(Integer day_number) {
        this.day_number = day_number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }

    public Double getYajin() {
        return yajin;
    }

    public void setYajin(Double yajin) {
        this.yajin = yajin;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getOff() {
        return off;
    }

    public void setOff(Double off) {
        this.off = off;
    }
}
