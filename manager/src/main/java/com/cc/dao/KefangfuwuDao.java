package com.cc.dao;

import com.cc.domain.Kefangfuwu;

import java.util.List;

/**
 * Created by yewangwang on 2016/5/15.
 */
public interface KefangfuwuDao {
    int insert(Kefangfuwu kefangfuwu);

    List<Kefangfuwu> findAll();

    int update(Kefangfuwu kefangfuwu);

}
