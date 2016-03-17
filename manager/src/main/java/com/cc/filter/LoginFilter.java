package com.cc.filter;

import javax.servlet.*;
import java.io.IOException;

/**
 * Created by yewangwang on 2016/3/15.
 */
public class LoginFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println(111);
    }

    public void destroy() {

    }
}
