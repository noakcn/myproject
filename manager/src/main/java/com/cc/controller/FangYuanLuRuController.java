package com.cc.controller;

import com.cc.domain.Home;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by yewangwang on 2016/3/7.
 */
@Controller
@RequestMapping("/operator")
public class FangYuanLuRuController {
    public String doAddFangYuan(Home home, HttpServletRequest request, HttpServletResponse response){

        return "fangyuanluru";
    }
}
