package com.cc.filter;

import com.cc.util.myEnumClass.ErrorCode;
import org.springframework.util.StringUtils;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

/**
 * Created by yewangwang on 2016/3/15.
 */
public class LoginFilter implements Filter {
    private String redirectPage;
    private String uncheckedUrl;

    public void init(FilterConfig filterConfig) throws ServletException {
        ServletContext context = filterConfig.getServletContext();
        redirectPage = context.getInitParameter("redirectPage");
        uncheckedUrl = context.getInitParameter("uncheckedUrl");
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
            throws IOException, ServletException {
//        //获取url
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        String servletPath = req.getServletPath();
        List<String> pathList = Arrays.asList(uncheckedUrl.split(","));
        //如果是要放行的路径 直接放行
        if (pathList.contains(servletPath)) {
            System.out.println("放行：" + servletPath);
        } else {
            //登录过的用户都将发配到一个accessToken accessToken缓存在session，用户登出后accessToken无效
            String accessToken = (String) req.getSession().getAttribute("accessToken");
            if (StringUtils.isEmpty(accessToken)) {
                request.setAttribute("errcode", ErrorCode.UnauthorizedAccess.getCode());
                request.setAttribute("msg", ErrorCode.UnauthorizedAccess.getText());
                req.getRequestDispatcher(redirectPage).forward(req, res);
                return;
            }
        }

        filterChain.doFilter(request, response);
    }

    public void destroy() {

    }
}
