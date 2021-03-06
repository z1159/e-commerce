package com.mr.commodity.controller;

import com.mr.commodity.service.CommdService;
import com.mr.shop.Commodity;
import com.mr.utils.DataVo;
import com.mr.utils.Page;
import com.mr.utils.ResultVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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
    public DataVo queryCommdList(@RequestBody Page page){

        return commdService.queryCommdList(page);
    }
    //查询商品列表delateCommd
    @RequestMapping(value="addCommd",method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation(value = "上架商品(商品新增)")
    @ApiImplicitParams({
            @ApiImplicitParam(paramType = "query", name = "page", value = "页数", required = false, dataType = "int", defaultValue = "1"),
            @ApiImplicitParam(paramType = "query", name = "limit", value = "每页条数", required = false, dataType = "int", defaultValue = "10"),
    })
    public ResultVo addCommd(@RequestBody Commodity commodity){

        return commdService.addCommd(commodity);
    }


    @RequestMapping(value="deleteCommd",method = RequestMethod.GET)
    @ResponseBody
    @ApiOperation(value = "删除商品")
    @ApiImplicitParams({
            @ApiImplicitParam(paramType = "query", name = "commtId", value = "id", required = false, dataType = "int", defaultValue = "1"),
    })
    public ResultVo deleteCommd(@RequestParam Integer commtId){

        return commdService.deleteCommd(commtId);
    }


    @RequestMapping(value="selectByCommId",method = RequestMethod.GET)
    @ResponseBody
    @ApiOperation(value = "根据ID查询商品")
    @ApiImplicitParams({
            @ApiImplicitParam(paramType = "query", name = "commtId", value = "id", required = false, dataType = "int", defaultValue = "1"),
    })
    public Commodity selectByCommId(@RequestParam Integer commtId){

        return commdService.selectByCommId(commtId);
    }
}
