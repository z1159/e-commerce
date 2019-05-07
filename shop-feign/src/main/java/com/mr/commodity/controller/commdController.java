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

    @RequestMapping("queryCommdList")
    @ResponseBody
    public DataVo<Commodity> queryCommdList(Page page){
//        page.setLimit(2);
        DataVo<Commodity> dataVo = commdService.queryCommdList(page);
        return dataVo;
    }
    @RequestMapping("openCommnList")
    public ModelAndView openCommnList(){
        ModelAndView mv = new ModelAndView();

        mv.setViewName("/zcf/ht/commodity-list");

        return mv;
    }

    @RequestMapping("openCommnAdd")
    public ModelAndView openCommnAdd(){
        ModelAndView mv = new ModelAndView();

        mv.setViewName("/zcf/ht/commodity-add");

        return mv;
    }

    @RequestMapping("addCommd")
    @ResponseBody
    public ResultVo<Commodity> addCommd(Commodity commodity){
        ResultVo<Commodity> rsVo = commdService.addCommd(commodity);
        return rsVo;
    }

    @RequestMapping("deleteCommd/{commtId}")
    @ResponseBody
    public ResultVo<Commodity> deleteCommd(@PathVariable("commtId") Integer commtId){
        ResultVo<Commodity> rstVo = commdService.deleteCommd(commtId);
        return rstVo;
    }

    @RequestMapping("openCommnUpdate/{commtId}")
    public ModelAndView openCommnUpdate(@PathVariable("commtId") Integer commtId){
        Commodity commodity = commdService.selectByCommId(commtId);
        ModelAndView mv = new ModelAndView();
        mv.addObject("commd",commodity);
        mv.setViewName("/zcf/ht/commodity-add");

        return mv;
    }

}
