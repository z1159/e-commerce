package com.mr.shop;

public class CommodityType {
    private Integer commtId;

    private Integer commtFater;

    private String commtName;

    public Integer getCommtId() {
        return commtId;
    }

    public void setCommtId(Integer commtId) {
        this.commtId = commtId;
    }

    public Integer getCommtFater() {
        return commtFater;
    }

    public void setCommtFater(Integer commtFater) {
        this.commtFater = commtFater;
    }

    public String getCommtName() {
        return commtName;
    }

    public void setCommtName(String commtName) {
        this.commtName = commtName == null ? null : commtName.trim();
    }
}