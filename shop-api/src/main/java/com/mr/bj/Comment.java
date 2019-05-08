package com.mr.bj;

import com.mr.utils.Page;
import lombok.Data;
import java.util.Date;

@Data
//个人评价管理实体
public class Comment extends Page{
    //用户编号
    private Integer userId;

    //商品id
    private Integer commId;

    //图片id
    private Integer imgId;

    //评价内容
    private String evaluatesContent;

    //评价时间
    private Date evaltTime;

    //商品标题
    private String commTitle;

    //商品参数
    private String commParameter;

    //图片路径
    private String imgUrl;

}
