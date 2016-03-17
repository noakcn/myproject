<%--
  Created by IntelliJ IDEA.
  User: noak
  Date: 2016/3/10
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="navbar">
    <div class="navbar-inner">
        <div class="container-fluid">

            <a class="brand" href="index.jsp"><span>客房管理系统</span></a>

            <!-- start: Header Menu -->
            <div class="nav-no-collapse header-nav">
                <ul class="nav pull-right">

                    <!-- start: User Dropdown -->
                    <li class="dropdown">
                        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="halflings-icon white user"></i> 陈城
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-menu-title">
                                <span>操作</span>
                            </li>
                            <li><a href="#"><i class="halflings-icon lock"></i> 修改密码</a></li>
                            <li><a href="login.jsp"><i class="halflings-icon off"></i> 登出</a></li>
                        </ul>
                    </li>
                    <!-- end: User Dropdown -->
                </ul>
            </div>
            <!-- end: Header Menu -->

        </div>
    </div>
</div>