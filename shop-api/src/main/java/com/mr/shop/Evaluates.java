package com.mr.shop;

import java.util.Date;

public class Evaluates {
    private Integer evaluatesId;

    private Integer userId;

    private Integer commId;

    private Integer imgId;

    private String evaluatesContent;

    private Integer evaluatesType;

    private Date evaltTime;

    public Integer getEvaluatesId() {
        return evaluatesId;
    }

    public void setEvaluatesId(Integer evaluatesId) {
        this.evaluatesId = evaluatesId;
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

    public Integer getImgId() {
        return imgId;
    }

    public void setImgId(Integer imgId) {
        this.imgId = imgId;
    }

    public String getEvaluatesContent() {
        return evaluatesContent;
    }

    public void setEvaluatesContent(String evaluatesContent) {
        this.evaluatesContent = evaluatesContent == null ? null : evaluatesContent.trim();
    }

    public Integer getEvaluatesType() {
        return evaluatesType;
    }

    public void setEvaluatesType(Integer evaluatesType) {
        this.evaluatesType = evaluatesType;
    }

    public Date getEvaltTime() {
        return evaltTime;
    }

    public void setEvaltTime(Date evaltTime) {
        this.evaltTime = evaltTime;
    }
}