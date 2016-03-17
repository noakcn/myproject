<%--
  Created by IntelliJ IDEA.
  User: noak
  Date: 2016/3/8
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- start: Main Menu -->
<div id="sidebar-left" class="span2">
    <div class="nav-collapse sidebar-nav">
        <ul class="nav nav-tabs nav-stacked main-menu">
            <li>
                <a class="dropmenu" href="#"><i class="icon-bar-chart"></i><span
                        class="hidden-tablet"> 房务管理</span><span
                        class="label label-important"> 4 </span></a>
                <ul>
                    <li><a class="submenu" href="kefangyuding.jsp"><i class="icon-pencil"></i>
                        <span class="hidden-tablet"> 客房预订</span>
                    </a>
                    </li>
                    <li><a class="submenu" href="dingdanguanli.jsp"><i class="icon-list"></i>
                        <span class="hidden-tablet"> 订单管理</span>
                    </a>
                    </li>
                    <li><a class="submenu" href="fangyuanluru.jsp"><i class="icon-edit"></i>
                        <span class="hidden-tablet"> 房源录入</span>
                    </a>
                    </li>
                    <li><a class="submenu" href="fangyuanchaxun.jsp"><i class="icon-search"></i>
                        <span class="hidden-tablet"> 房源查询</span>
                    </a>
                    </li>
                </ul>
            </li>

            <li><a href="xitongshezhi.jsp"><i class="icon-tasks"></i><span class="hidden-tablet"> 系统设置</span></a></li>
            <li><a href="#"><i class="icon-eye-open"></i><span class="hidden-tablet"> 统计</span></a></li>

        </ul>
    </div>
</div>
<!-- end: Main Menu -->
<!--脚本无法运行时显示的内容-->
<noscript>
    <div class="alert alert-block span10">
        <h4 class="alert-heading">警告!</h4>
        <p>网页脚本被禁用！什么是脚本点击 <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a>
        </p>
    </div>
</noscript>