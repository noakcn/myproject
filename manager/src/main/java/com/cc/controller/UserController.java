package com.cc.controller;

import com.cc.domain.User;
import com.cc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by yewangwang on 2016/3/13.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Resource(name="UserServiceImpl")
    UserService userService;


    @RequestMapping("/login.do")
    public String doLogin(User user, HttpServletRequest request, HttpServletResponse response){
        User resultUser =userService.findOne(request,response,user);
        if(resultUser==null){
            return "login";
        }
        return "index";
    }
}
