package com.cc.controller;

import com.cc.domain.Home;
import com.cc.domain.Kefangfuwu;
import com.cc.response.HomeResponse;
import com.cc.response.KefangfuwuResponse;
import com.cc.service.BasicService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by yewangwang on 2016/5/15.
 */
@Controller
@RequestMapping("/operator")
public class KeFangFuwuController {
    @Resource(name = "FuWuServiceImpl")
    BasicService fuwuservice;
    @Resource(name = "FangYuanLuRuServiceImpl")
    BasicService homeService;

    @RequestMapping("/to/fuwu.do")
    public String toFuwu(Kefangfuwu fuwu, HttpServletRequest request, HttpServletResponse response) {
        List<Home> homeList = homeService.findAll(null, request, null);
        List<HomeResponse> homeResponseList = new ArrayList<>();
        for (Home t : homeList) {
            HomeResponse homeResponse = new HomeResponse(t);
            homeResponseList.add(homeResponse);
        }
        request.setAttribute("homeList", homeResponseList);

        List<Kefangfuwu> fuwuList = fuwuservice.findAll(null, null, null);
        List<KefangfuwuResponse> fuwuResponseList = new ArrayList<>();
        for (Kefangfuwu f : fuwuList) {
            KefangfuwuResponse r = new KefangfuwuResponse(f);
            fuwuResponseList.add(r);
        }
        request.setAttribute("fuwuList", fuwuResponseList);
        return "kefangfuwu";
    }

    @RequestMapping("/add/fuwu.do")
    public String doAddFangYuan(Kefangfuwu fuwu, HttpServletRequest request, HttpServletResponse response) {
        fuwuservice.insert(fuwu, request, response);

        List<Home> homeList = homeService.findAll(null, request, null);
        List<HomeResponse> homeResponseList = new ArrayList<>();
        for (Home t : homeList) {
            HomeResponse homeResponse = new HomeResponse(t);
            homeResponseList.add(homeResponse);
        }
        request.setAttribute("homeList", homeResponseList);

        List<Kefangfuwu> fuwuList = fuwuservice.findAll(null, null, null);
        List<KefangfuwuResponse> fuwuResponseList = new ArrayList<>();
        for (Kefangfuwu f : fuwuList) {
            KefangfuwuResponse r = new KefangfuwuResponse(f);
            fuwuResponseList.add(r);
        }
        request.setAttribute("fuwuList", fuwuResponseList);
        return "kefangfuwu";
    }

    @RequestMapping("/complete/fuwu.do")
    public String completeFuwu(Kefangfuwu fuwu, HttpServletRequest request, HttpServletResponse response) {
        fuwu.setStatus(1);
        fuwuservice.update(fuwu, request, response);

        List<Home> homeList = homeService.findAll(null, request, null);
        List<HomeResponse> homeResponseList = new ArrayList<>();
        for (Home t : homeList) {
            HomeResponse homeResponse = new HomeResponse(t);
            homeResponseList.add(homeResponse);
        }
        request.setAttribute("homeList", homeResponseList);

        List<Kefangfuwu> fuwuList = fuwuservice.findAll(null, null, null);
        List<KefangfuwuResponse> fuwuResponseList = new ArrayList<>();
        for (Kefangfuwu f : fuwuList) {
            KefangfuwuResponse r = new KefangfuwuResponse(f);
            fuwuResponseList.add(r);
        }
        request.setAttribute("fuwuList", fuwuResponseList);
        return "kefangfuwu";
    }

}
