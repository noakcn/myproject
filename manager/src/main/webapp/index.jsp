<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
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

                </li>
                <li><a href="kefangyuding.jsp"></a></li>
            </ul>

            <div class="row-fluid">
                <a class="quick-button metro yellow span4" href="operator/show/reserve.do">
                    <i class="icon-group"></i>
                    <p>客房预订</p>
                </a>
                <a class="quick-button metro red span4" href="operator/get/order/list.do">
                    <i class="icon-edit"></i>
                    <p>订单管理</p>
                </a>
                <div class="clearfix"></div>
            </div>
            <div style="width: 100%;height: 40px;"></div>
            <div class="row-fluid">
                <a class="quick-button metro blue span4" href="fangyuanluru.jsp">
                    <i class="icon-plus"></i>
                    <p>房源录入</p>
                </a>
                <a class="quick-button metro green span4" href="operator/search.do">
                    <i class="icon-search"></i>
                    <p>房源查询</p>
                </a>
                <div class="clearfix"></div>
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
