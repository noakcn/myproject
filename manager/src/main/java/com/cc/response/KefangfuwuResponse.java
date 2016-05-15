package com.cc.response;

import com.cc.domain.Kefangfuwu;
import com.cc.util.RandDomId;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by yewangwang on 2016/5/15.
 */
public class KefangfuwuResponse {
    private String id;
    private String homeId;
    private HomeResponse home;
    private String content;
    private Integer enable;
    private Date createDate;
    private Integer status;
    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    public KefangfuwuResponse() {
        this.id = RandDomId.getId();
        this.createDate = new Date();
        this.status = 0;
    }


    public KefangfuwuResponse(Kefangfuwu o) {
        this.id = o.getId();
        this.home = new HomeResponse(o.getHome());
        this.content = o.getContent();
        this.createDate = o.getCreateDate();
        this.status = o.getStatus();
    }

    public HomeResponse getHome() {
        return home;
    }

    public void setHome(HomeResponse home) {
        this.home = home;
    }

    public SimpleDateFormat getSdf() {
        return sdf;
    }

    public void setSdf(SimpleDateFormat sdf) {
        this.sdf = sdf;
    }


    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getCreateDate() {
        return sdf.format(createDate);
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
