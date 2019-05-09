package com.mr.comment.controller;

import com.mr.bj.Comment;
import com.mr.bj.Order;
import com.mr.bj.OrderInfo;
import com.mr.comment.service.CommentService;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import com.mr.utils.ResultVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Api(tags = "评论管理and订单管理模块")
@RestController
@RequestMapping("commentController")
public class CommentController {

    @Autowired
    private CommentService commentService;

    @RequestMapping("goToComment")
    @ApiOperation(value = "前台查询个人评价列表")
    @ApiImplicitParam(paramType = "query",name = "userId",value = "用户id",required = false,dataType = "int",defaultValue = "null")
    public List<Comment> goToComment(@RequestBody Integer userId){return commentService.queryComment(userId);}

    @RequestMapping("delOrder")
    @ApiOperation(value = "删除评论")
    @ApiImplicitParam(paramType = "delete",name = "evaluatesId",value = "评论id",required = false,dataType = "int",defaultValue = "null")
    public ResultVo delOrder(@RequestBody Integer evaluatesId){
        return commentService.delOrder(evaluatesId);
    }

    @RequestMapping("goToOrder")
    @ApiOperation(value = "前台查询订单列表")
    @ApiImplicitParam(paramType = "query",name = "userId",value = "用户id",required = false,dataType = "int",defaultValue = "null")
    public List<Order> goToOrder(@RequestBody Integer userId){
        return commentService.queryOrder(userId);
    }

    @RequestMapping("goToOrderList")
    @ApiOperation(value = "后台查询订单列表")
    @ApiImplicitParam(paramType = "query",name = "orderId",value = "订单id",required = false,dataType = "int",defaultValue = "null")
    public DataVo goToOrderList(@RequestBody Page page){
        return commentService.queryOrderList(page);
    }

    @RequestMapping("goToOrderinfo")
    @ApiOperation(value = "查询订单详情列表")
    @ApiImplicitParam(paramType = "query",name = "orderId",value = "订单id",required = false,dataType = "int",defaultValue = "null")
    public List<OrderInfo> goToOrderInfo(@RequestBody Integer orderId){
        return commentService.queryOrderInfo(orderId);
    }

    @RequestMapping("orderDel")
    @ApiOperation(value = "删除订单")
    @ApiImplicitParam(paramType = "delete",name = "orderId",value = "订单id",required = false,dataType = "int",defaultValue = "null")
    public ResultVo orderDel(@RequestBody Integer orderId){
        return commentService.orderDel(orderId);
    }

    /**
     * 修改订单状态为待支付
     * @param orderId
     */
    @RequestMapping("orderUpdate1")
    @ApiOperation(value = "修改订单状态为代支付")
    @ApiImplicitParam(paramType = "update",name = "orderId",value = "订单id",required = false,dataType = "int",defaultValue = "null")
    public void orderUpdate1(@RequestBody Integer orderId){
        commentService.orderUpdate1(orderId);
    }

    @RequestMapping("queryOrder1")
    @ApiOperation(value = "查询待支付订单")
    @ApiImplicitParam(paramType = "query",name = "userId",value = "用户id",required = false,dataType = "int",defaultValue = "null")
    public List<Order> queryOrder1(Integer userId){
        List<Order> orderList = commentService.queryOrder1(userId);
        return null;
    }

    /**
     * 修改订单状态为代发货
     */
    @RequestMapping("orderUpdate2")
    @ApiOperation(value = "修改订单状态为待发货")
    @ApiImplicitParam(paramType = "update",name = "orderId",value = "订单id",required = false,dataType = "int",defaultValue = "null")
    public void orderUpdate2(@RequestBody Integer orderId){
        commentService.orderUpdate2(orderId);
    }

    @RequestMapping("queryOrder2")
    @ApiOperation(value = "查询待发货订单")
    @ApiImplicitParam(paramType = "query",name = "userId",value = "用户id",required = false,dataType = "int",defaultValue = "null")
    public List<Order> queryOrder2(Integer userId){
        List<Order> orderList = commentService.queryOrder2(userId);
        return null;
    }

    /**
     * 修改订单状态为待收货
     * @param orderId
     */
    @RequestMapping("orderUpdate3")
    @ApiOperation(value = "修改订单状态为代收货")
    @ApiImplicitParam(paramType = "update",name = "orderId",value = "订单id",required = false,dataType = "int",defaultValue = "null")
    public void orderUpdate3(@RequestBody Integer orderId){
        commentService.orderUpdate3(orderId);
    }

    @RequestMapping("queryOrder3")
    @ApiOperation(value = "查询待收货订单")
    @ApiImplicitParam(paramType = "query",name = "userId",value = "用户id",required = false,dataType = "int",defaultValue = "null")
    public List<Order> queryOrder3(Integer userId){
        List<Order> orderList = commentService.queryOrder3(userId);
        return null;
    }

    /**
     * 修改订单状态为待评价
     * @param orderId
     */
    @RequestMapping("orderUpdate4")
    @ApiOperation(value = "修改订单状态为代评价")
    @ApiImplicitParam(paramType = "update",name = "orderId",value = "订单id",required = false,dataType = "int",defaultValue = "null")
    public void orderUpdate4(@RequestBody Integer orderId){
        commentService.orderUpdate4(orderId);
    }

    @RequestMapping("queryOrder4")
    @ApiOperation(value = "查询待评价订单")
    @ApiImplicitParam(paramType = "query",name = "userId",value = "用户id",required = false,dataType = "int",defaultValue = "null")
    public List<Order> queryOrder4(Integer userId){
        List<Order> orderList = commentService.queryOrder4(userId);
        return null;
    }
}
