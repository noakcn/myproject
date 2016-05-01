package com.cc.domain;

/**
 * Created by yewangwang on 2016/5/1.
 */
public class Customer {
    private String id;
    private String name;
    private String identity;
    private String mobile;

    public Customer() {
    }

    public Customer(String id, String name, String identity, String mobile) {
        this.id = id;
        this.name = name;
        this.identity = identity;
        this.mobile = mobile;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
}
