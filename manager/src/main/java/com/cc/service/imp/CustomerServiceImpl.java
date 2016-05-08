package com.cc.service.imp;

import com.cc.dao.CustomerDao;
import com.cc.dao.FangYuanDao;
import com.cc.domain.Customer;
import com.cc.domain.Home;
import com.cc.service.BasicService;
import com.cc.util.RandDomId;
import com.cc.util.myEnumClass.ErrorCode;
import com.cc.util.myEnumClass.HomeStatus;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by yewangwang on 2016/3/17.
 */
@Service("CustomerServiceImpl")
public class CustomerServiceImpl implements BasicService<Customer> {
    @Resource
    CustomerDao customerDao;

    @Override
    public int insert(Customer object, HttpServletRequest request, HttpServletResponse response) {
        customerDao.insert(object);
        return 0;
    }

    @Override
    public List<Customer> findAll(Customer object, HttpServletRequest request, HttpServletResponse response) {
        return null;
    }

    @Override
    public Customer findOne(Customer object, HttpServletRequest request, HttpServletResponse response) {
        return null;
    }

    @Override
    public int update(Customer object, HttpServletRequest request, HttpServletResponse response) {
        return customerDao.update(object);
    }

    @Override
    public int delete(Customer object, HttpServletRequest request, HttpServletResponse response) {
        return 0;
    }
}
