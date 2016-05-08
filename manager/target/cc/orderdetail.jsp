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
    <title>客房管理系统</title>
    <meta name="description" content="客房管理系统">
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
    <link href="css/mycss.css" rel="stylesheet">
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
<!-- end: Header -->


<div class="container-fluid-full">
    <div class="row-fluid">
        <!--start: menu-->
        <%@ include file="commonsjsp/mainmenu.jsp" %>
        <!--end: menu-->


        <!-- start: Content -->
        <div id="content" class="span10">

            <ul class="breadcrumb">
                <li>
                    <i class="icon-home"></i>
                    <a href="index.jsp">房务管理</a>
                    <i class="icon-angle-right"></i>
                </li>
                <li><a href="kefangyuding.jsp">订单详情</a></li>
            </ul>


            <div class="row-fluid">
                <div class="row-fluid sortable ui-sortable">
                    <div class="box span12">
                        <div class="box-header" data-original-title="">
                            <h2><i class="halflings-icon edit"></i><span class="break"></span>订单详情</h2>
                            <div class="box-icon">
                                <a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
                                <a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
                                <a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
                            </div>
                        </div>
                        <div class="box-content">
                            ${msg}
                            <form class="form-horizontal">
                                <fieldset>
                                    <div class="control-group">
                                        <label class="control-label">房间编号</label>
                                        <div class="controls">
                                            <span class="input-xlarge uneditable-input">${order.home.bianhao}</span>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">入住日期</label>
                                        <div class="controls">
                                            <span class="input-xlarge uneditable-input">${order.ruzhu_date}</span>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">入住天数</label>
                                        <div class="controls">
                                            <span class="input-xlarge uneditable-input">${order.day_number}</span>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">姓名</label>
                                        <div class="controls">
                                            <span class="input-xlarge uneditable-input">${order.customer.name}</span>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">手机号</label>
                                        <div class="controls">
                                            <span class="input-xlarge uneditable-input">${order.customer.mobile}</span>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">身份证号</label>
                                        <div class="controls">
                                            <span class="input-xlarge uneditable-input">${order.customer.identity}</span>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">押金</label>
                                        <div class="controls">
                                            <span class="input-xlarge uneditable-input">${order.yajin}</span>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">总额</label>
                                        <div class="controls">
                                            <span class="input-xlarge uneditable-input">${order.total_price}</span>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">应补金额</label>
                                        <div class="controls">
                                            <span class="input-xlarge uneditable-input">${order.yinbujine}</span>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">应退金额</label>
                                        <div class="controls">
                                            <span class="input-xlarge uneditable-input">${order.refund_price}</span>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">折扣</label>
                                        <div class="controls">
                                            <span class="input-xlarge uneditable-input">${order.off}</span>
                                        </div>
                                    </div>

                                    <div class="form-actions">
                                        <c:if test="${type==1}">
                                            <a href="/operator/get/order/list.do" class="btn btn-primary">返回</a>
                                        </c:if>
                                        <c:if test="${type==2}">
                                            <a href="/operator/show/reserve.do" class="btn btn-primary">确定</a>
                                        </c:if>
                                    </div>


                                </fieldset>
                            </form>

                        </div>
                    </div><!--/span-->

                </div>

            </div><!--/row-->

        </div><!--/.fluid-container-->

        <!-- end: Content -->
    </div><!--/#content.span10-->
</div><!--/fluid-row-->

</div><!--/row-->
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
<!-- start:my js-->

<!-- end:my js-->


</body>
</html>
