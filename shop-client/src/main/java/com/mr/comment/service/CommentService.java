package com.mr.comment.service;

import com.mr.bj.Comment;
import com.mr.bj.Order;
import com.mr.bj.OrderInfo;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import com.mr.utils.ResultVo;
import org.springframework.stereotype.Service;

import java.util.List;

public interface CommentService {

    List<Comment> queryComment(Integer userId);

    List queryOrder(Integer userId);

    List<OrderInfo> queryOrderInfo(Integer orderId);

    ResultVo orderDel(Integer orderId);

    void orderUpdate1(Integer orderId);

    void orderUpdate2(Integer orderId);

    void orderUpdate3(Integer orderId);

    void orderUpdate4(Integer orderId);

    List<Order> queryOrder1(Integer userId);

    List<Order> queryOrder2(Integer userId);

    List<Order> queryOrder3(Integer userId);

    List<Order> queryOrder4(Integer userId);

    ResultVo delOrder(Integer evaluatesId);

    DataVo queryOrderList(Page page);
}
