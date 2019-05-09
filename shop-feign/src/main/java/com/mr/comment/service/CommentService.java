package com.mr.comment.service;

import com.mr.bj.Comment;
import com.mr.bj.Order;
import com.mr.bj.OrderInfo;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import com.mr.utils.ResultVo;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@FeignClient(value = "provider-hello")
public interface CommentService {

    @RequestMapping(value = "/commentController/goToComment")
    List<Comment> queryComment(@RequestBody Integer userId);

    @RequestMapping(value = "/commentController/goToOrder")
    List<Order> queryOrder(@RequestBody Integer userId);

    @RequestMapping(value = "/commentController/goToOrderinfo")
    List<OrderInfo> queryOrderInfo(@RequestBody Integer orderId);

    @RequestMapping(value = "/commentController/orderDel")
    ResultVo orderDel(@RequestBody Integer orderId);

    @RequestMapping(value = "/commentController/orderUpdate1")
    void orderUpdate1(Integer orderId);

    @RequestMapping(value = "/commentController/orderUpdate2")
    void orderUpdate2(Integer orderId);

    @RequestMapping(value = "/commentController/orderUpdate3")
    void orderUpdate3(Integer orderId);

    @RequestMapping(value = "/commentController/orderUpdate4")
    void orderUpdate4(Integer orderId);

    @RequestMapping(value = "/commentController/queryOrder1")
    List<Order> queryOrder1(Integer userId);

    @RequestMapping(value = "/commentController/queryOrder2")
    List<Order> queryOrder2(Integer userId);

    @RequestMapping(value = "/commentController/queryOrder3")
    List<Order> queryOrder3(Integer userId);

    @RequestMapping(value = "/commentController/queryOrder4")
    List<Order> queryOrder4(Integer userId);

    @RequestMapping(value = "/commentController/goToOrderList",method = {RequestMethod.POST},produces="application/json")
    DataVo goToOrderList(@RequestBody Page page);
}
