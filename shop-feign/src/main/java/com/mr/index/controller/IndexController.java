package com.mr.index.controller;

import com.mr.index.service.IndexService;
import com.mr.shop.CommodityType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


/**
 * Created by asus on 2019/4/29.
 */
@RestController
@RequestMapping("indexController")
public class IndexController {

    @Autowired
    private IndexService indexService;

    @GetMapping("gotoIndex")
    public ModelAndView gotoIndex(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        //   System.out.println(1);
        return modelAndView;
    }

    /**
     * 菜单查询
     * @return
     */
    @GetMapping("queryCommtype")
    public String queryCommtype(){
       List<CommodityType> listCommt=indexService.queryCommtype();
       return "德玛西亚";
    }
}