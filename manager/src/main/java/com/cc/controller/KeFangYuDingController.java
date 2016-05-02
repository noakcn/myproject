package com.cc.controller;

import com.cc.domain.Customer;
import com.cc.domain.Home;
import com.cc.domain.Order;
import com.cc.request.MakeOrderRequest;
import com.cc.response.HomeResponse;
import com.cc.response.OrderDetailResponse;
import com.cc.service.BasicService;
import com.cc.util.RandDomId;
import com.cc.util.myEnumClass.HomeStatus;
import com.cc.util.myEnumClass.OrderStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by yewangwang on 2016/3/7.
 */
@Controller
@RequestMapping("/operator")
public class KeFangYuDingController {

    @Resource(name = "FangYuanLuRuServiceImpl")
    private BasicService searchService;
    @Resource(name = "FangYuanLuRuServiceImpl")
    private BasicService homeService;
    @Resource(name = "KeFangYuDingServiceImpl")
    private BasicService orderService;
    @Resource(name = "CustomerServiceImpl")
    private BasicService customerService;


    @RequestMapping("/show/reserve.do")
    public String showReserve(HttpServletRequest request) {
        List<Home> homeList = searchService.findAll(null, null, null);
        List<HomeResponse> homeResponseList = new ArrayList<>();
        for (Home t : homeList) {
            HomeResponse homeResponse = new HomeResponse(t);
            homeResponseList.add(homeResponse);
        }
        request.setAttribute("list", homeResponseList);
        return "kefangyuding";
    }

    @RequestMapping("/dengjiruzhu.do")
    public String bookHome(MakeOrderRequest makeOrderRequest, HttpServletRequest request) {
        Customer customer = new Customer(
                RandDomId.getId(),
                makeOrderRequest.getName(),
                makeOrderRequest.getIdentity(),
                makeOrderRequest.getMobile()
        );
        customerService.insert(customer, null, null);
        Home condition = new Home();
        condition.setId(makeOrderRequest.getHome_id());
        Home home = (Home) homeService.findOne(condition, null, null);
        Date now = new Date();
        Order order = new Order(
                RandDomId.getId(),
                makeOrderRequest.getYajin(),
                makeOrderRequest.getPrice(),
                makeOrderRequest.getOff(),
                now,
                makeOrderRequest.getDay_number()
        );
        order.setCustomer(customer);
        order.setHome(home);
        order.setTotal_price(order.getPrice() * order.getDay_number() * order.getOff() / 100);

        orderService.insert(order, null, null);

        home.setStatus(HomeStatus.YiRuZhu.getCode());
        homeService.update(home, null, null);


        OrderDetailResponse responseObject = new OrderDetailResponse(order);
        request.setAttribute("order", responseObject);
        request.setAttribute("msg", "开房成功");
        return "orderdetail";
    }

    @RequestMapping("/tuifang")
    public String tuiFang(HttpServletRequest request) {
        String id = request.getParameter("id");
        if (id == null) return null;
        Order condition = new Order();
        Home homeCondition=new Home();
        homeCondition.setId(id);
        condition.setHome(homeCondition);
        Order order = (Order) orderService.findOne(condition, null, null);
        order.setTuifang_date(new Date());
        order.setStatus(OrderStatus.YiWanCheng.getCode());
        orderService.update(order, null, null);
        OrderDetailResponse responseObject = new OrderDetailResponse(order);
        homeCondition.setStatus(HomeStatus.KongXiang.getCode());
        homeService.update(homeCondition,null,null);


        request.setAttribute("msg", "退房成功");
        request.setAttribute("order", responseObject);
        return "orderdetail";

    }
}
