package com.mr.shop;

public class Commodity {
    private Integer commId;

    private Integer commtId;

    private Integer imgId;

    private String commParameter;

    private Double commMoneyy;

    private Double commMoneyc;

    private String commTitle;

    private Integer commMany;

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