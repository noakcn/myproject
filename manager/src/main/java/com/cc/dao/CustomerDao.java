package com.cc.dao;

import com.cc.domain.Customer;
import com.cc.domain.Home;

import java.util.List;

/**
 * Created by yewangwang on 2016/3/17.
 */
public interface CustomerDao {
    void insert(Customer customer);

    List<Customer> findAll(Customer customer);

    Customer findOne(Customer customer);

    int update(Customer customer);

    int delete(Customer customer);
}
