<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <!-- Bootstrap -->
    <link href="${ctx}/css/bootstrap.css" rel="stylesheet">
    <link href="${ctx}/css/bootstrap-theme.css" rel="stylesheet">
    <link href="${ctx}/css/index.css" rel="stylesheet">
    <link href="${ctx}/css/normalize.css" rel="stylesheet">
    <link href="${ctx}/fonts/css/font-awesome.css" rel="stylesheet">

</head>
<body>
<div class="lnav">
    <div class="leftnav">
        <a href="?m=index"><div class="hwlogo"></div></a>
        <div class="navlist">
            <ul>
                <li><a href="#" class="menupop"><i class="icon-upload-alt"></i><br>数据上传</li></a></li>
                <li><a href="#" class="menudemo"><i class="icon-building"></i><br>报告查询</a></li>
                <!-- IF flag=="1" -->
                <li><a href="#" class="navpop"><i class="icon-cog"></i><br>系统管理</a></li>
                <!-- ENDIF -->
            </ul>
        </div>
        <div class="leftnav-user">
            <a href="#"><i class="icon-user"></i></a>
        </div>
    </div>
    <div class="navmenu llist">
        <div class="row">
            <div class="col-xs-6">
                <h3>数据上传</h3>
            </div>
            <div class="col-xs-6 text-right ">
                <i class="lusermenu icon-circle-arrow-left"></i>
            </div>
        </div>
        <div class="navmenu-list">
            <ul  class="navtitle">
                <li class="dropnav">
                    <a data-toggle="dropdown" href="#">
                        测试任务组1
                        <i class="icon-chevron-down"></i>
                    </a>
                    <ul class="dropnav-menu show">
                        <li>
                            <a class="mission_config" task_id="36" mission_cycle="day" mission_time="1" mission_datetime="2015-08-14 11:07:22" mission_template_id="" href="javascript:;" task_info="测试任务1">测试任务1</a>
                        </li>
                        <li>
                            <a class="mission_config" task_id="36" mission_cycle="day" mission_time="1" mission_datetime="2015-08-14 11:07:22" mission_template_id="" href="javascript:;" task_info="测试任务1">测试任务1</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul  class="navtitle">
                <li class="dropnav">
                    <a data-toggle="dropdown" href="#">
                        测试任务组1
                        <i class="icon-chevron-down"></i>
                    </a>
                    <ul class="dropnav-menu show">
                        <li>
                            <a class="mission_config" task_id="36" mission_cycle="day" mission_time="1" mission_datetime="2015-08-14 11:07:22" mission_template_id="" href="javascript:;" task_info="测试任务1">测试任务1</a>
                        </li>
                        <li>
                            <a class="mission_config" task_id="36" mission_cycle="day" mission_time="1" mission_datetime="2015-08-14 11:07:22" mission_template_id="" href="javascript:;" task_info="测试任务1">测试任务1</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="usermenu llist">
        <div class="row">
            <div class="col-xs-12">
                <div class="col-xs-2">　</div>  <div class="col-xs-6"> <h3>用户管理</h3></div>   <div class="col-xs-3 text-right ">  <h3><i class="lusermenu fa fa-arrow-circle-o-left"></i></h3></div>
            </div>
        </div>
        <div class="navmenu-list">
            <ul>
                <li class="dropnav">
                    <a href="#" data-toggle="dropdown">用户管理<i class="icon-chevron-down"></i></a>
                    <ul class="dropnav-menu show">
                        <li><a href="?m=user&a=index">用户列表</a></li>
                        <li><a href="?m=user&a=add">新增用户</a></li>
                    </ul>
                </li>
                <li class="dropnav">
                    <a href="#" data-toggle="dropdown">用户标签管理<i class="icon-chevron-down"></i></a>
                    <ul class="dropnav-menu show">
                        <li><a href="?m=user&a=group">标签列表</a></li>
                        <li><a href="?m=user&a=groupadd">新增标签</a></li>

                    </ul>
                </li>

            </ul>
        </div>
    </div>
    <div class="demomenu llist">
        <div class="col-xs-12">
            <div class="col-xs-2">　</div>  <div class="col-xs-6"> <h3>报告查询</h3></div>   <div class="col-xs-3 text-right ">  <h3><i class="lusermenu fa fa-arrow-circle-o-left"></i></h3></div>
        </div>
        <div class="navmenu-list">
            <ul  class="demotitle">

            </ul>
        </div>
    </div>

    <div class="nav-pop">
        <ul>
            <li><a href="#" class="configshow">数据配置</a></li>
            <li><a href="#" class="reportshow">报告配置</a></li>
            <li><a href="?m=fieldconfig">字段配置</a></li>
            <li><a href="${ctx}/test.htm" class="usershow">用户组管理</a></li>
        </ul>
    </div>
    <div class="nav-user llist">
        <ul>
            <li><a href="#" id="userinfor">用户信息</a></li>
            <li><a href="?m=login&a=logout">退出系统</a></li>

        </ul>
    </div>
</div>
<div class="page-content">
    <ol class="breadcrumb brpos">
        <li><a href="#">Home</a></li>
        <li class="active">当前页</li>
    </ol>
    <div class="container-fluid mt30">
    <div class="row pd20">
        <div class="col-xs-6">
            <div class="bd1">
                <h4>数据上传</h4>
                <div class="datainfo">
                    <p>公上报N条数据</p>
                    <p>最后一条数据时间：2015年3月12日</p>
                </div>
                <span><i class="icon-upload-alt"></i> </span>
            </div>
        </div>
        <div class="col-xs-6">
            <div class="bd2">
                <h4>报告查询</h4>
                <div class="datainfo">
                    <p>公上报N条数据</p>
                    <p>最后一条数据时间：2015年3月12日</p>
                </div>
                <span><i class="icon-building"></i> </span>
            </div>
        </div>
    </div>
    <div class="row pd20">
        <div class="col-xs-6">
            <div class="bd1">
                <h4>数据管理</h4>
                <div class="databtn">
                    <a type="button" class="btn btn-success">数据批阅</a>
                    <a type="button" class="btn btn-success">数据库上传</a>
                </div>
                <span><i class="icon-screenshot"></i> </span>
            </div>
        </div>
        <div class="col-xs-6">
            <div class="bd2">
                <h4>系统配置</h4>
                <div class="databtn">
                    <a type="button" class="btn btn-success">数据配置</a>
                    <a type="button" class="btn btn-success">报告配置</a>
                    <a type="button" class="btn btn-success">字段配置</a>
                    <a type="button" class="btn btn-success">用户管理</a>
                </div>
                <span><i class="icon-cog"></i> </span>
            </div>
        </div>
    </div>
    </div>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${ctx}/js/jquery-1.11.2.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${ctx}/js/bootstrap.min.js"></script>
<script src="${ctx}/js/index.js"></script>
<script src="${ctx}/js/jquery.dataTables.min.js"></script>
<script src="${ctx}/js/dataTbales.chs.js   "></script>
</body>
</html>