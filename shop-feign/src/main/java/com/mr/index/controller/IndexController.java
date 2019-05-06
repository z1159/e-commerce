package com.mr.index.controller;

import com.mr.index.service.IndexService;
import com.mr.shop.CommodityType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;


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
    public ModelAndView queryCommtype(){
       List<CommodityType> listCommt=indexService.queryCommtype();
        ModelAndView modelandView = new ModelAndView();
        modelandView.setViewName("dongtaidhtest");
        modelandView.addObject("listCommt",listCommt);
       return modelandView;
    }
/*    @GetMapping("solrQueryCommodity/{commTitle}/{page}/{size}")
    public ModelAndView solrQueryCommodity(@PathVariable String commTitle, @PathVariable Integer page, @PathVariable Integer size){
      Map<String,Object> map= indexService.solrQueryCommodity(commTitle,page,size);
      ModelAndView model = new ModelAndView();
      model.setViewName("/zcf/test");
      model.addObject("goodboy",map);
      return model;
    }*/
}