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
                            <form class="form-horizontal">
                                <fieldset>
                                    <div class="control-group">
                                        <label class="control-label" for="focusedInput">Focused input</label>
                                        <div class="controls">
                                            <input class="input-xlarge focused" id="focusedInput"
                                                   value="This is focused…" type="text">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">Uneditable input</label>
                                        <div class="controls">
                                            <span class="input-xlarge uneditable-input">Some value here</span>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="disabledInput">Disabled input</label>
                                        <div class="controls">
                                            <input class="input-xlarge disabled" id="disabledInput"
                                                   placeholder="Disabled input here…" disabled="" type="text">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="optionsCheckbox2">Disabled checkbox</label>
                                        <div class="controls">
                                            <label class="checkbox">
                                                <div id="uniform-optionsCheckbox2" class="checker disabled"><span><input
                                                        id="optionsCheckbox2" value="option1" disabled=""
                                                        type="checkbox"></span></div>
                                                This is a disabled checkbox
                                            </label>
                                        </div>
                                    </div>
                                    <div class="control-group warning">
                                        <label class="control-label" for="inputWarning">Input with warning</label>
                                        <div class="controls">
                                            <input id="inputWarning" type="text">
                                            <span class="help-inline">Something may have gone wrong</span>
                                        </div>
                                    </div>
                                    <div class="control-group error">
                                        <label class="control-label" for="inputError">Input with error</label>
                                        <div class="controls">
                                            <input id="inputError" type="text">
                                            <span class="help-inline">Please correct the error</span>
                                        </div>
                                    </div>
                                    <div class="control-group success">
                                        <label class="control-label" for="inputSuccess">Input with success</label>
                                        <div class="controls">
                                            <input id="inputSuccess" type="text">
                                            <span class="help-inline">Woohoo!</span>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="selectError3">Plain Select</label>
                                        <div class="controls">
                                            <select id="selectError3">
                                                <option>Option 1</option>
                                                <option>Option 2</option>
                                                <option>Option 3</option>
                                                <option>Option 4</option>
                                                <option>Option 5</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="selectError">Modern Select</label>
                                        <div class="controls">
                                            <select class="chzn-done" style="display: none;" id="selectError"
                                                    data-rel="chosen">
                                                <option>Option 1</option>
                                                <option>Option 2</option>
                                                <option>Option 3</option>
                                                <option>Option 4</option>
                                                <option>Option 5</option>
                                            </select>
                                            <div style="width: 220px;" class="chzn-container chzn-container-single"
                                                 id="selectError_chzn"><a href="javascript:void(0)" class="chzn-single"><span>Option 1</span>
                                                <div><b></b></div>
                                            </a>
                                                <div class="chzn-drop" style="left: -9000px; width: 218px; top: 25px;">
                                                    <div class="chzn-search"><input style="width: 183px;"
                                                                                    autocomplete="off" type="text">
                                                    </div>
                                                    <ul class="chzn-results">
                                                        <li id="selectError_chzn_o_0"
                                                            class="active-result result-selected" style="">Option 1
                                                        </li>
                                                        <li id="selectError_chzn_o_1" class="active-result" style="">
                                                            Option 2
                                                        </li>
                                                        <li id="selectError_chzn_o_2" class="active-result" style="">
                                                            Option 3
                                                        </li>
                                                        <li id="selectError_chzn_o_3" class="active-result" style="">
                                                            Option 4
                                                        </li>
                                                        <li id="selectError_chzn_o_4" class="active-result" style="">
                                                            Option 5
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="selectError1">Multiple Select / Tags</label>
                                        <div class="controls">
                                            <select class="chzn-done" style="display: none;" id="selectError1"
                                                    multiple="" data-rel="chosen">
                                                <option>Option 1</option>
                                                <option selected="">Option 2</option>
                                                <option>Option 3</option>
                                                <option>Option 4</option>
                                                <option>Option 5</option>
                                            </select>
                                            <div style="width: 220px;" class="chzn-container chzn-container-multi"
                                                 id="selectError1_chzn">
                                                <ul class="chzn-choices">
                                                    <li class="search-choice" id="selectError1_chzn_c_1">
                                                        <span>Option 2</span><a href="javascript:void(0)"
                                                                                class="search-choice-close" rel="1"></a>
                                                    </li>
                                                    <li class="search-field"><input value="Select Some Options" class=""
                                                                                    autocomplete="off"
                                                                                    style="width: 25px;" type="text">
                                                    </li>
                                                </ul>
                                                <div class="chzn-drop" style="left: -9000px; width: 218px; top: 29px;">
                                                    <ul class="chzn-results">
                                                        <li id="selectError1_chzn_o_0" class="active-result" style="">
                                                            Option 1
                                                        </li>
                                                        <li id="selectError1_chzn_o_1" class="result-selected" style="">
                                                            Option 2
                                                        </li>
                                                        <li id="selectError1_chzn_o_2" class="active-result" style="">
                                                            Option 3
                                                        </li>
                                                        <li id="selectError1_chzn_o_3" class="active-result" style="">
                                                            Option 4
                                                        </li>
                                                        <li id="selectError1_chzn_o_4" class="active-result" style="">
                                                            Option 5
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="selectError2">Group Select</label>
                                        <div class="controls">
                                            <select class="chzn-done" style="display: none;"
                                                    data-placeholder="Your Favorite Football Team" id="selectError2"
                                                    data-rel="chosen">
                                                <option value=""></option>
                                                <optgroup label="NFC EAST">
                                                    <option>Dallas Cowboys</option>
                                                    <option>New York Giants</option>
                                                    <option>Philadelphia Eagles</option>
                                                    <option>Washington Redskins</option>
                                                </optgroup>
                                                <optgroup label="NFC NORTH">
                                                    <option>Chicago Bears</option>
                                                    <option>Detroit Lions</option>
                                                    <option>Green Bay Packers</option>
                                                    <option>Minnesota Vikings</option>
                                                </optgroup>
                                                <optgroup label="NFC SOUTH">
                                                    <option>Atlanta Falcons</option>
                                                    <option>Carolina Panthers</option>
                                                    <option>New Orleans Saints</option>
                                                    <option>Tampa Bay Buccaneers</option>
                                                </optgroup>
                                                <optgroup label="NFC WEST">
                                                    <option>Arizona Cardinals</option>
                                                    <option>St. Louis Rams</option>
                                                    <option>San Francisco 49ers</option>
                                                    <option>Seattle Seahawks</option>
                                                </optgroup>
                                                <optgroup label="AFC EAST">
                                                    <option>Buffalo Dennis Jis</option>
                                                    <option>Miami Dolphins</option>
                                                    <option>New England Patriots</option>
                                                    <option>New York Jets</option>
                                                </optgroup>
                                                <optgroup label="AFC NORTH">
                                                    <option>Baltimore Ravens</option>
                                                    <option>Cincinnati Bengals</option>
                                                    <option>Cleveland Browns</option>
                                                    <option>Pittsburgh Steelers</option>
                                                </optgroup>
                                                <optgroup label="AFC SOUTH">
                                                    <option>Houston Texans</option>
                                                    <option>Indianapolis Colts</option>
                                                    <option>Jacksonville Jaguars</option>
                                                    <option>Tennessee Titans</option>
                                                </optgroup>
                                                <optgroup label="AFC WEST">
                                                    <option>Denver Broncos</option>
                                                    <option>Kansas City Chiefs</option>
                                                    <option>Oakland Raiders</option>
                                                    <option>San Diego Chargers</option>
                                                </optgroup>
                                            </select>
                                            <div style="width: 220px;" class="chzn-container chzn-container-single"
                                                 id="selectError2_chzn"><a href="javascript:void(0)"
                                                                           class="chzn-single chzn-default"><span>Your Favorite Football Team</span>
                                                <div><b></b></div>
                                            </a>
                                                <div class="chzn-drop" style="left: -9000px; width: 218px; top: 25px;">
                                                    <div class="chzn-search"><input style="width: 183px;"
                                                                                    autocomplete="off" type="text">
                                                    </div>
                                                    <ul class="chzn-results">
                                                        <li id="selectError2_chzn_g_1" class="group-result">NFC EAST
                                                        </li>
                                                        <li id="selectError2_chzn_o_2"
                                                            class="active-result group-option" style="">Dallas Cowboys
                                                        </li>
                                                        <li id="selectError2_chzn_o_3"
                                                            class="active-result group-option" style="">New York Giants
                                                        </li>
                                                        <li id="selectError2_chzn_o_4"
                                                            class="active-result group-option" style="">Philadelphia
                                                            Eagles
                                                        </li>
                                                        <li id="selectError2_chzn_o_5"
                                                            class="active-result group-option" style="">Washington
                                                            Redskins
                                                        </li>
                                                        <li id="selectError2_chzn_g_6" class="group-result">NFC NORTH
                                                        </li>
                                                        <li id="selectError2_chzn_o_7"
                                                            class="active-result group-option" style="">Chicago Bears
                                                        </li>
                                                        <li id="selectError2_chzn_o_8"
                                                            class="active-result group-option" style="">Detroit Lions
                                                        </li>
                                                        <li id="selectError2_chzn_o_9"
                                                            class="active-result group-option" style="">Green Bay
                                                            Packers
                                                        </li>
                                                        <li id="selectError2_chzn_o_10"
                                                            class="active-result group-option" style="">Minnesota
                                                            Vikings
                                                        </li>
                                                        <li id="selectError2_chzn_g_11" class="group-result">NFC SOUTH
                                                        </li>
                                                        <li id="selectError2_chzn_o_12"
                                                            class="active-result group-option" style="">Atlanta Falcons
                                                        </li>
                                                        <li id="selectError2_chzn_o_13"
                                                            class="active-result group-option" style="">Carolina
                                                            Panthers
                                                        </li>
                                                        <li id="selectError2_chzn_o_14"
                                                            class="active-result group-option" style="">New Orleans
                                                            Saints
                                                        </li>
                                                        <li id="selectError2_chzn_o_15"
                                                            class="active-result group-option" style="">Tampa Bay
                                                            Buccaneers
                                                        </li>
                                                        <li id="selectError2_chzn_g_16" class="group-result">NFC WEST
                                                        </li>
                                                        <li id="selectError2_chzn_o_17"
                                                            class="active-result group-option" style="">Arizona
                                                            Cardinals
                                                        </li>
                                                        <li id="selectError2_chzn_o_18"
                                                            class="active-result group-option" style="">St. Louis Rams
                                                        </li>
                                                        <li id="selectError2_chzn_o_19"
                                                            class="active-result group-option" style="">San Francisco
                                                            49ers
                                                        </li>
                                                        <li id="selectError2_chzn_o_20"
                                                            class="active-result group-option" style="">Seattle Seahawks
                                                        </li>
                                                        <li id="selectError2_chzn_g_21" class="group-result">AFC EAST
                                                        </li>
                                                        <li id="selectError2_chzn_o_22"
                                                            class="active-result group-option" style="">Buffalo Dennis
                                                            Jis
                                                        </li>
                                                        <li id="selectError2_chzn_o_23"
                                                            class="active-result group-option" style="">Miami Dolphins
                                                        </li>
                                                        <li id="selectError2_chzn_o_24"
                                                            class="active-result group-option" style="">New England
                                                            Patriots
                                                        </li>
                                                        <li id="selectError2_chzn_o_25"
                                                            class="active-result group-option" style="">New York Jets
                                                        </li>
                                                        <li id="selectError2_chzn_g_26" class="group-result">AFC NORTH
                                                        </li>
                                                        <li id="selectError2_chzn_o_27"
                                                            class="active-result group-option" style="">Baltimore Ravens
                                                        </li>
                                                        <li id="selectError2_chzn_o_28"
                                                            class="active-result group-option" style="">Cincinnati
                                                            Bengals
                                                        </li>
                                                        <li id="selectError2_chzn_o_29"
                                                            class="active-result group-option" style="">Cleveland Browns
                                                        </li>
                                                        <li id="selectError2_chzn_o_30"
                                                            class="active-result group-option" style="">Pittsburgh
                                                            Steelers
                                                        </li>
                                                        <li id="selectError2_chzn_g_31" class="group-result">AFC SOUTH
                                                        </li>
                                                        <li id="selectError2_chzn_o_32"
                                                            class="active-result group-option" style="">Houston Texans
                                                        </li>
                                                        <li id="selectError2_chzn_o_33"
                                                            class="active-result group-option" style="">Indianapolis
                                                            Colts
                                                        </li>
                                                        <li id="selectError2_chzn_o_34"
                                                            class="active-result group-option" style="">Jacksonville
                                                            Jaguars
                                                        </li>
                                                        <li id="selectError2_chzn_o_35"
                                                            class="active-result group-option" style="">Tennessee Titans
                                                        </li>
                                                        <li id="selectError2_chzn_g_36" class="group-result">AFC WEST
                                                        </li>
                                                        <li id="selectError2_chzn_o_37"
                                                            class="active-result group-option" style="">Denver Broncos
                                                        </li>
                                                        <li id="selectError2_chzn_o_38"
                                                            class="active-result group-option" style="">Kansas City
                                                            Chiefs
                                                        </li>
                                                        <li id="selectError2_chzn_o_39"
                                                            class="active-result group-option" style="">Oakland Raiders
                                                        </li>
                                                        <li id="selectError2_chzn_o_40"
                                                            class="active-result group-option" style="">San Diego
                                                            Chargers
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-actions">
                                        <button type="submit" class="btn btn-primary">Save changes</button>
                                        <button class="btn">Cancel</button>
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
<div class="modal-footer">
    <a href="#" class="btn" data-dismiss="modal">确定</a>
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
<!-- start:my js-->

<!-- end:my js-->


</body>
</html>
