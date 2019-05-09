<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>我的足迹</title>

    <link href="/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

    <link href="/css/personal.css" rel="stylesheet" type="text/css">
    <link href="/css/footstyle.css" rel="stylesheet" type="text/css">

</head>

<body>
<!--头 -->
<!--头 -->
<#include "../head.ftl">
<div class="nav-table">
    <div class="long-title"><span class="all-goods">全部分类</span></div>
    <div class="nav-cont">
        <ul>
            <li class="index"><a href="#">首页</a></li>
            <li class="qc"><a href="#">闪购</a></li>
            <li class="qc"><a href="#">限时抢</a></li>
            <li class="qc"><a href="#">团购</a></li>
            <li class="qc last"><a href="#">大包装</a></li>
        </ul>
        <div class="nav-extra">
            <i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
            <i class="am-icon-angle-right" style="padding-left: 10px;"></i>
        </div>
    </div>
</div>
<b class="line"></b>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">

            <div class="user-foot">
                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的足迹</strong> / <small>Browser&nbsp;History</small></div>
                </div>
                <hr/>

                <!--足迹列表 -->
<#list comList as comm>
    <div class="goods">
        <div class="goods-date" data-date="2015-12-21">
            <span><i class="month-lite">12</i>.<i class="day-lite">21</i><i class="date-desc">今天</i></span>
            <del class="am-icon-trash"></del>
            <s class="line"></s>
        </div>

        <div class="goods-box first-box">
            <div class="goods-pic">
                <div class="goods-pic-box">
                    <a class="goods-pic-link" target="_blank" href="#" title="${comm.commTitle}">
                        <img src="/images/TB1_pic.jpg_200x200.jpg" class="goods-img"></a>
                </div>
                <a class="goods-delete" href="javascript:void(0);"><i class="am-icon-trash"></i></a>
                <div class="goods-status goods-status-show"><span class="desc">宝贝已下架</span></div>
            </div>

            <div class="goods-attr">
                <div class="good-title">
                    <a class="title" href="#" target="_blank">${comm.commTitle}</a>
                </div>
                <div class="goods-price">
										<span class="g_price">
                                        <span>¥</span><strong>${comm.commMoneyc}</strong>
										</span>
                    <span class="g_price g_price-original">
                                        <span>¥</span><strong>${comm.commMoneyy}</strong>
										</span>
                </div>
                <div class="clear"></div>
                <div class="goods-num">
                    <div class="match-recom">
                        <a href="#" class="match-recom-item">找相似</a>
                        <a href="#" class="match-recom-item">找搭配</a>
                        <i><em></em><span></span></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

</#list>





                <div class="clear"></div>



            </div>
        </div>

        <!--底部-->
<#include "../bottom.ftl">
    <#include "../liebiao.ftl">
</div>

</body>

</html>