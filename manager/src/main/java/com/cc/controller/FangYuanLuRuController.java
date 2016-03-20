package com.cc.controller;

import com.cc.domain.Home;
import com.cc.service.BasicService;
import com.cc.service.imp.FangYuanLuRuServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by yewangwang on 2016/3/7.
 */
@Controller
@RequestMapping("/operator")
public class FangYuanLuRuController {
    @Resource(name="FangYuanLuRuServiceImpl")
    BasicService fangYuanLuRuService;

    @RequestMapping("/add/fangyuan.do")
    public String doAddFangYuan(Home home, HttpServletRequest request, HttpServletResponse response){
       fangYuanLuRuService.insert(home,request,response);
        return "fangyuanluru";
    }
}
