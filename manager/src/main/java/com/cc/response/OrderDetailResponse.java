package com.cc.response;

import com.cc.domain.Customer;
import com.cc.domain.Home;
import com.cc.domain.Order;
import com.cc.util.DateType;
import com.cc.util.DateUtils;
import com.cc.util.myEnumClass.OrderStatus;
import com.sun.org.apache.xpath.internal.operations.Or;

/**
 * Created by yewangwang on 2016/5/1.
 */
public class OrderDetailResponse {
    private String id;
    private Customer customer;
    private Home home;
    private Double yajin;
    private Double price;
    private String off;
    private String ruzhu_date;
    private Integer day_number;
    private String tuifang_date;
    private Double refund_price;
    private Double total_price;
    private Double yinbujine;
    private Integer status;
    private String statusStr;

    public OrderDetailResponse(Order o) {

        this.id = o.getId();
        this.customer = o.getCustomer();
        this.home = o.getHome();
        this.yajin = o.getYajin();
        this.price = o.getPrice();
        this.off = String.valueOf(o.getOff()) + "%";
        this.ruzhu_date = DateUtils.formatDate(DateType.TYPE_2, o.getRuzhu_date());
        this.day_number = o.getDay_number();
        this.tuifang_date = DateUtils.formatDate(DateType.TYPE_2, o.getTuifang_date());
        this.refund_price = o.getRefund_price();
        this.total_price = o.getTotal_price();
        this.status = o.getStatus();
        this.statusStr =OrderStatus.getValueByCode(status);
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getStatusStr() {
        return statusStr;
    }

    public void setStatusStr(String statusStr) {
        this.statusStr = statusStr;
    }

    public Double getYinbujine() {
        return yinbujine;
    }

    public void setYinbujine(Double yinbujine) {
        this.yinbujine = yinbujine;
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

    public String getOff() {
        return off;
    }

    public void setOff(String off) {
        this.off = off;
    }

    public String getRuzhu_date() {
        return ruzhu_date;
    }

    public void setRuzhu_date(String ruzhu_date) {
        this.ruzhu_date = ruzhu_date;
    }

    public Integer getDay_number() {
        return day_number;
    }

    public void setDay_number(Integer day_number) {
        this.day_number = day_number;
    }

    public String getTuifang_date() {
        return tuifang_date;
    }

    public void setTuifang_date(String tuifang_date) {
        this.tuifang_date = tuifang_date;
    }

    public Double getRefund_price() {
        return refund_price;
    }

    public void setRefund_price(Double refund_price) {
        this.refund_price = refund_price;
    }

    public Double getTotal_price() {
        return total_price;
    }

    public void setTotal_price(Double total_price) {
        this.total_price = total_price;
    }
}
