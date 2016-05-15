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
                <li><a href="kefangyuding.jsp">客房预订</a></li>
            </ul>


            <div class="row-fluid">
                <div class="box blue span12">
                    <div class="box-header">
                        <h2><i class="halflings-icon hand-top"></i><span class="break"></span>房间</h2>
                    </div>
                    <c:if test="${empty list }">
                        没有房间，请去添加
                    </c:if>
                    <c:if test="${!empty list }">
                        <div class="box-content">
                            <c:forEach var="home" items="${list }">
                                <c:if test="${home.status==10}">
                                    <a id="${home.id}" class="quick-button span2 make_bottom_margin"
                                       onclick="showdengjiruzhu(
                                               {home_number:'${home.bianhao}',
                                               home_id:'${home.id}',
                                               home_price:'${home.price}'})">
                                        <i class="icon-home"></i>
                                        <p>${home.bianhao}(${home.typeStr})</p>
                                        <span class="notification green">${home.statusStr}</span>
                                    </a>

                                </c:if>
                                <c:if test="${home.status==20}">
                                    <a id="${home.id}" class="quick-button green span2 make_bottom_margin"
                                       onclick="showyijingruzhu({home_id:'${home.id}'})">
                                        <i class="icon-home"></i>
                                        <p>${home.bianhao}(${home.typeStr})</p>
                                        <span class="notification blue">${home.statusStr}</span>
                                    </a>
                                </c:if>
                                <c:if test="${home.status==30}">
                                    <a id="${home.id}" class="quick-button red span2"
                                       onclick="showdashaoweishengzhong()">
                                        <i class="icon-home"></i>
                                        <p>${home.bianhao}(${home.typeStr})</p>
                                        <span class="notification green">${home.statusStr}</span>
                                    </a>
                                </c:if>
                                <c:if test="${home.status==40}">
                                    <a id="${home.id}" class="quick-button black span2"
                                       onclick="showbukeyong()">
                                        <i class="icon-home"></i>
                                        <p>${home.bianhao}(${home.typeStr})</p>
                                        <span class="notification red">${home.statusStr}</span>
                                    </a>
                                </c:if>
                            </c:forEach>
                            <div class="clearfix"></div>
                        </div>
                    </c:if>

                </div><!--/span-->

            </div><!--/row-->
            、
        </div><!--/.fluid-container-->

        <!-- end: Content -->
    </div><!--/#content.span10-->
</div><!--/fluid-row-->

<div class="modal hide fade" id="yijingruzhu">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">×</button>
        <h3>提示</h3>
    </div>
    <div class="modal-body">
        <p>确定退房？</p>
    </div>
    <div class="modal-footer">
        <a id="tuifangmodal" href="#" class="btn" data-dismiss="modal">确定</a>
    </div>
</div>

<div class="modal hide fade" id="dashaoweishengzhong">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">×</button>
        <h3>提示</h3>
    </div>
    <div class="modal-body">
        <p>该客房正在打扫卫生，请稍后再试...</p>
    </div>
    <div class="modal-footer">
        <a href="#" class="btn" data-dismiss="modal">确定</a>
    </div>
</div>
<div class="modal hide fade" id="bukeyong">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">×</button>
        <h3>提示</h3>
    </div>
    <div class="modal-body">
        <p>该客房暂不可用</p>
    </div>
    <div class="modal-footer">
        <a href="#" class="btn" data-dismiss="modal">确定</a>
    </div>
</div>

<div class="modal hide fade" id="dengjiruzhu">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">×</button>
        <h3>提示</h3>
    </div>
    <div class="modal-body">
        <div class="box-content">
            <sf:form class="form-horizontal" id="dengjiruzhuform" action="/operator/dengjiruzhu.do"
                     method="get" modelAttribute="makeOrderRequest">
                <fieldset>
                    <div class="control-group">
                        <label class="control-label">房间编号</label>
                        <div class="controls">
                            <input class="input-xlarge uneditable-input" id="home_number" name="home_number" type="text"
                                   disabled="">
                            <input type="hidden" id="home_id" name="home_id" type="text">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">入住天数</label>
                        <div class="controls">
                            <input id="day_number" name="day_number" type="text">

                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">姓名</label>
                        <div class="controls">
                            <input class="input-xlarge focused" id="name" name="name" type="text">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">身份证号</label>
                        <div class="controls">
                            <input class="input-xlarge focused" id="identity" name="identity" type="text">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">手机</label>
                        <div class="controls">
                            <input class="input-xlarge focused" id="mobile" name="mobile" type="text">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">押金</label>
                        <div class="controls">
                            <div class="input-prepend input-append">
                                <span class="add-on">¥</span><input id="yajin" name="yajin" size="16" type="text">
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">单价</label>
                        <div class="controls">
                            <div class="input-prepend input-append">
                                <span class="add-on">¥</span><input id="price" name="price" size="16" type="text">
                            </div>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label">折扣</label>
                        <div class="controls">
                            <select id="off" name="off">
                                <option selected value="100">无折扣</option>
                                <option value="95">9.5折</option>
                                <option value="80">8折</option>
                                <option value="50">5折</option>
                                <option value="0">免单</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary">开房</button>
                    </div>
                </fieldset>
            </sf:form>

        </div>
    </div><!--/span-->

</div><!--/row-->


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
<script type="text/javascript">
    function showyijingruzhu(params) {
        var set = $.extend({}, params);
        $('#tuifangmodal').attr("onclick", "javascript:window.location='/operator/tuifang.do?id=" + set.home_id+"'")

        $('#yijingruzhu').modal('show');
    }
    function showdashaoweishengzhong() {
        $('#dashaoweishengzhong').modal('show');
    }
    function showbukeyong() {
        $('#bukeyong').modal('show');
    }
    function showdengjiruzhu(params) {
        var set = $.extend({}, params);
        $('#dengjiruzhuform')[0].reset();
        $('#home_number').val(set.home_number);
        $('#home_id').val(set.home_id);
        $('#price').val(set.home_price);
        $('#dengjiruzhu').modal('show');
    }

</script>
<!-- end:my js-->


</body>
</html>
