<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="b"%>
<b:base></b:base>
<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-cache" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>登录</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="${staticFile}/theme/assets/i/favicon.ico">
    <link rel="stylesheet" href="${staticFile}/theme/assets/css/amazeui.min.css">
    <link rel="stylesheet" href="${staticFile}/theme/assets/css/style.css">
</head>
<body style="padding-top:0;" >
<div id="myBody">
<header id="headregister"  data-am-widget="header" class="am-header am-header-default am-header-fixed" style="position:fixed;top:0;background:#fff;margin:0px;border-bottom: solid #ececec 1px;">
    <div class="am-header-left am-header-nav" style="height:100%;display: none;">
        <a href="javaScript:void(0)" onclick="javaScript:history.go(-1);" class="" style="padding-top: 15px;margin: 0;">
            <img src="${staticFile}/theme/assets/images/back_icon.png" style="width: 20px;height: 20px;">
        </a>
    </div>
    <h1 class="am-header-title">
        <a href="javaScript:void(0)" class="" style="color: #333;">用户登录</a>
    </h1>
    <div class="am-header-right am-header-nav" style="display: none;padding-top: 12px;margin: 0;">
        <a href="#doc-oc-demo1" data-am-offcanvas >
            <i class="am-header-icon am-icon-bars" style="color: #333;"></i>
        </a>
    </div>
</header>


