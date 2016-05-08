package com.cc.controller;

import com.cc.domain.Home;
import com.cc.domain.Order;
import com.cc.request.EditOrderRequest;
import com.cc.response.OrderDetailResponse;
import com.cc.service.BasicService;
import com.cc.util.myEnumClass.HomeStatus;
import com.cc.util.myEnumClass.OrderStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by yewangwang on 2016/3/7.
 */
@Controller
@RequestMapping("/operator")
public class DingDanGuanLiController {
    @Resource(name = "KeFangYuDingServiceImpl")
    BasicService orderService;
    @Resource(name="CustomerServiceImpl")
    BasicService customerService;
    @Resource(name = "FangYuanLuRuServiceImpl")
    BasicService homeService;

    @RequestMapping("/get/order/list.do")
    public String findOrderList(HttpServletRequest request) {
        List<Order> orderList = orderService.findAll(null, null, null);
        List<OrderDetailResponse> responseList = new ArrayList<>();
        for (Order o : orderList) {
            OrderDetailResponse orderDetailResponse = new OrderDetailResponse(o);
            responseList.add(orderDetailResponse);
        }

        request.setAttribute("orderList", responseList);

        return "dingdanguanli";
    }

    @RequestMapping("/show/order/detail.do")
    public String findOrder(HttpServletRequest request) {
        String id = request.getParameter("id");

        if (id == null) return null;
        Order order = new Order();
        order.setId(id);
        order = (Order) orderService.findOne(order, null, null);
        OrderDetailResponse response = new OrderDetailResponse(order);
        request.setAttribute("type",1);
        request.setAttribute("order", response);
        return "orderdetail";
    }

    @RequestMapping("/order/to/edit.do")
    public String toEditOrder(HttpServletRequest request) {
        String id = request.getParameter("id");

        if (id == null) return null;
        Order order = new Order();
        order.setId(id);
        order = (Order) orderService.findOne(order, null, null);
        OrderDetailResponse response = new OrderDetailResponse(order);

        request.setAttribute("order", response);
        return "orderedit";
    }

    @RequestMapping("/order/do/edit.do")
    public String editOrder(EditOrderRequest editOrderRequest, HttpServletRequest request) {

        String id = editOrderRequest.getId();
        if (id == null) return null;
        Order order = new Order();
        order.setId(id);
        order = (Order) orderService.findOne(order, null, null);
        order.getCustomer().setName(editOrderRequest.getCustomer_name());
        order.getCustomer().setMobile(editOrderRequest.getMobile());
        order.getCustomer().setIdentity(editOrderRequest.getIdentity());
        order.setYajin(editOrderRequest.getYajin());
        order.setOff(editOrderRequest.getOffer());
        order.setTotal_price(order.getDay_number()*order.getPrice()*order.getOff()/100);

        customerService.update(order.getCustomer(),null,null);
        orderService.update(order, null, null);

        OrderDetailResponse response = new OrderDetailResponse(order);
        request.setAttribute("order", response);
        request.setAttribute("type",1);
        request.setAttribute("msg","编辑成功");
        return "orderdetail";
    }

    @RequestMapping("/order/delete.do")
    public String revokeOrder(HttpServletRequest request) {
        String id = request.getParameter("id");

        if (id == null) return null;
        Order order = new Order();
        order.setId(id);
        order.setStatus(OrderStatus.Revoke.getCode());
        orderService.update(order,null,null);
        order = (Order) orderService.findOne(order, null, null);
        Home home=order.getHome();
        home.setStatus(HomeStatus.KongXiang.getCode());
        homeService.update(home,null,null);

        OrderDetailResponse response = new OrderDetailResponse(order);
        request.setAttribute("order", response);
        request.setAttribute("type",1);
        request.setAttribute("msg", "订单撤销成功");
        return "orderdetail";
    }
}
