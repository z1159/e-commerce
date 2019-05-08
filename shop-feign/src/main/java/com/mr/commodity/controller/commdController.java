package com.mr.commodity.controller;

import com.mr.commodity.service.CommdService;
import com.mr.shop.Commodity;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import com.mr.utils.ResultVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by z1159 on 2019/5/5.
 */
@RequestMapping("commd")
@Controller
public class commdController {

    @Autowired
    private CommdService commdService;

    //查询商品列表 分页
    @RequestMapping("queryCommdList")
    @ResponseBody
    public DataVo<Commodity> queryCommdList(Page page){
//        page.setLimit(2);
        DataVo<Commodity> dataVo = commdService.queryCommdList(page);
        return dataVo;
    }

    //打开商品列表查询页
    @RequestMapping("openCommnList")
    public ModelAndView openCommnList(){
        ModelAndView mv = new ModelAndView();

        mv.setViewName("/zcf/ht/commodity-list");

        return mv;
    }
    //打开新增页
    @RequestMapping("openCommnAdd")
    public ModelAndView openCommnAdd(){
        ModelAndView mv = new ModelAndView();

        mv.setViewName("/zcf/ht/commodity-add");

        return mv;
    }
    //新增/修改商品
    @RequestMapping("addCommd")
    @ResponseBody
    public ResultVo<Commodity> addCommd(Commodity commodity){
        ResultVo<Commodity> rsVo = commdService.addCommd(commodity);
        return rsVo;
    }
    //删除商品
    @RequestMapping("deleteCommd/{commtId}")
    @ResponseBody
    public ResultVo<Commodity> deleteCommd(@PathVariable("commtId") Integer commtId){
        ResultVo<Commodity> rstVo = commdService.deleteCommd(commtId);
        return rstVo;
    }

    //打开修改商品页
    @RequestMapping("openCommnUpdate/{commtId}")
    public ModelAndView openCommnUpdate(@PathVariable("commtId") Integer commtId){
        Commodity commodity = commdService.selectByCommId(commtId);
        ModelAndView mv = new ModelAndView();
        mv.addObject("commd",commodity);
        mv.setViewName("/zcf/ht/commodity-add");

        return mv;
    }

}
