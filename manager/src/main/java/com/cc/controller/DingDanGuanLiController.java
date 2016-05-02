package com.cc.controller;

import com.cc.domain.Order;
import com.cc.response.OrderDetailResponse;
import com.cc.service.BasicService;
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

    @RequestMapping("/get/order/list")
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

    @RequestMapping("/show/order/detail")
    public String findOrder(HttpServletRequest request) {
        String id = request.getParameter("id");

        if (id == null) return null;
        Order order = new Order();
        order.setId(id);
        order = (Order) orderService.findOne(order, null, null);
        OrderDetailResponse response = new OrderDetailResponse(order);
        request.setAttribute("order", response);
        return "orderdetail";
    }


}
