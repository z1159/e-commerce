package com.mr.shop;

import lombok.Data;

import java.io.Serializable;

/**
 * Created by z1159 on 2019/5/7.
 */
@Data
public class Coupon implements Serializable {

    //优惠券id
    private Integer couponId;
    //优惠券名称
    private String cpName;
    //介绍
    private String cpPresent;
    //标签
    private String cpTitle;
    //最低消费额
    private Double cpMeet;
    //满减金额
    private Double cpSubtract;
    //每人限领
    private Integer cpAverage;
    //商品使用范围 0 全场通用
    private Integer cpRange;
    //优惠券类型  0 通用领券 2兑换码 1注册赠券
    private Integer cpType;
    //优惠券数量
    private Integer cpCount;
    //   0正常  1过期
    private Integer cpState;


}
