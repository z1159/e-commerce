<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <title>订单管理页面</title>

    <link href="/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />

    <link href="/basic/css/demo.css" rel="stylesheet" type="text/css" />
    <link href="/css/orstyle.css" rel="stylesheet" type="text/css" />

    <link href="/css/personal.css" rel="stylesheet" type="text/css">
    <link href="/css/appstyle.css" rel="stylesheet" type="text/css">

    <link href="/css/hmstyle.css" rel="stylesheet" type="text/css"/>
    <link href="/css/skin.css" rel="stylesheet" type="text/css" />
    <script src="/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
    <script src="/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

</head>
<body>

<div class="center">
    <div class="col-main">
        <div class="main-wrap">
            <div class="user-order">
                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单管理</strong> / <small>Order</small></div>
                </div>
                <hr>
                <div class="am-tabs am-tabs-d2 am-margin" data-am-tabs="">
                    <ul class="am-avg-sm-5 am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="#tab1">所有订单</a></li>
                        <li class=""><a href="#tab2">待付款</a></li>
                        <li class=""><a href="#tab3">待发货</a></li>
                        <li class=""><a href="#tab4">待收货</a></li>
                        <li class=""><a href="#tab5">待评价</a></li>
                    </ul>
                    <div class="am-tabs-bd" style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
                        <div class="am-tab-panel am-fade am-active am-in" id="tab1">
                            <div class="order-top">
                                <div class="th th-item">商品</div>
                                <div class="th th-price">单价</div>
                                <div class="th th-number">数量</div>
                                <div class="th th-operation">商品操作</div>
                                <div class="th th-amount">合计</div>
                                <div class="th th-status">交易状态</div>
                                <div class="th th-change">交易操作</div>
                            </div>
                            <div class="order-main">
    <#list orderList as i>
                                <div class="order-list">
                                    <!--交易成功-->
                                    <div class="order-status5">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：<a href="javascript:;">${i.orderwId}</a></div>
                                            <span>成交时间：${i.orderTime?string('yyyy-MM-dd')}</span>
                                            <!--    <em>店铺：小桔灯</em>-->
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="${i.imgUrl}" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>${i.commTitle}</p>
                                                                    <p class="info-little">${i.commParameter}</p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            ${i.commMoneyc}
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>${i.mayMany}
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                        合计：${i.orderPrice}
                                                        <p>含运费：<span>10.00</span></p>
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">
                                                                <#if i.orderType == 1>
                                                                    等待买家付款
                                                                <#elseif i.orderType == 2>
                                                                    买家已付款
                                                                <#elseif i.orderType == 3>
                                                                    卖家已发货
                                                                <#elseif i.orderType == 4 >
                                                                    交易成功
                                                                <#else >
                                                                    订单不存在
                                                                </#if>
                                                            </p>
                                                            <p class="order-info"><a href="/commentController/goToOrderinfo?orderId=${i.orderId}">订单详情</a></p>
                                                            <p class="order-info"><a href="logistics.html">查看物流</a></p>
                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <div class="am-btn am-btn-danger anniu">
                                                            删除订单</div>
                                                    </li>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
    </#list>
                                    <!--交易失败-->
                                    <div class="order-status0">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
                                            <span>成交时间：2015-12-20</span>
                                            <!--    <em>店铺：小桔灯</em>-->
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                                    <p class="info-little">颜色：12#川南玛瑙
                                                                        <br>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">

                                                        </div>
                                                    </li>
                                                </ul>
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>礼盒袜子女秋冬 纯棉袜加厚 韩国可爱 </p>
                                                                    <p class="info-little">颜色分类：李清照
                                                                        <br>尺码：均码</p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">

                                                        </div>
                                                    </li>
                                                </ul>
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                                    <p class="info-little">颜色：12#川南玛瑙
                                                                        <br>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">

                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                        合计：676.00
                                                        <p>含运费：<span>10.00</span></p>
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">交易关闭</p>
                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <div class="am-btn am-btn-danger anniu">
                                                            删除订单</div>
                                                    </li>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!--待发货-->
                                    <div class="order-status2">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
                                            <span>成交时间：2015-12-20</span>
                                            <!--    <em>店铺：小桔灯</em>-->
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                                    <p class="info-little">颜色：12#川南玛瑙
                                                                        <br>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            <a href="refund.html">退款</a>
                                                        </div>
                                                    </li>
                                                </ul>

                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>礼盒袜子女秋冬 纯棉袜加厚 韩国可爱 </p>
                                                                    <p class="info-little">颜色分类：李清照
                                                                        <br>尺码：均码</p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            <a href="refund.html">退款</a>
                                                        </div>
                                                    </li>
                                                </ul>

                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                                    <p class="info-little">颜色：12#川南玛瑙
                                                                        <br>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            <a href="refund.html">退款</a>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                        合计：676.00
                                                        <p>含运费：<span>10.00</span></p>
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">买家已付款</p>
                                                            <p class="order-info"><a href="orderinfo.html">订单详情</a></p>
                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <div class="am-btn am-btn-danger anniu">
                                                            提醒发货</div>
                                                    </li>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!--不同状态订单-->
                                    <div class="order-status3">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
                                            <span>成交时间：2015-12-20</span>
                                            <!--    <em>店铺：小桔灯</em>-->
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                                    <p class="info-little">颜色：12#川南玛瑙
                                                                        <br>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            <a href="refund.html">退款/退货</a>
                                                        </div>
                                                    </li>
                                                </ul>

                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>礼盒袜子女秋冬 纯棉袜加厚 韩国可爱 </p>
                                                                    <p class="info-little">颜色分类：李清照
                                                                        <br>尺码：均码</p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            <a href="refund.html">退款/退货</a>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                        合计：676.00
                                                        <p>含运费：<span>10.00</span></p>
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">卖家已发货</p>
                                                            <p class="order-info"><a href="orderinfo.html">订单详情</a></p>
                                                            <p class="order-info"><a href="logistics.html">查看物流</a></p>
                                                            <p class="order-info"><a href="#">延长收货</a></p>
                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <div class="am-btn am-btn-danger anniu">
                                                            确认收货</div>
                                                    </li>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>
                        <div class="am-tab-panel am-fade" id="tab2">

                            <div class="order-top">
                                <div class="th th-item">
                                    商品
                                </div>
                                <div class="th th-price">
                                    单价
                                </div>
                                <div class="th th-number">
                                    数量
                                </div>
                                <div class="th th-operation">
                                    商品操作
                                </div>
                                <div class="th th-amount">
                                    合计
                                </div>
                                <div class="th th-status">
                                    交易状态
                                </div>
                                <div class="th th-change">
                                    交易操作
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">
                                    <div class="order-status1">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
                                            <span>成交时间：2015-12-20</span>
                                            <!--    <em>店铺：小桔灯</em>-->
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                                    <p class="info-little">颜色：12#川南玛瑙
                                                                        <br>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">

                                                        </div>
                                                    </li>
                                                </ul>

                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>礼盒袜子女秋冬 纯棉袜加厚 韩国可爱 </p>
                                                                    <p class="info-little">颜色分类：李清照
                                                                        <br>尺码：均码</p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">

                                                        </div>
                                                    </li>
                                                </ul>

                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                                    <p class="info-little">颜色：12#川南玛瑙
                                                                        <br>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">

                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                        合计：676.00
                                                        <p>含运费：<span>10.00</span></p>
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">等待买家付款</p>
                                                            <p class="order-info"><a href="#">取消订单</a></p>

                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <a href="pay.html">
                                                            <div class="am-btn am-btn-danger anniu">
                                                                一键支付</div></a>
                                                    </li>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="am-tab-panel am-fade" id="tab3">
                            <div class="order-top">
                                <div class="th th-item">
                                    商品
                                </div>
                                <div class="th th-price">
                                    单价
                                </div>
                                <div class="th th-number">
                                    数量
                                </div>
                                <div class="th th-operation">
                                    商品操作
                                </div>
                                <div class="th th-amount">
                                    合计
                                </div>
                                <div class="th th-status">
                                    交易状态
                                </div>
                                <div class="th th-change">
                                    交易操作
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">
                                    <div class="order-status2">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
                                            <span>成交时间：2015-12-20</span>
                                            <!--    <em>店铺：小桔灯</em>-->
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                                    <p class="info-little">颜色：12#川南玛瑙
                                                                        <br>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            <a href="refund.html">退款</a>
                                                        </div>
                                                    </li>
                                                </ul>

                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>礼盒袜子女秋冬 纯棉袜加厚 韩国可爱 </p>
                                                                    <p class="info-little">颜色分类：李清照
                                                                        <br>尺码：均码</p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            <a href="refund.html">退款</a>
                                                        </div>
                                                    </li>
                                                </ul>

                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                                    <p class="info-little">颜色：12#川南玛瑙
                                                                        <br>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            <a href="refund.html">退款</a>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                        合计：676.00
                                                        <p>含运费：<span>10.00</span></p>
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">买家已付款</p>
                                                            <p class="order-info"><a href="orderinfo.html">订单详情</a></p>
                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <div class="am-btn am-btn-danger anniu">
                                                            提醒发货</div>
                                                    </li>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="am-tab-panel am-fade" id="tab4">
                            <div class="order-top">
                                <div class="th th-item">
                                    商品
                                </div>
                                <div class="th th-price">
                                    单价
                                </div>
                                <div class="th th-number">
                                    数量
                                </div>
                                <div class="th th-operation">
                                    商品操作
                                </div>
                                <div class="th th-amount">
                                    合计
                                </div>
                                <div class="th th-status">
                                    交易状态
                                </div>
                                <div class="th th-change">
                                    交易操作
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">
                                    <div class="order-status3">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
                                            <span>成交时间：2015-12-20</span>
                                            <!--    <em>店铺：小桔灯</em>-->
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                                    <p class="info-little">颜色：12#川南玛瑙
                                                                        <br>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            <a href="refund.html">退款/退货</a>
                                                        </div>
                                                    </li>
                                                </ul>

                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>礼盒袜子女秋冬 纯棉袜加厚 韩国可爱 </p>
                                                                    <p class="info-little">颜色分类：李清照
                                                                        <br>尺码：均码</p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            <a href="refund.html">退款/退货</a>
                                                        </div>
                                                    </li>
                                                </ul>

                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                        合计：676.00
                                                        <p>含运费：<span>10.00</span></p>
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">卖家已发货</p>
                                                            <p class="order-info"><a href="orderinfo.html">订单详情</a></p>
                                                            <p class="order-info"><a href="logistics.html">查看物流</a></p>
                                                            <p class="order-info"><a href="#">延长收货</a></p>
                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <div class="am-btn am-btn-danger anniu">
                                                            确认收货</div>
                                                    </li>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="am-tab-panel am-fade" id="tab5">
                            <div class="order-top">
                                <div class="th th-item">
                                    商品
                                </div>
                                <div class="th th-price">
                                    单价
                                </div>
                                <div class="th th-number">
                                    数量
                                </div>
                                <div class="th th-operation">
                                    商品操作
                                </div>
                                <div class="th th-amount">
                                    合计
                                </div>
                                <div class="th th-status">
                                    交易状态
                                </div>
                                <div class="th th-change">
                                    交易操作
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">
                                    <!--不同状态的订单	-->
                                    <div class="order-status4">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
                                            <span>成交时间：2015-12-20</span>

                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                                    <p class="info-little">颜色：12#川南玛瑙
                                                                        <br>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            <a href="refund.html">退款/退货</a>
                                                        </div>
                                                    </li>
                                                </ul>

                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                        合计：676.00
                                                        <p>含运费：<span>10.00</span></p>
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">交易成功</p>
                                                            <p class="order-info"><a href="orderinfo.html">订单详情</a></p>
                                                            <p class="order-info"><a href="logistics.html">查看物流</a></p>
                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <a href="commentlist.html">
                                                            <div class="am-btn am-btn-danger anniu">
                                                                评价商品</div>
                                                        </a>
                                                    </li>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="order-status4">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：<a href="javascript:;">1601430</a></div>
                                            <span>成交时间：2015-12-20</span>
                                            <!--    <em>店铺：小桔灯</em>-->
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                                    <p class="info-little">颜色：12#川南玛瑙
                                                                        <br>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            <a href="refund.html">退款/退货</a>
                                                        </div>
                                                    </li>
                                                </ul>

                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>礼盒袜子女秋冬 纯棉袜加厚 韩国可爱 </p>
                                                                    <p class="info-little">颜色分类：李清照
                                                                        <br>尺码：均码</p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            <a href="refund.html">退款/退货</a>
                                                        </div>
                                                    </li>
                                                </ul>

                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="/images/kouhong.jpg_80x80.jpg" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
                                                                    <p class="info-little">颜色：12#川南玛瑙
                                                                        <br>包装：裸装 </p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                            333.00
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>2
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">
                                                            <a href="refund.html">退款/退货</a>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                        合计：676.00
                                                        <p>含运费：<span>10.00</span></p>
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">交易成功</p>
                                                            <p class="order-info"><a href="orderinfo.html">订单详情</a></p>
                                                            <p class="order-info"><a href="logistics.html">查看物流</a></p>
                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <a href="toQianEval">
                                                            <div class="am-btn am-btn-danger anniu">
                                                                评价商品</div>
                                                        </a>
                                                    </li>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>



</body>
</html>