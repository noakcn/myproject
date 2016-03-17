package com.cc.service.imp;

import com.cc.dao.UserDao;
import com.cc.domain.User;
import com.cc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by yewangwang on 2016/3/15.
 */
@Service("UserServiceImpl")
public class UserServiceImpl implements UserService {

    @Resource
    UserDao userDao;

    public int insert(HttpServletRequest request, HttpServletResponse response,User user) {

        return userDao.insert(user);
    }

    public User findOne(HttpServletRequest request, HttpServletResponse response,User user)
    {
        System.out.println(userDao);
        if(user.getUsername()==null||user.getPwd()==null||user.getPwd().isEmpty()||user.getUsername().isEmpty()){
            request.setAttribute("errcode",-1000);
            request.setAttribute("msg","用户名或密码不能为空");
            return null;
        }
        User resultUser=userDao.findOne(user);
        if(resultUser==null){
            request.setAttribute("errcode",-1000);
            request.setAttribute("msg","用户名或密码错误");
            return null;
        }
        return resultUser;
    }
}
