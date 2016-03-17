package com.cc.service.imp;

import com.cc.domain.Home;
import com.cc.service.BasicService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by yewangwang on 2016/3/17.
 */
@Service("FangYuanLuRuServiceImpl")
public class FangYuanLuRuServiceImpl implements BasicService<Home> {

    @Override
    public int insert(Home object) {
        return 0;
    }

    @Override
    public List<Home> findAll(Home object) {
        return null;
    }

    @Override
    public Home findOne(Home object) {
        return null;
    }

    @Override
    public int update(Home object) {
        return 0;
    }

    @Override
    public int delete(Home object) {
        return 0;
    }
}
