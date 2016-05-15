package com.cc.service.imp;

import com.cc.dao.CustomerDao;
import com.cc.dao.KefangfuwuDao;
import com.cc.domain.Customer;
import com.cc.domain.Kefangfuwu;
import com.cc.service.BasicService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by yewangwang on 2016/3/17.
 */
@Service("FuWuServiceImpl")
public class FuWuServiceImpl implements BasicService<Kefangfuwu> {
    @Resource
    private KefangfuwuDao kefangfuwuDao;

    @Override
    public int insert(Kefangfuwu object, HttpServletRequest request, HttpServletResponse response) {
        return kefangfuwuDao.insert(object);
    }

    @Override
    public List<Kefangfuwu> findAll(Kefangfuwu object, HttpServletRequest request, HttpServletResponse response) {
        return kefangfuwuDao.findAll();
    }

    @Override
    public Kefangfuwu findOne(Kefangfuwu object, HttpServletRequest request, HttpServletResponse response) {
        return null;
    }

    @Override
    public int update(Kefangfuwu object, HttpServletRequest request, HttpServletResponse response) {
        return kefangfuwuDao.update(object);
    }

    @Override
    public int delete(Kefangfuwu object, HttpServletRequest request, HttpServletResponse response) {
        return 0;
    }
}