<!-- 侧边栏内容 -->
<div id="doc-oc-demo1" class="am-offcanvas" style="margin-top: 50px;">
    <div class="am-offcanvas-bar am-offcanvas-bar-flip" style="margin-top: 50px;width: 180px;">
        <div class="am-offcanvas-content" style="margin-top: 0px;padding-left: 0px;">
            <div data-am-widget="list_news" class="am-list-news am-list-news-default" style="width: 100%;">
                <div class="am-list-news-hd am-cf">
                    <a href="##" class="">
                        <h2 style="color: #FFF;">账户中心</h2>
                    </a>
                </div>
                <div class="am-list-news-bd">
                    <ul class="am-list">
                        <li class="am-g am-list-item-dated" style="background-color: #333;padding-left: 20px;">
                            <a href="bankRecharge" class="am-list-item-hd ">我要充值</a>
                        </li>
                        <li class="am-g am-list-item-dated" style="background-color: #333;padding-left: 20px;">
                            <a href="addWithdrawl" class="am-list-item-hd ">我要提现</a>
                        </li>
                        <li class="am-g am-list-item-dated" style="background-color: #333;padding-left: 20px;">
                            <a href="myaccount" class="am-list-item-hd ">我的账户</a>
                        </li>
                        <li class="am-g am-list-item-dated" style="background-color: #333;padding-left: 20px;">
                            <a href="/wap" class="am-list-item-hd ">我要投资</a>
                        </li>
                        <!--
                        <li class="am-g am-list-item-dated" style="background-color: #333;padding-left: 20px;">
                            <a href="recommendTop" class="am-list-item-hd ">推荐排行</a>
                        </li>
                        -->
                        <li class="am-g am-list-item-dated" style="background-color: #333;padding-left: 20px;">
                            <a href="mysetting" class="am-list-item-hd ">我的设置</a>
                        </li>
                    </ul>
                </div>
                <div class="am-list-news-hd am-cf">
                    <a href="##" class="">
                        <h2 style="color: #FFF;">帮助中心</h2>
                    </a>
                </div>
                <div class="am-list-news-bd">
                    <ul class="am-list">
                        <li class="am-g am-list-item-dated" style="background-color: #333;padding-left: 20px;">
                            <a href="aboutQmama" class="am-list-item-hd ">关于我们</a>
                        </li>
                        <li class="am-g am-list-item-dated" style="background-color: #333;padding-left: 20px;">
                            <a href="commonFAQ" class="am-list-item-hd ">常见问题</a>
                        </li>
                        <li class="am-g am-list-item-dated" style="background-color: #333;padding-left: 20px;">
                            <a href="anquanbaozhang" class="am-list-item-hd ">安全保障</a>
                        </li>
                        <li class="am-g am-list-item-dated" style="background-color: #333;padding-left: 20px;">
                            <a href="rest/customerservice/target" class="am-list-item-hd ">联系客服</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div  id="contenDiv" style="text-align:center; margin: 0px;padding: 0px;position:relative;top:50px;left:0;display: none;">
    <div class="am-g">
        <form class="am-form am-xs-form" action="login" id="loginform" name="loginform" method="post" autocomplete="off" style="margin-top: 15px;">
            <fieldset>
                <div id="userNameDiv" class="am-form-group" style="border-radius: 5px;background: white;border: solid 1px #ccc;height: 44px;margin-bottom: 15px;">
                    <div class="am-input-group" style="width: 99%;margin: 0px;padding: 3px;margin: 1px;padding:0px;height: 44px;">
                        <span class="am-input-group-label" style="background: none;width:60px;border: 0;position: relative;top:-3px;">
                            <img id="userNameIcon" src="/wap/theme/assets/images/entry_normal_user.png" style="width: 20px;height: 20px;">
                        </span>
                        <input id="userName" type="tel" class="J_input " name="username" style="border: 0px;height: 40px;" placeholder="输入手机号" required="required">
                    </div>
                </div>
                <div id="passWordDiv" class="am-form-group" style="border-radius: 5px;background: white;border: solid 1px #ccc;height: 44px;margin-bottom: 15px;">
                    <div class="am-input-group" style="width: 99%;margin: 3px;margin: 1px;padding:0px;height: 44px;">
                        <span class="am-input-group-label" style="background: none;width:60px;border: 0;position: relative;top:-3px;">
                            <img id="passWordIcon" src="/wap/theme/assets/images/register_normal_icon2.png" style="width: 20px;height: 20px;">
                        </span>
                        <input id="passWord" type="password" class="J_input"  name="password" style="border: 0px;height: 40px;" placeholder="6~12位字符,区分大小写">
                    </div>
                </div>

                <button type="button" id="J_login" class="am-btn am-btn-block J_login disable" style="color: white;font-size: 16px;border-radius: 5px;">
                    <span class="am-icon-spinner am-icon-spin J_load" style="display:none;"></span>&nbsp;立即登录
                </button>

                <div style="font-size: 13px;margin-top: 10px;display: none;">
                    <span style="float: left;color: #999;">
                        新朋友?<a href="register" style="color: #0e90d2">免费注册>></a>
                    </span>
                    <span style="float: right;">
                        <a href="forgetPasswordStep1" class="am-fr" style="color: #999;">忘记密码?</a>
                    </span>
                </div>
            </fieldset>
        </form>
    </div>

    <div style="bottom: 0px;margin:0px;width: 100%;">
         <br>
        <!-- 
        <a href="/wap/active/wap06" target="_blank">
        <ul class="am-slides">
                <li><img style="width: 100%;height:auto;" src="${staticFile}/theme/assets/images/active/1117wap_banner.jpg"></li>
        </ul>
        </a>
         -->
    </div>

</div>

<div class="am-modal am-modal-alert" tabindex="-1" id="my-alert">
    <div class="am-modal-dialog">
        <div class="am-modal-bd"></div>
        <div class="am-modal-footer">
            <span class="am-modal-btn" >确定</span>
        </div>
    </div>
</div>

<div id="avoidLoginDiv" style="text-align: center;display: none">
    <img src="/wap/theme/assets/images/loading.gif">
</div>
<script src="${staticFile}/theme/assets/js/jquery.min.js"></script>
<script src="${staticFile}/theme/assets/js/amazeui.js"></script>
<script src="${staticFile}/theme/assets/js/jquery.form.js"></script>

