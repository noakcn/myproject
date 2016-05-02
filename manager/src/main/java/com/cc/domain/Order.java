package com.cc.domain;

import com.cc.util.myEnumClass.OrderStatus;

import java.util.Date;

/**
 * Created by yewangwang on 2016/5/1.
 */
public class Order {
    private String id;
    private Customer customer;
    private Home home;
    private Double yajin;
    private Double price;
    private Double off;
    private Date ruzhu_date;
    private Integer day_number;
    private Date tuifang_date;
    private Double refund_price;
    private Double total_price;
    private Integer status;

    public Order() {
        this.home=new Home();
        this.customer=new Customer();
    }

    public Order(String id, Double yajin, Double price, Double off, Date ruzhu_date, Integer day_number) {
        this.id = id;
        this.yajin = yajin;
        this.price = price;
        this.off = off;
        this.ruzhu_date = ruzhu_date;
        this.day_number = day_number;
        this.status = OrderStatus.WeiWanCheng.getCode();
        this.home=new Home();
        this.customer=new Customer();

    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Double getTotal_price() {
        return total_price;
    }

    public void setTotal_price(Double total_price) {
        this.total_price = total_price;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Home getHome() {
        return home;
    }

    public void setHome(Home home) {
        this.home = home;
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

    public Date getRuzhu_date() {
        return ruzhu_date;
    }

    public void setRuzhu_date(Date ruzhu_date) {
        this.ruzhu_date = ruzhu_date;
    }

    public Integer getDay_number() {
        return day_number;
    }

    public void setDay_number(Integer day_number) {
        this.day_number = day_number;
    }

    public Date getTuifang_date() {
        return tuifang_date;
    }

    public void setTuifang_date(Date tuifang_date) {
        this.tuifang_date = tuifang_date;
    }

    public Double getRefund_price() {
        return refund_price;
    }

    public void setRefund_price(Double refund_price) {
        this.refund_price = refund_price;
    }
}
