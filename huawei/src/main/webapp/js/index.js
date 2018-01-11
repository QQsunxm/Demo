$(function () {
    //查看报告高度自动生成
    $('#frameReport').css('height', $(window).height());
    //侧导航数据自己加载
    $.post('?m=demo&a=getdemolist', {}, function (data) {
        $('.demomenu .demotitle').html(data.html);

    }, 'json');
    $.post('?m=reporttasks&a=getreportlist', {}, function (data) {
        $('.navmenu .navtitle').html(data.html);
    }, 'json');

//弹出菜单
    $(document.body).on('click', '.dropnav a[data-toggle="dropdown"] ', function (e) {
        e.preventDefault();
        if ($(this).next().hasClass('show')) {
            $(this).next().hide();
            $(this).next().removeClass('show');
        } else {
            $(this).next().show();
            $(this).next().addClass('show');
        }

    })
    //标题右侧缩进按钮点击
    $('.lusermenu,.page-content,.nav-pop a').on('click', function (e) {

        $('.llist').css({'opacity': '0', 'z-index': -1}).animate({left: '-170px'}, 100);
        $('.leftnav li a').css('background', '#61bd4e ');
        $('.menupop').removeClass('navmenuon');
        $('.menudemo').removeClass('demomenuon');
        $('.navpop').removeClass('nav-popon');
        $('.leftnav-user').removeClass('nav-useron')


        $('.nav-pop').css({'opacity': '0', 'z-index': -1}).animate({left: '-170px'}, 100);
    });
//数据上传点击
    $('.menupop').on('click', function (e) {
        e.preventDefault();
        $('.llist').css({'opacity': '0', 'z-index': -1}).animate({left: '-170px'}, 100);
        $('.leftnav li a').css('background', '#61bd4e ');

        $('.menudemo').removeClass('demomenuon');
        $('.navpop').removeClass('nav-popon');
        $('.leftnav-user').removeClass('nav-useron')

        $('.nav-pop').css({'opacity': '0', 'z-index': -1}).animate({left: '-170px'}, 100);

        if (!$(this).hasClass('navmenuon')) {
            $(this).css('background', '#55b541');
            $('.navmenu').css({'opacity': '1'}).animate({left: '80px'}, 100);
            $(this).addClass('navmenuon');
        } else {
            $(this).css('background', '#61bd4e ');
            $('.navmenu').css({'opacity': '1', 'z-index': -1}).animate({left: '-170px'}, 100);
            $(this).removeClass('navmenuon');
        }


    });
    //报告查询点击
    $('.menudemo').on('click', function (e) {
        e.preventDefault();
        $('.llist').css({'opacity': '0', 'z-index': -1}).animate({left: '-170px'}, 100);
        $('.leftnav li a').css('background', '#61bd4e ');
        $('.menupop').removeClass('navmenuon');

        $('.navpop').removeClass('nav-popon');
        $('.leftnav-user').removeClass('nav-useron')

        $('.nav-pop').css({'opacity': '0', 'z-index': -1}).animate({left: '-170px'}, 100);
        if (!$(this).hasClass('demomenuon')) {
            $(this).css('background', '#55b541');
            $('.demomenu').css({'opacity': '1'}).animate({left: '80px'}, 100);
            $(this).addClass('demomenuon');
        } else {
            $(this).css('background', '#61bd4e ');
            $('.demomenu').css({'opacity': '1', 'z-index': -1}).animate({left: '-170px'}, 100);
            $(this).removeClass('demomenuon');
        }


    });
    //系统管理点击
    $('.navpop').click(function () {
        $('.llist').css({'opacity': '0', 'z-index': -1}).animate({left: '-170px'}, 100);
        $('.leftnav li a').css('background', '#61bd4e ');
        $('.menupop').removeClass('navmenuon');
        $('.menudemo').removeClass('demomenuon');

        $('.leftnav-user').removeClass('nav-useron')


        $(this).css('background', '#55b541');
        $('.nav-pop').css({'opacity': '1'}).animate({left: '81px'}, 100);

        if (!$(this).hasClass('nav-popon')) {
            $(this).css('background', '#55b541');
            $('.nav-pop').css({'opacity': '1'}).animate({left: '80px'}, 100);
            $(this).addClass('nav-popon');
        } else {
            $(this).css('background', '#61bd4e ');
            $('.nav-pop').css({'opacity': '1', 'z-index': -1}).animate({left: '-170px'}, 100);
            $(this).removeClass('nav-popon');
        }
    });


//用户信息点击
    $('.leftnav-user').click(function () {
        $('.llist').css({'opacity': '0', 'z-index': -1}).animate({left: '-170px'}, 100);
        $('.leftnav li a').css('background', '#61bd4e ');
        $('.menupop').removeClass('navmenuon');
        $('.menudemo').removeClass('demomenuon');
        $('.navpop').removeClass('nav-popon');


        $('.nav-pop').css({'opacity': '0', 'z-index': -1}).animate({left: '-170px'}, 100);


        if (!$(this).hasClass('nav-useron')) {
            $(this).css('background', '#777');
            $('.nav-user').css({'opacity': '1'}).animate({left: '80px'}, 100);
            $(this).addClass('nav-useron');
        } else {
            $('.nav-user').css({'opacity': '1', 'z-index': -1}).animate({left: '-170px'}, 100);
            $(this).removeClass('nav-useron');
        }
    });


//数据列表点击判断
    $(document.body).on('click', '.mission_config', function (e) {
        var url = window.location.search;
        console.log(url);
        if (url.indexOf("reporttasks") >= 0) {

        } else {
            //alert($(this).parent().index()+'------'+$(this).parent().parent().parent().index());
            location.href = '?m=reporttasks&ro=' + $(this).parent().index() + '&uro=' + $(this).parent().parent().parent().index();
        }
    })
    $(document.body).on('click', '._view_report', function (e) {
        var url = window.location.search;
        console.log(url);
        if (url.indexOf("demo") >= 0) {

        } else {
            //alert($(this).parent().index()+'------'+$(this).parent().parent().parent().index());
            location.href = '?m=demo&a=viewReport&do=' + $(this).parent().index() + '&udo=' + $(this).parent().parent().parent().index();
        }
    })


//自动点击
    var url = window.location.search;
    if ($('.menupop').data('type') != 1) {
        if (url.indexOf("reporttasks") >= 0) {
            if (url.indexOf("uro") >= 0) {

                pagurian.call("modules/reporttasks/app", function (app) {
                    app.page.sidebar();
                    $('.navmenu .dropnav').eq(window.location.search.split('uro=')[1]).find('.mission_config').eq(window.location.search.split('ro=')[1].split('&')[0]).click();
                });
                $('.menupop').attr('data-type', 1);

            }
        }
    }

    if ($('.menudemo').data('type') != 1) {
        if (url.indexOf("demo") >= 0 && url.indexOf("viewReport") >= 0) {
            if (url.indexOf("udo") >= 0) {
                pagurian.call("modules/demo/app", function (app) {
                    var yh_url = $("#yonghongForm").attr("action");
                    var yh_user = $("#user").attr("value");
                    var yh_pwd = $("#pwd").attr("value");
                    var yh_info = {"YH_URL": yh_url, "YH_USER": yh_user, "YH_PWD": yh_pwd};
                    app.page.sidebar(yh_info, 1, url);
                });
            }
        }
    }


});
//datatable
$(document).ready(function() {
    $('#example').DataTable();
    $('#poptable').DataTable();
    $('#adddata').DataTable();
} );
