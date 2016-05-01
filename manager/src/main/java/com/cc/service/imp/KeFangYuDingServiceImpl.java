package com.cc.service.imp;

import com.cc.dao.FangYuanDao;
import com.cc.dao.OrderDao;
import com.cc.domain.Home;
import com.cc.domain.Order;
import com.cc.service.BasicService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by yewangwang on 2016/5/1.
 */
@Service("KeFangYuDingServiceImpl")
public class KeFangYuDingServiceImpl implements BasicService<Order> {

    @Resource
    OrderDao orderDao;


    @Override
    public int insert(Order object, HttpServletRequest request, HttpServletResponse response) {
        orderDao.insert(object);
        return 0;
    }

    @Override
    public List<Order> findAll(Order object, HttpServletRequest request, HttpServletResponse response) {
        return null;
    }

    @Override
    public Home findOne(Order object, HttpServletRequest request, HttpServletResponse response) {
        return null;
    }

    @Override
    public int update(Order object, HttpServletRequest request, HttpServletResponse response) {
        return 0;
    }

    @Override
    public int delete(Order object, HttpServletRequest request, HttpServletResponse response) {
        return 0;
    }
}
