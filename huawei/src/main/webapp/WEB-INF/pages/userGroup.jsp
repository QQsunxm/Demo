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
    <link href="${ctx}/css/jquery.dataTables.min.css" rel="stylesheet">
</head>
<!-- 弹出框添加 -->
<script src="${ctx}/js/jquery-1.11.2.min.js"></script>

<script src="${ctx}/js/bootstrap.min.js"></script>
<script src="${ctx}/js/index.js"></script>
<script src="${ctx}/js/jquery.dataTables.min.js"></script>
<script src="${ctx}/js/dataTbales.chs.js"></script>

<script type="text/javascript">
$(function(){
	//jquery1.9之后的live 改为如下
	$(document).on("click",".addorRemove",function(){
		var option = $(this).html();
		switch (option) {
			case "添加":
				//获取父元素，再获取父元素所有兄弟元素
				var num = null;
				var str = null;
				$(this).parent().siblings().each(function(i){
					switch (i) {
					case 0:
						num = $(this).html();//序号
						break;
					case 1:
						str = $(this).html();//用户组
						break;
					}
				});
				//"添加"-->"已添加"
				$(this).css("color","gray");
				$(this).html("已添加");
				//添加到所属用户
				$("#addTr").append($("<tr><th scope='row' id='num"+num+"'>"+num+"</th><td>"+str+"</td><td class='tb-set'><a href='#' data-toggle='modal' class='addorRemove'>删除</a></td></tr>"));
				break;
			case "已添加":
				var num = $(this).parent().siblings(".num").html();
				$("#num"+num).parent().remove();//jQuery移除元素是 自身remove(),这里是那倒tr.remove()
				//"已添加"-->"添加"
				$(this).css("color","#319b31");
				$(this).html("添加");
				break;
			case "删除":
				$(this).parent().parent().remove();//jQuery移除元素是 自身remove(),这里是那倒tr.remove()
				//获取删除项的序号
				var num = $(this).parent().parent().children("th").html();
				//获取th class为 num遍历
				$("#poptable tbody").find("tr").each(function(){
					if ($(this).children("th").html() == num) {
						//获取兄弟元素 class=tb-set
						$(this).find(".addorRemove").html("添加");
						$(this).find(".addorRemove").css("color","#319b31");
					}
				});
				break;
		}
	});
});
</script>
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
            <li><a href="#" class="usershow">用户管理</a></li>
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
        <form class="form-horizontal formzdy">
            <div class="form-group">
                <label class="col-xs-2 control-label">用户组名：</label>
                <div class="col-xs-8">
                    <input type="text" class="form-control">
                    <a href="#" class="btn btn-success postop" data-toggle="modal" data-target="#datatable">添加用户组</a>
                </div>
            </div>
            <div class="form-group">
                <label class="col-xs-2 control-label">所属用户：</label>
                <div class="col-xs-8">
                    <table class="table table-hover table-striped" id="example">
                        <thead>
                        <tr>
                            <th width="15%">序号</th>
                            <th width="70%">用户组</th>
                            <th width="15%">操作</th>
                        </tr>
                        </thead>
                        <tbody id="addTr">
                        <tr>
                            <th scope="row" id="num1">1</th>
                            <td>管理员</td>
                            <td class="tb-set">
                                <a href="#" data-toggle="modal" class="addorRemove">删除</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="form-group">
                <div class="col-xs-offset-2 col-xs-10">
                    <button type="submit" class="btn btn-success formbtn btn-lg">确认</button>
                    <button type="submit" class="btn btn-default formbtn btn-lg">取消</button>
                    <button type="submit" class="btn btn-default formbtn btn-lg">删除</button>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- 弹出层 -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="exampleModalLabel">添加用户组</h4>
            </div>
            <div class="modal-body">
                <p>无法删除 产品资料部 用户组！（用户组内还包含有所属用户）</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">确定</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="datatable" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="exampleModalLabel">用户组</h4>
            </div>
            <div class="modal-body">
                <table class="table table-bordered table-hover table-striped" id="poptable">
                    <thead>
                    <tr>
                        <th width="15%">序号</th>
                        <th width="70%">用户组</th>
                        <th width="15%">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th scope="row" class="num">1</th>
                        <td>管理员</td>
                        <td class="tb-set">
                            <a href="#" data-toggle="modal" style="color: gray;" class="addorRemove">已添加</a>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row" class="num">2</th>
                        <td>超级管理员</td>
                        <td class="tb-set">
                            <a href="#" data-toggle="modal" class="addorRemove">添加</a>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row" class="num">3</th>
                        <td>普通用户</td>
                        <td class="tb-set">
                            <a href="#" data-toggle="modal" class="addorRemove">添加</a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">确定</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>