package com.cc.service;

import com.cc.domain.Home;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by yewangwang on 2016/3/17.
 */
public interface BasicService<T> {
    int insert(T object, HttpServletRequest request,HttpServletResponse response);
    List<T> findAll(T object, HttpServletRequest request,HttpServletResponse response);
    T findOne(T object, HttpServletRequest request,HttpServletResponse response);
    int update(T object, HttpServletRequest request,HttpServletResponse response);
    int delete(T object, HttpServletRequest request,HttpServletResponse response);
}
