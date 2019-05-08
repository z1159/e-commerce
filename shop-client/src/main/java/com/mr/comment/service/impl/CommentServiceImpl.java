package com.mr.comment.service.impl;

import com.mr.bj.Comment;
import com.mr.bj.Order;
import com.mr.bj.OrderInfo;
import com.mr.comment.mapper.CommentMapper;
import com.mr.comment.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CommentServiceImpl implements CommentService{

    @Autowired
    private CommentMapper commentMapper;

    @Override
    public List<Comment> queryComment(Integer userId) {
        return commentMapper.queryComment(userId);
    }

    @Override
    public List<Order> queryOrder(Integer userId) {
        return commentMapper.queryOrder(userId);
    }

    @Override
    public List<OrderInfo> queryOrderInfo(Integer orderId) {
        return commentMapper.queryOrderInfo(orderId);
    }

    @Override
    public void orderDel(Integer orderId) {
        commentMapper.orderDel(orderId);
    }

    @Override
    public void orderUpdate1(Integer orderId) {
        commentMapper.orderUpdate1(orderId);
    }

    @Override
    public void orderUpdate2(Integer orderId) {
        commentMapper.orderUpdate2(orderId);
    }

    @Override
    public void orderUpdate3(Integer orderId) {
        commentMapper.orderUpdate3(orderId);
    }

    @Override
    public void orderUpdate4(Integer orderId) {
        commentMapper.orderUpdate4(orderId);
    }

    @Override
    public List<Order> queryOrder1(Integer userId) {
        return commentMapper.queryOrder1(userId);
    }

    @Override
    public List<Order> queryOrder2(Integer userId) {
        return commentMapper.queryOrder2(userId);
    }

    @Override
    public List<Order> queryOrder3(Integer userId) {
        return commentMapper.queryOrder3(userId);
    }

    @Override
    public List<Order> queryOrder4(Integer userId) {
        return commentMapper.queryOrder4(userId);
    }
}
