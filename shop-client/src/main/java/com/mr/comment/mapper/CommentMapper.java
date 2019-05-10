package com.mr.comment.mapper;

import com.mr.bj.Comment;
import com.mr.bj.Order;
import com.mr.bj.OrderInfo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
public interface CommentMapper {

    List<Comment> queryComment(Integer userId);

    List<Order> queryOrder(Integer userId);

    List<OrderInfo> queryOrderInfo(Integer orderId);

    void orderDel(Integer orderId);

    void orderUpdate1(Integer orderId);

    void orderUpdate2(Integer orderId);

    void orderUpdate3(Integer orderId);

    void orderUpdate4(Integer orderId);

    List<Order> queryOrder1(Integer userId);

    List<Order> queryOrder2(Integer userId);

    List<Order> queryOrder3(Integer userId);

    List<Order> queryOrder4(Integer userId);

    int delOrder(Integer evaluatesId);

    List<Order> queryOrdereList();
}
