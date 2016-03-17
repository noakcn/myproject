package com.cc.service;

import com.cc.domain.Home;

import java.util.List;

/**
 * Created by yewangwang on 2016/3/17.
 */
public interface BasicService<T> {
    int insert(T object);
    List<T> findAll(T object);
    Home findOne(T object);
    int update(T object);
    int delete(T object);
}
