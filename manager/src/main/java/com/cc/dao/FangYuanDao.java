package com.cc.dao;

import com.cc.domain.Home;

import java.util.List;

/**
 * Created by yewangwang on 2016/3/17.
 */
public interface FangYuanDao {
    int insert(Home home);
    List<Home> findAll(Home home);
    Home findOne(Home home);
    int update(Home home);
    int delete(Home home);
}
