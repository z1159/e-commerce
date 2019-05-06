package com.mr.commodity.controller;

import com.mr.commodity.service.CommdService;
import com.mr.shop.Commodity;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by z1159 on 2019/5/5.
 */
@RequestMapping("commd")
@Controller
public class commdController {

    @Autowired
    private CommdService commdService;

    @GetMapping("queryCommdList")
    public DataVo queryCommdList(Page page){
    page.setPage(1);
    page.setLimit(10);
        DataVo<Commodity> dataVo = commdService.queryCommdList(page);
        System.out.println(dataVo);
        return dataVo;
    }
}
