package com.mr.commodity.controller;

import com.mr.commodity.service.CommdService;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by z1159 on 2019/4/29.
 */
@Api(tags = "商品模块")
@Controller
@RequestMapping("commd")
public class CommdController {

    @Autowired
    private CommdService commdService;


    //查询商品列表
    @RequestMapping("queryCommdList")
    @ResponseBody
    @ApiOperation(value = "查询商品列表")
    @ApiImplicitParams({
            @ApiImplicitParam(paramType = "query", name = "page", value = "页数", required = false, dataType = "int", defaultValue = "1"),
            @ApiImplicitParam(paramType = "query", name = "limit", value = "每页条数", required = false, dataType = "int", defaultValue = "10"),
    })
    public DataVo queryCommdList(Page page){

        return commdService.queryCommdList(page);
    }


}
