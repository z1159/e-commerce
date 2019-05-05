package com.mr.index.controller;

import com.mr.index.service.IndexService;
import com.mr.shop.CommodityType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by asus on 2019/4/29.
 */
@RestController
public class IndexController {

    @Autowired
    private IndexService indexService;

    @GetMapping("queryCommtype")
    public List<CommodityType> queryCommtype(){
       return  indexService.queryCommtype();
    }

}
