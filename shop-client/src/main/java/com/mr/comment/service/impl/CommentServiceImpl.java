package com.mr.comment.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mr.bj.Comment;
import com.mr.bj.Order;
import com.mr.bj.OrderInfo;
import com.mr.comment.mapper.CommentMapper;
import com.mr.comment.service.CommentService;
import com.mr.shop.Commodity;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import com.mr.utils.ResultVo;
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
        if (null == userId){return null;}
        return commentMapper.queryComment(userId);
    }

    @Override
    public List<Order> queryOrder(Integer userId) {
        if (null == userId){return null;}
        return commentMapper.queryOrder(userId);
    }

    @Override
    public List<OrderInfo> queryOrderInfo(Integer orderId) {
        if (null == orderId){return null;}
        return commentMapper.queryOrderInfo(orderId);
    }

    @Override
    public ResultVo orderDel(Integer orderId) {
        if (null != orderId){
            commentMapper.orderDel(orderId);
            return ResultVo.success("删除成功");
        }
        return ResultVo.error(500,"删除失败");
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

    @Override
    public ResultVo delOrder(Integer evaluatesId) {
        if (evaluatesId != null){
            int s = commentMapper.delOrder(evaluatesId);
            return ResultVo.success("删除成功");
        }
        return ResultVo.error(500,"删除失败");
    }

    @Override
    public DataVo queryOrderList(Page page) {
        if(page.getPage()==null){
            page = new Page();
        }
        PageHelper.startPage(page.getPage(),page.getLimit());
        List<Order> bankList = commentMapper.queryOrdereList();
        PageInfo<Order> pageInfo = new PageInfo(bankList);
        DataVo dataVo = new DataVo();
        dataVo.setCode(0);
        dataVo.setCount(pageInfo.getTotal());
        dataVo.setData(pageInfo.getList());
        return dataVo;
    }
}
