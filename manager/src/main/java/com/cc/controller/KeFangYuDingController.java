package com.cc.controller;

import com.cc.domain.Home;
import com.cc.response.HomeResponse;
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
public class KeFangYuDingController {

    @Resource(name = "FangYuanLuRuServiceImpl")
    BasicService searchService;


    @RequestMapping("/show/reserve.do")
    public String showReserve( HttpServletRequest request) {
        List<Home> homeList=searchService.findAll(null, null, null);
        List<HomeResponse> homeResponseList=new ArrayList<>();
        for(Home t:homeList){
            HomeResponse homeResponse=new HomeResponse(t);
            homeResponseList.add(homeResponse);
        }
        request.setAttribute("list", homeResponseList);
        return "kefangyuding";
    }
}
