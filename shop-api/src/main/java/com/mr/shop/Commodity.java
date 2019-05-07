package com.mr.shop;


import lombok.Data;
import org.apache.solr.client.solrj.beans.Field;

import java.io.Serializable;

@Data
public class Commodity  extends User implements Serializable{
    @Field("id")
    private String commId;
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

    //标题  简介
    @Field("comm_title")
    private String commTitle;

    //商品数量
    private Integer commMany;

    @Field("commd_miaoshu")
    private String commdMiaoshu;

    //是否新品
    private Integer commtNew;
    //是否热卖
    private Integer commtHot;
    //是否在卖
    private Integer commtShow;

    //商品名
    private String commtName;

    //图片地址
    private String imgUrl;

    private Integer commtFater;
    //所属分类
    private Integer commtType;

    //所属品牌商
    private Integer commtAgent;



}