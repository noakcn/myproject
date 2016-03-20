package com.cc.util;

import java.util.UUID;

/**
 * 随机生成 accessToken
 * Created by yewangwang on 2016/3/20.
 */
public class RandomToken {
    public static String getToken() {
        String accessToken = UUID.randomUUID().toString();
        accessToken.replace("-", "");

        return accessToken;
    }
}
