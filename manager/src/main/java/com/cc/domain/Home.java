package com.cc.domain;

/**
 * 客房信息model
 * Created by yewangwang on 2016/3/17.
 */
public class Home {
    private String id;
    private String bianhao;
    private Integer louceng;
    private Integer status;
    private Double price;
    private Integer type;


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

    public Integer getStatus() {
        return status;
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

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
