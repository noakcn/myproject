package com.cc.domain;

import com.cc.util.RandDomId;

import java.util.Date;

/**
 * Created by yewangwang on 2016/5/15.
 */
public class Kefangfuwu {
    private String id;
    private String homeId;
    private Home home;
    private String content;
    private Integer enable;
    private Date createDate;
    private Integer status;

    public Kefangfuwu() {
        this.id= RandDomId.getId();
        this.createDate=new Date();
        this.status=0;
    }

    public Home getHome() {
        return home;
    }

    public void setHome(Home home) {
        this.home = home;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getHomeId() {
        return homeId;
    }

    public void setHomeId(String homeId) {
        this.homeId = homeId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getEnable() {
        return enable;
    }

    public void setEnable(Integer enable) {
        this.enable = enable;
    }
}
