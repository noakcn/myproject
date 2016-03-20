package com.cc.controller;

import com.cc.domain.Condition;
import com.cc.service.BasicService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by yewangwang on 2016/3/7.
 */
@Controller
@RequestMapping("/operator")
public class FangYuanChaXunController {
    @Resource(name = "FangYuanLuRuServiceImpl")
    BasicService searchService;

    /**
     * 房源查询 多条件查询
     *
     * @param request
     * @return
     */
    @RequestMapping("/search.do")
    public String fangYuanChaXun(Condition condition, HttpServletRequest request) {

        request.setAttribute("list", searchService.findAll(condition, request, null));
        return "fangyuanchaxun";
    }
}
