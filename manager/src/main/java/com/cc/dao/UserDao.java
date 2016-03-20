package com.cc.dao;

import com.cc.domain.User;

/**
 * Created by yewangwang on 2016/3/13.
 */
public interface UserDao {
     User findOne(User user);

     void insert(User user);


}