<script type="text/javascript">
    $('input').bind('focus',function(){
        $("#headregister").css('position','static');
        $("#contenDiv").css('top','0');
    });
    $("#userName").focus(function(){
        $("#userNameDiv").css({"border":"solid","border-color":"#33c6f5","border-width":"1px","border-radius":"5px","background":"white"});
        $("#userNameIcon").css("color","#009cda");
        $("#userNameIcon").attr("src", "/wap/theme/assets/images/entry_select_user.png");
    });
    $("#userName").blur(function(){
        $("#userNameDiv").css({"border":"solid","border-color":"#ccc","border-width":"1px","border-radius":"5px","background":"white"});
        $("#userNameIcon").css("color","#666");
        $("#userNameIcon").attr("src", "/wap/theme/assets/images/entry_normal_user.png");
    });

    $("#passWord").focus(function(){
        $("#passWordDiv").css({"border":"solid","border-color":"#33c6f5","border-width":"1px","border-radius":"5px","background":"white"});
        $("#passWordIcon").css("color","#009cda");
        $("#passWordIcon").attr("src", "/wap/theme/assets/images/register_select_icon2.png");
    });
    $("#passWord").blur(function(){
        $("#passWordDiv").css({"border":"solid","border-color":"#ccc","border-width":"1px","border-radius":"5px","background":"white"});
        $("#passWordIcon").css("color","#666");
        $("#passWordIcon").attr("src", "/wap/theme/assets/images/register_normal_icon2.png");
    });

    $(".J_login").bind("click",function(){
        var openid = "${openid}";
        if(openid!="") {
            $(".J_login").attr("type","submit");
            $('#loginform').ajaxForm(options);
        }else{
            var username = rightusername($("#userName").val());
            var password = isPassWord($("#passWord").val());
            if(username == false){
                $("#my-alert .am-modal-bd").text("您输入手机号有误！");
                $("#my-alert").modal("open");
                return;
            }else if(password == false){
                $("#my-alert .am-modal-bd").text("您输入的密码有误！");
                $("#my-alert").modal("open");
                return;
            }else{
                $(".J_login").attr("type","submit");
                $('#loginform').ajaxForm(options);
            }
        }
    });

    //必须为邮箱或者手机号
    function rightusername(value){
        if(value == null || '' == value) return false;
        value = $.trim(value);
        var length = value.length;
        var mobile = /^(((13[0-9]{1})|(14[0-9]{1})|(15[0-9]{1})|(17[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
        return (length == 11 && mobile.test(value));
    }

    //密码验证
    function isPassWord(value){
        return /^[\@A-Za-z0-9\!\#\$\%\^\&\*\.\~]{6,20}$/.test(value);
    }

    var message =" ";
    var options = {
        beforeSubmit : function() {
            $('.J_login').attr('disabled','disabled');
            $(".J_load").show();
        },
        error : function() {
            $("#my-alert .am-modal-bd").text("登录失败，请重试！");
            $("#my-alert").modal("open");
            $('.J_login').removeAttr('disabled');
            $(".J_load").hide();
        },
        success : function(data) {
            if(data.code != 1 || data.code != "1" ){
                $('.J_login').removeAttr('disabled');
                $(".J_load").hide();
                var message = data.message;
                $("#my-alert .am-modal-bd").text(message);
                $("#my-alert").modal("open");
            }else{
                if(getQueryString('his')!=1){
                    window.location.href = getQueryString('his');
                }else if(data.data!=''){
                    window.location.href = "${basePath}"+data.data.url;
                }else{
                    window.location.href = "${basePath}myaccount";
                }
            }
        }
    };

    function getQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]); return 1;
    }

    $(function(){
        var openid = "${openid}";
        if(openid!=""){
            $("#myBody").hide();
            $("#contenDiv").hide();
            $("#userName").val("${openid}");
            $("#passWord").val("${password}");
            window.setTimeout(function() {
                $(".J_login").attr("type","submit");
                $('#loginform').ajaxForm(options);
                if(document.all){
                    document.getElementById("J_login").click();
                }else{
                    var evt = document.createEvent("MouseEvents");
                    evt.initEvent("click", true, true);
                    document.getElementById("J_login").dispatchEvent(evt);
                }
            },2);
        }else{
            $("#contenDiv").show();
        }
    });


</script>
<jsp:include page="/WEB-INF/views/foot.jsp"/>
</div>
</body>
</html>