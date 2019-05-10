<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>优惠券</title>

		<link href="/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="/css/personal.css" rel="stylesheet" type="text/css">
		<link href="/css/cpstyle.css" rel="stylesheet" type="text/css">
			
		<script src="/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="/AmazeUI-2.4.2/assets/js/amazeui.js"></script>
	</head>

	<body>
		<!--头 -->
		<#include "../../head.ftl">
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

					<div class="user-coupon">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">优惠券</strong> / <small>Coupon</small></div>
						</div>
						<hr/>

						<div class="am-tabs-d2 am-tabs  am-margin" data-am-tabs>

							<ul class="am-avg-sm-2 am-tabs-nav am-nav am-nav-tabs">
								<li class="am-active"><a href="#tab1">可用优惠券</a></li>
								<li ><a href="#tab2">已用/过期优惠券</a></li>

							</ul>

							<div class="am-tabs-bd">
								<div class="am-tab-panel am-fade am-in am-active" id="tab1">
									<div class="coupon-items">

									<#list list as item>
											<#if item.couponState==0>
													<div class="coupon-item coupon-item-d">
														<div class="coupon-list">

															<div class="c-type">
																<div class="c-class">
																	<strong>购物券</strong>
																</div>
																<div class="c-price">
																	<strong>￥${(item.cpSubtract)!""}</strong>
																</div>
																<div class="c-limit">
																	【消费满&nbsp;${(item.cpMeet)!""}元&nbsp;可用】
																</div>
																<div class="c-time"><span>使用期限</span>${(item.couponTimes)?string("yyyy-MM-dd")}--${(item.couponTimee)?string("yyyy-MM-dd")}</div>
																<div class="c-type-top"></div>

																<div class="c-type-bottom"></div>
															</div>

															<div class="c-msg">
																<div class="c-range">
																	<div class="range-all">
																		<div class="range-item">
																			<span class="label">券&nbsp;编&nbsp;号：</span>
																			<span class="txt">${(item.couponId)!""}</span>
																		</div>
																	</div>
																</div>
																<#if (item.couponState)==1>
                                                                    <div class="op-btns">
                                                                        <a href="#" class="btn"><span class="txt">已使用</span><b></b></a>
                                                                    </div>
																<#elseif (item.couponState)==2>
                                                                    <div class="op-btns">
                                                                        <a href="#" class="btn"><span class="txt">删除</span><b></b></a>
                                                                    </div>
																<#else>
                                                                    <div class="op-btns">
                                                                        <a href="#" class="btn"><span class="txt">立即使用</span><b></b></a>
                                                                    </div>
																</#if>
															</div>
															<#if (item.couponState)==2>
																<li class="td td-usestatus ">
																	<div class="item-usestatus ">
																		<span><img src="/images/gift_stamp_21.png"</span>
																	</div>
																</li>
															</#if>
														</div>
													</div>
											</#if>
									</#list>

									</div>

								</div>



                            <div class="am-tab-panel am-fade" id="tab2">
                                <div class="coupon-items">
								<#list list as item>
									<#if item.couponState!=0>
                                        <div class="coupon-item coupon-item-d">
                                            <div class="coupon-list">

                                                <div class="c-type">
                                                    <div class="c-class">
                                                        <strong>购物券</strong>
                                                    </div>
                                                    <div class="c-price">
                                                        <strong>￥${(item.cpSubtract)!""}</strong>
                                                    </div>
                                                    <div class="c-limit">
                                                        【消费满&nbsp;${(item.cpMeet)!""}元&nbsp;可用】
                                                    </div>
                                                    <div class="c-time"><span>使用期限</span>${(item.couponTimes)?string("yyyy-MM-dd")}--${(item.couponTimee)?string("yyyy-MM-dd")}</div>
                                                    <div class="c-type-top"></div>

                                                    <div class="c-type-bottom"></div>
                                                </div>

                                                <div class="c-msg">
                                                    <div class="c-range">
                                                        <div class="range-all">
                                                            <div class="range-item">
                                                                <span class="label">券&nbsp;编&nbsp;号：</span>
                                                                <span class="txt">${(item.couponId)!""}</span>
                                                            </div>
                                                        </div>
                                                    </div>
													<#if (item.couponState)==1>
                                                        <div class="op-btns">
                                                            <a href="#" class="btn"><span class="txt">删除</span><b></b></a>
                                                        </div>
													<#elseif (item.couponState)==2>
                                                        <div class="op-btns">
                                                            <a href="#" class="btn"><span class="txt">删除</span><b></b></a>
                                                        </div>
													<#else>
                                                        <div class="op-btns">
                                                            <a href="#" class="btn"><span class="txt">立即使用</span><b></b></a>
                                                        </div>
													</#if>
                                                </div>
												<#if (item.couponState)==2>
                                                    <li class="td td-usestatus ">
                                                        <div class="item-usestatus ">
                                                            <span><img src="/images/gift_stamp_21.png"</span>
                                                        </div>
                                                    </li>
												</#if>
												<#if (item.couponState)==1>
                                                    <li class="td td-usestatus ">
                                                        <div class="item-usestatus ">
                                                            <span><img src="/images/gift_stamp_31.png"</span>
                                                        </div>
                                                    </li>
												</#if>
                                            </div>
                                        </div>
									</#if>
								</#list>

                                </div>
                            </div>
						</div>

					</div>

				</div>
				<!--底部-->

			</div>

		<#include "../../bottom.ftl">
		<#include "../../liebiao.ftl">
            </div>

		</div>

	</body>

</html>