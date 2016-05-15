package com.cc.response;

import com.cc.domain.Home;
import com.cc.util.myEnumClass.HomeStatus;
import com.cc.util.myEnumClass.HomeType;

/**
 * Created by yewangwang on 2016/4/24.
 */
public class HomeResponse {

    private String id;
    /**
     * 编号
     */
    private String bianhao;
    /**
     * 楼层
     */
    private Integer louceng;
    /**
     * 房间状态
     */
    private Integer status;
    private String statusStr;
    /**
     * 价格
     */
    private Double price;
    /**
     * 房间类型
     */
    private Integer type;
    private String typeStr;

    public HomeResponse(Home home) {
        this.id=home.getId();
        this.bianhao=home.getBianhao();
        this.louceng=home.getLouceng();
        if(home.getStatus()!=null) {
            this.statusStr = HomeStatus.getValueByCode(home.getStatus() );
        }
        this.status=home.getStatus();
        this.price=home.getPrice();
        this.type=home.getType();
        if(home.getType()!=null) {
            this.typeStr = HomeType.getValueByCode(home.getType());
        }
    }

    public Integer getStatus() {
        return status;
    }

    public String getStatusStr() {
        return statusStr;
    }

    public void setStatusStr(String statusStr) {
        this.statusStr = statusStr;
    }

    public Integer getType() {
        return type;
    }

    public String getTypeStr() {
        return typeStr;
    }

    public void setTypeStr(String typeStr) {
        this.typeStr = typeStr;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getBianhao() {
        return bianhao;
    }

    public void setBianhao(String bianhao) {
        this.bianhao = bianhao;
    }

    public Integer getLouceng() {
        return louceng;
    }

    public void setLouceng(Integer louceng) {
        this.louceng = louceng;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}
