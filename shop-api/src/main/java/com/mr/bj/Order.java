package com.mr.bj;

import com.mr.utils.Page;
import lombok.Data;

import java.util.Date;

//订单管理实体
@Data
public class Order extends Page{
    //用户编号
    private Integer userId;

    //订单id
    private Integer orderId;

    //订单编号
    private String orderwId;

    //商品促销价
    private Double commMoneyc;

    //订单金额
    private Double orderPrice;

    //商品参数
    private String commParameter;

    //商品标题
    private String commTitle;

    //图片路径
    private String imgUrl;

    //订单状态
    private Integer orderType;

    //购买数量
    private Integer mayMany;

    //成交时间
    private Date orderTime;

}
