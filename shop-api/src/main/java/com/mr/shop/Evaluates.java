package com.mr.shop;

import java.util.Date;

//评价管理实体类
public class Evaluates {
    //评价id
    private Integer evaluatesId;

    //用户编号
    private Integer userId;

    //商品id
    private Integer commId;

    //图片id
    private Integer imgId;

    //评价内容
    private String evaluatesContent;

    //评价类型（好评，中评，差评
    private Integer evaluatesType;

    //评价时间
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