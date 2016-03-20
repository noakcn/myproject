package com.cc.service.imp;

import com.cc.dao.UserDao;
import com.cc.domain.User;
import com.cc.service.UserService;
import com.cc.util.myEnumClass.ErrorCode;
import com.cc.util.RandomToken;
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

    public int insert(HttpServletRequest request, HttpServletResponse response, User user) {
        userDao.insert(user);
        return 1;
    }

    public User findOne(HttpServletRequest request, HttpServletResponse response, User user) {
        System.out.println(userDao);
        if (user.getUsername() == null || user.getPwd() == null || user.getPwd().isEmpty() || user.getUsername().isEmpty()) {
            request.setAttribute("errcode", ErrorCode.EmptyNameOrPwd.getCode());
            request.setAttribute("msg", ErrorCode.EmptyNameOrPwd.getText());
            return null;
        }
        User resultUser = userDao.findOne(user);
        if (resultUser == null) {
            request.setAttribute("errcode", ErrorCode.LoginDenied.getCode());
            request.setAttribute("msg", ErrorCode.LoginDenied.getText());
            return null;
        }
        request.getSession().setAttribute("accessToken", RandomToken.getToken());
        return resultUser;
    }
}
