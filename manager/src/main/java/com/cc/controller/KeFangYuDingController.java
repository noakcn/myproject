package com.cc.controller;

import com.cc.domain.Customer;
import com.cc.domain.Home;
import com.cc.domain.Order;
import com.cc.request.MakeOrderRequest;
import com.cc.response.HomeResponse;
import com.cc.service.BasicService;
import com.cc.util.RandDomId;
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
        Home home = homeService.findOne(condition, null, null);
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
        return "";
    }
}
