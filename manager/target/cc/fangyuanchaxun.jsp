<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <!-- start: Meta -->
    <meta charset="utf-8">
    <title>Bootstrap Metro Dashboard by Dennis Ji for ARM demo</title>
    <meta name="description" content="Bootstrap Metro Dashboard">
    <meta name="author" content="Dennis Ji">
    <meta name="keyword"
          content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <!-- end: Meta -->

    <!-- start: Mobile Specific -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- end: Mobile Specific -->

    <!-- start: CSS -->
    <link id="bootstrap-style" href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet">
    <link id="base-style" href="css/style.css" rel="stylesheet">
    <link id="base-style-responsive" href="css/style-responsive.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext'
          rel='stylesheet' type='text/css'>
    <!-- end: CSS -->


    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <link id="ie-style" href="css/ie.css" rel="stylesheet">
    <![endif]-->

    <!--[if IE 9]>
    <link id="ie9style" href="css/ie9.css" rel="stylesheet">
    <![endif]-->

    <!-- start: Favicon -->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- end: Favicon -->


</head>

<body>
<!-- start: Header -->
<%@ include file="commonsjsp/headernav.jsp" %>
<!-- start: Header -->

<div class="container-fluid-full">
    <div class="row-fluid">

        <!-- start: Main Menu -->
        <%@ include file="commonsjsp/mainmenu.jsp" %>
        <!-- end: Main Menu -->


        <!-- start: Content -->
        <div id="content" class="span10">


            <ul class="breadcrumb">
                <li>
                    <i class="icon-home"></i>
                    <a href="index.jsp">房务管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li><a href="fangyuanchaxun.jsp.jsp">房源查询</a></li>
            </ul>


            <div class="row-fluid sortable">
                <div class="box span12">
                    <div class="box-header" data-original-title>
                        <h2><i class="halflings-icon home"></i><span class="break"></span>客房信息</h2>
                    </div>
                    <div class="box-content">
                        <table class="table table-striped table-bordered bootstrap-datatable datatable">
                            <thead>
                            <tr>
                                <th>#编号</th>
                                <th> 楼层</th>
                                <th> 类型</th>
                                <th> 价格</th>
                                <th> 当前状态</th>
                                <th> 更改状态</th>
                                <th> 操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:if test="${empty list }">
                                没有房间，请去添加
                            </c:if>
                            <c:if test="${!empty list }">
                                <c:forEach var="home" items="${list }">
                                    <tr>
                                        <td class="center">#${home.bianhao}</td>
                                        <td class="center">${home.louceng}</td>
                                        <td class="center">${home.typeStr}</td>
                                        <td class="center">${home.price}</td>
                                        <td class="center">
                                            <span class="label label-success">${home.statusStr}</span>
                                        </td>
                                        <td class="center">
                                            <a class="btn btn-success" href="operator/edit/home/status.do?id=${home.id}&status=10">
                                                空闲
                                            </a>
                                            <a class="btn btn-info black" href="operator/edit/home/status.do?id=${home.id}&status=40">
                                                不可用
                                            </a>
                                            <a class="btn btn-danger" href="operator/edit/home/status.do?id=${home.id}&status=30">
                                                打扫
                                            </a>

                                        </td>
                                        <td class="center">

                                            <a class="btn btn-info" href="#">
                                                <i class="halflings-icon white edit"></i>
                                            </a>
                                            <a class="btn btn-danger" href="#">
                                                <i class="halflings-icon white trash"></i>
                                            </a>

                                        </td>

                                    </tr>
                                </c:forEach>
                            </c:if>
                            </tbody>
                        </table>
                    </div>
                </div><!--/span-->

            </div><!--/row-->


        </div><!--/.fluid-container-->

        <!-- end: Content -->
    </div><!--/#content.span10-->
</div><!--/fluid-row-->

<div class="modal hide fade" id="myModal">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">×</button>
        <h3>Settings</h3>
    </div>
    <div class="modal-body">
        <p>Here settings can be configured...</p>
    </div>
    <div class="modal-footer">
        <a href="#" class="btn" data-dismiss="modal">Close</a>
        <a href="#" class="btn btn-primary">Save changes</a>
    </div>
</div>

<div class="clearfix"></div>

<footer>

    <p>
        <span style="text-align:left;float:left">&copy; 2016 noak <a
                href="http://jiji262.github.io/Bootstrap_Metro_Dashboard/" alt="Bootstrap_Metro_Dashboard">Bootstrap
            Metro Dashboard</a></span>

    </p>

</footer>

<!-- start: JavaScript-->

<script src="js/jquery-1.9.1.min.js"></script>
<script src="js/jquery-migrate-1.0.0.min.js"></script>

<script src="js/jquery-ui-1.10.0.custom.min.js"></script>

<script src="js/jquery.ui.touch-punch.js"></script>

<script src="js/modernizr.js"></script>

<script src="js/bootstrap.min.js"></script>

<script src="js/jquery.cookie.js"></script>

<script src='js/fullcalendar.min.js'></script>

<script src='js/jquery.dataTables.min.js'></script>

<script src="js/excanvas.js"></script>
<script src="js/jquery.flot.js"></script>
<script src="js/jquery.flot.pie.js"></script>
<script src="js/jquery.flot.stack.js"></script>
<script src="js/jquery.flot.resize.min.js"></script>

<script src="js/jquery.chosen.min.js"></script>

<script src="js/jquery.uniform.min.js"></script>

<script src="js/jquery.cleditor.min.js"></script>

<script src="js/jquery.noty.js"></script>

<script src="js/jquery.elfinder.min.js"></script>

<script src="js/jquery.raty.min.js"></script>

<script src="js/jquery.iphone.toggle.js"></script>

<script src="js/jquery.uploadify-3.1.min.js"></script>

<script src="js/jquery.gritter.min.js"></script>

<script src="js/jquery.imagesloaded.js"></script>

<script src="js/jquery.masonry.min.js"></script>

<script src="js/jquery.knob.modified.js"></script>

<script src="js/jquery.sparkline.min.js"></script>

<script src="js/counter.js"></script>

<script src="js/retina.js"></script>

<script src="js/custom.js"></script>
<!-- end: JavaScript-->

</body>
</html>
