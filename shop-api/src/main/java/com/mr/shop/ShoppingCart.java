package com.mr.shop;

public class ShoppingCart {
    private Integer shopcarId;

    private Integer userId;

    private Integer commId;

    private Integer commCount;

    public Integer getShopcarId() {
        return shopcarId;
    }

    public void setShopcarId(Integer shopcarId) {
        this.shopcarId = shopcarId;
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

    public Integer getCommCount() {
        return commCount;
    }

    public void setCommCount(Integer commCount) {
        this.commCount = commCount;
    }
}