package com.cc.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by yewangwang on 2016/5/1.
 */
public class DateUtils {
    public static String formatDate(String method, Date date) {
        if (date == null) return "";
        SimpleDateFormat sdf = new SimpleDateFormat(method);
        return sdf.format(date);
    }
}
