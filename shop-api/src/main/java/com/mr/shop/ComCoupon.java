package com.mr.shop;

import lombok.Data;

import java.util.Date;

@Data
public class ComCoupon {
    private Integer couponId;

    private Integer userId;
    //订单ID
    private Integer orderId;
    //优惠券开始时间
    private Date couponTimes;
    //优惠券过期时间
    private Date couponTimee;
    //优惠券使用时间
    private Date couponTimey;
    //优惠券使用状态 0未使用 1已使用 2已过期
    private Integer couponState;

}