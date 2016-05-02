package com.cc.dao;


import com.cc.domain.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by yewangwang on 2016/5/1.
 */
public interface OrderDao {
    void insert(Order order);

    List<Order> findAll(Order order);

    Order findOne(Order order);

    int update( Order order);

    int delete(Order order);
}
