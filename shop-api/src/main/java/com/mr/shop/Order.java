package com.mr.shop;

import java.util.Date;

public class Order {
    private Integer orderId;

    private Integer userId;

    private Integer commId;

    private String orderwId;

    private Double orderPrice;

    private Date orderTime;

    private String orderPaytype;

    private Integer orderType;

    private Integer mayMany;

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
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

    public String getOrderwId() {
        return orderwId;
    }

    public void setOrderwId(String orderwId) {
        this.orderwId = orderwId == null ? null : orderwId.trim();
    }

    public Double getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(Double orderPrice) {
        this.orderPrice = orderPrice;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public String getOrderPaytype() {
        return orderPaytype;
    }

    public void setOrderPaytype(String orderPaytype) {
        this.orderPaytype = orderPaytype == null ? null : orderPaytype.trim();
    }

    public Integer getOrderType() {
        return orderType;
    }

    public void setOrderType(Integer orderType) {
        this.orderType = orderType;
    }

    public Integer getMayMany() {
        return mayMany;
    }

    public void setMayMany(Integer mayMany) {
        this.mayMany = mayMany;
    }
}