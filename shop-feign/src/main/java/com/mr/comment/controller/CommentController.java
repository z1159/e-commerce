package com.mr.comment.controller;

import com.mr.bj.Comment;
import com.mr.bj.Order;
import com.mr.bj.OrderInfo;
import com.mr.comment.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 评价管理(个人,商品)/订单管理/订单详情
 */
@RestController
@RequestMapping("commentController")
public class CommentController {

    @Autowired
    private CommentService commentService;

    /**
     * 进入个人评价管理url:localhost:8765/CommentController/goToComment
     */
    @GetMapping("goToComment")
    public ModelAndView goToComment(Comment c){
        List<Comment> commentList = commentService.queryComment(c.getUserId());
        ModelAndView mv = new ModelAndView();
        mv.addObject("commentList",commentList);
        mv.setViewName("bj/comment");
        return mv;
    }

    /**
     * 进入订单管理url:localhost:8765/CommentController/goToOrder
     * @return
     */
    @GetMapping("goToOrder")
    public ModelAndView goToOrder(Order o){
        List<Order> orderList = commentService.queryOrder(o.getUserId());
        ModelAndView mv = new ModelAndView();
        mv.setViewName("bj/order");
        mv.addObject("orderList",orderList);
        return mv;
    }

    /**
     * 删除订单url:localhost:8765/CommentController/orderDel
     * @param o
     */
    @GetMapping("orderDel")
    public void orderDel(Order o){
        commentService.orderDel(o.getOrderId());
    }

    /**
     * 进入订单详情页面url:localhost:8765/CommentController/goToOrderinfo
     * @return
     */
    @GetMapping("goToOrderinfo")
    public ModelAndView goToOrderinfo(OrderInfo o){
        List<OrderInfo> orderInfoList = commentService.queryOrderInfo(o.getOrderId());
        ModelAndView mv = new ModelAndView();
        mv.setViewName("bj/orderinfo");
        mv.addObject("orderInfoList",orderInfoList);
        return mv;
    }

    /**
     * 修改订单状态为待支付
     * @param o
     */
    @GetMapping("orderUpdate1")
    public void orderUpdate1(Order o){
        commentService.orderUpdate1(o.getOrderId());
    }

    /**
     * 查询待支付的订单
     * @return
     */
    @GetMapping("queryOrder1")
    public List<Order> queryOrder1(Order o){
        List<Order> orderList = commentService.queryOrder1(o.getUserId());
        return orderList;
    }

    /**
     * 修改订单状态为待发货
     * @param o
     */
    @GetMapping("orderUpdate2")
    public void orderUpdate2(Order o){
        commentService.orderUpdate2(o.getOrderId());
    }

    /**
     * 查询待发货的订单
     * @return
     */
    @GetMapping("queryOrder2")
    public List<Order> queryOrder2(Order o){
        List<Order> orderList = commentService.queryOrder2(o.getUserId());
        return orderList;
    }

    /**
     * 修改订单状态为待收货
     * @param o
     */
    @GetMapping("orderUpdate3")
    public void orderUpdate3(Order o){
        commentService.orderUpdate3(o.getOrderId());
    }

    /**
     * 查询待收货的订单
     * @return
     */
    @GetMapping("queryOrder3")
    public List<Order> queryOrder3(Order o){
        List<Order> orderList = commentService.queryOrder3(o.getUserId());
        return orderList;
    }

    /**
     * 修改订单状态为待评价
     * @param o
     */
    @GetMapping("orderUpdate4")
    public void orderUpdate4(Order o){
        commentService.orderUpdate4(o.getOrderId());
    }

    /**
     * 查询待评价的订单
     * @return
     */
    @GetMapping("queryOrder4")
    public List<Order> queryOrder4(Order o){
        List<Order> orderList = commentService.queryOrder4(o.getUserId());
        return orderList;
    }
}
