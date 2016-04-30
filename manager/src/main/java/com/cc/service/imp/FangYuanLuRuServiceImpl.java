package com.cc.service.imp;

import com.cc.dao.FangYuanDao;
import com.cc.domain.Condition;
import com.cc.domain.Home;
import com.cc.service.BasicService;
import com.cc.util.myEnumClass.ErrorCode;
import com.cc.util.RandDomId;
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
@Service("FangYuanLuRuServiceImpl")
public class FangYuanLuRuServiceImpl implements BasicService<Home> {

    @Resource
    FangYuanDao fangYuanDao;


    @Override
    public int insert(Home home, HttpServletRequest request, HttpServletResponse response) {
        if (StringUtils.isEmpty(home.getBianhao())) {
            request.setAttribute("errcode", ErrorCode.EmptyBianHao.getCode());
            request.setAttribute("msg", ErrorCode.EmptyBianHao.getText());
            return 0;
        }
        if (home.getPrice() == null || home.getPrice() <= 0) {
            request.setAttribute("errcode", ErrorCode.EmptyPrice.getCode());
            request.setAttribute("msg", ErrorCode.EmptyPrice.getText());
            return 0;
        }
        home.setId(RandDomId.getId());
        home.setStatus(HomeStatus.KongXiang.getCode());
        fangYuanDao.insert(home);
        request.setAttribute("errcode", ErrorCode.AddHomeSuccess.getCode());
        request.setAttribute("msg", ErrorCode.AddHomeSuccess.getText());
        return 1;
    }


    @Override
    public List<Home> findAll(Home home, HttpServletRequest request, HttpServletResponse response) {
        List<Home> homeList = fangYuanDao.findAll(home);
        return homeList;
    }

    @Override
    public Home findOne(Home object, HttpServletRequest request, HttpServletResponse response) {
        return null;
    }

    @Override
    public int update(Home object, HttpServletRequest request, HttpServletResponse response) {
        return 0;
    }

    @Override
    public int delete(Home object, HttpServletRequest request, HttpServletResponse response) {
        return 0;
    }
}
