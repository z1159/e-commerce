package com.mr.shop;


import org.apache.solr.client.solrj.beans.Field;

public class Commodity {
    @Field("id")
    private Integer commId;
    @Field("commt_id")
    private Integer commtId;
    @Field("img_id")
    private Integer imgId;
    @Field("comm_parameter")
    private String commParameter;
    @Field("comm_moneyy")
    private Double commMoneyy;
    @Field("comm_moneyc")
    private Double commMoneyc;
    @Field("comm_title")
    private String commTitle;

    private Integer commMany;

    @Field("commd_miaoshu")
    private String commdMiaoshu;

    public Integer getCommId() {
        return commId;
    }

    public void setCommId(Integer commId) {
        this.commId = commId;
    }

    public Integer getCommtId() {
        return commtId;
    }

    public void setCommtId(Integer commtId) {
        this.commtId = commtId;
    }

    public Integer getImgId() {
        return imgId;
    }

    public void setImgId(Integer imgId) {
        this.imgId = imgId;
    }

    public String getCommParameter() {
        return commParameter;
    }

    public void setCommParameter(String commParameter) {
        this.commParameter = commParameter == null ? null : commParameter.trim();
    }

    public Double getCommMoneyy() {
        return commMoneyy;
    }

    public void setCommMoneyy(Double commMoneyy) {
        this.commMoneyy = commMoneyy;
    }

    public Double getCommMoneyc() {
        return commMoneyc;
    }

    public void setCommMoneyc(Double commMoneyc) {
        this.commMoneyc = commMoneyc;
    }

    public String getCommTitle() {
        return commTitle;
    }

    public void setCommTitle(String commTitle) {
        this.commTitle = commTitle == null ? null : commTitle.trim();
    }

    public Integer getCommMany() {
        return commMany;
    }

    public void setCommMany(Integer commMany) {
        this.commMany = commMany;
    }

    public String getCommdMiaoshu() {
        return commdMiaoshu;
    }

    public void setCommdMiaoshu(String commdMiaoshu) {
        this.commdMiaoshu = commdMiaoshu == null ? null : commdMiaoshu.trim();
    }
}