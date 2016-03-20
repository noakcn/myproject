package com.cc.service;

import com.cc.domain.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by yewangwang on 2016/3/13.
 */
public interface UserService {
    int insert(HttpServletRequest request, HttpServletResponse response,User user);
    User findOne(HttpServletRequest request, HttpServletResponse response,User user);
}
