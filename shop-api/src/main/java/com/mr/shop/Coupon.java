package com.mr.shop;

import java.util.Date;

public class Coupon {
    private Integer couponId;

    private Integer userId;

    private Integer commId;

    private Integer couponRange;

    private Date couponTimes;

    private Date couponTimee;

    public Integer getCouponId() {
        return couponId;
    }

    public void setCouponId(Integer couponId) {
        this.couponId = couponId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getCommId() {
        return commId;
    }

    public void setCommId(Integer commId) {
        this.commId = commId;
    }

    public Integer getCouponRange() {
        return couponRange;
    }

    public void setCouponRange(Integer couponRange) {
        this.couponRange = couponRange;
    }

    public Date getCouponTimes() {
        return couponTimes;
    }

    public void setCouponTimes(Date couponTimes) {
        this.couponTimes = couponTimes;
    }

    public Date getCouponTimee() {
        return couponTimee;
    }

    public void setCouponTimee(Date couponTimee) {
        this.couponTimee = couponTimee;
    }
}