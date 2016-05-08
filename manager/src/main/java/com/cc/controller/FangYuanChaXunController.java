package com.cc.controller;

import com.cc.domain.Home;
import com.cc.request.EditHomeRequest;
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
public class FangYuanChaXunController {
    @Resource(name = "FangYuanLuRuServiceImpl")
    BasicService homeService;

    /**
     * 房源查询 多条件查询
     *
     * @param request
     * @return
     */
    @RequestMapping("/search.do")
    public String fangYuanChaXun(Home home, HttpServletRequest request) {
        List<Home> homeList = homeService.findAll(home, request, null);
        List<HomeResponse> homeResponseList = new ArrayList<>();
        for (Home t : homeList) {
            HomeResponse homeResponse = new HomeResponse(t);
            homeResponseList.add(homeResponse);
        }
        request.setAttribute("list", homeResponseList);
        return "fangyuanchaxun";
    }

    @RequestMapping("/edit/home/status.do")
    public String editFangYuan(EditHomeRequest editHomeRequest, HttpServletRequest request) {
        String id = request.getParameter("id");
        if (id == null) return null;
        Home home = new Home();
        home.setId(id);
        homeService.findOne(home,null,null);
        home.setStatus(editHomeRequest.getStatus());
        homeService.update(home, null, null);

        List<Home> homeList = homeService.findAll(home, request, null);
        List<HomeResponse> homeResponseList = new ArrayList<>();
        for (Home t : homeList) {
            HomeResponse homeResponse = new HomeResponse(t);
            homeResponseList.add(homeResponse);
        }
        request.setAttribute("list", homeResponseList);
        return "fangyuanchaxun";
    }
}
