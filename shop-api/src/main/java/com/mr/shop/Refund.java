package com.mr.shop;

import java.util.Date;

public class Refund {
    private Integer refundId;

    private Integer orderId;

    private String refundReason;

    private Date refundStime;

    private Date refundCtime;

    public Integer getRefundId() {
        return refundId;
    }

    public void setRefundId(Integer refundId) {
        this.refundId = refundId;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getRefundReason() {
        return refundReason;
    }

    public void setRefundReason(String refundReason) {
        this.refundReason = refundReason == null ? null : refundReason.trim();
    }

    public Date getRefundStime() {
        return refundStime;
    }

    public void setRefundStime(Date refundStime) {
        this.refundStime = refundStime;
    }

    public Date getRefundCtime() {
        return refundCtime;
    }

    public void setRefundCtime(Date refundCtime) {
        this.refundCtime = refundCtime;
    }
}